Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ProfileGenerator?download=true
inline.NumInlined: 1041
inline.NumDeleted: 583
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZN4llvh8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS4_EEE4growEj = comdat any

$_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_ = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_ = comdat any

$_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E20InsertIntoBucketImplIS2_EEPSB_RKS2_RKT_SF_ = comdat any

$_ZN4llvh8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S5_EEE4growEj = comdat any

$_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj = comdat any

$_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::hermes::sampling_profiler::Profile") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 {
_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.339", align 8    ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::pair.36", align 8     ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.hermes::OptValue", align 16 ; 12 uses
  %7 = alloca %"class.std::optional.278", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 8 uses
  %.sroa.855.i.i = alloca [7 x i8], align 1       ; 4 uses
  %.sroa.12.i.i = alloca [7 x i8], align 1        ; 7 uses
  %.sroa.6.sroa.6.i.i = alloca [7 x i8], align 1  ; 8 uses
  %11 = alloca %"class.std::vector", align 8      ; 10 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::vector.51", align 8   ; 12 uses
  %.sroa.15.i = alloca [7 x i8], align 1          ; 5 uses
  %13 = alloca %"class.hermes::vm::(anonymous namespace)::ProfileGenerator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  store ptr %1, ptr %13, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.n = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #13, !noalias !15 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !18, !noalias !15
  %i.p = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13, !noalias !15 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !25, !noalias !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #13, !noalias !15 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !26, !noalias !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !27, !noalias !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.r, ptr %i.u, align 8, !tbaa !28, !noalias !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 512 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29, !noalias !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.q, ptr %i.y, align 8, !tbaa !27, !noalias !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.r, ptr %i.z, align 8, !tbaa !28, !noalias !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !29, !noalias !15
  store ptr %i.r, ptr %i.s, align 8, !tbaa !30, !noalias !15
  store ptr %i.r, ptr %i.x, align 8, !tbaa !31, !noalias !15
  store ptr %i.n, ptr %i.m, align 8, !tbaa !32, !noalias !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34, !noalias !12 ; 2 uses
  %.pre29 = load ptr, ptr %2, align 8, !tbaa !37, !noalias !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12, !noalias !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !12
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = ptrtoint ptr %.pre29 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = sdiv exact i64 %i.ad, 40
  %i.af = icmp ugt i64 %i.ae, 230584300921369395
  br i1 %i.af, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14, !noalias !12
  unreachable

bb.b:                                             ; preds = %_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.not224.i = icmp eq ptr %.pre, %.pre29
  br i1 %.not224.i, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit, label %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #13, !noalias !12 ; 6 uses
  %i.aj = load ptr, ptr %11, align 8, !tbaa !38, !noalias !12 ; 5 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !12 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !47, !noalias !12
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !48, !alias.scope !45, !noalias !50
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !48, !alias.scope !42, !noalias !51
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52, !alias.scope !45, !noalias !50
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !52, !alias.scope !42, !noalias !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !45, !noalias !50
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %.not.i.i.i.i10.i = icmp eq ptr %i.ar, %i.ak
  br i1 %.not.i.i.i.i10.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !54

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i8.i.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !56, !noalias !12
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.aw) #15, !noalias !12
  br label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, %bb.c
  store ptr %i.ai, ptr %11, align 8, !tbaa !38, !noalias !12
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !41, !noalias !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 2 uses
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !56, !noalias !12
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !57, !noalias !12 ; 2 uses
  %.pre167.i = load ptr, ptr %.pre.i, align 8, !tbaa !71, !noalias !12 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre168.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71, !noalias !12 ; 2 uses
  %.not144.i = icmp eq ptr %.pre167.i, %.pre168.i
  %i.ay = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.ax, i64 1
  br i1 %.not144.i, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %.phi.trans.insert69.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.537.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.642.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.747.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.855.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 52 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.d

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i: ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i
  %.pre172.i = load ptr, ptr %11, align 8, !tbaa !38, !noalias !12
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !72, !noalias !12
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, %.lr.ph154.i
  %.sroa.095.0153.i = phi ptr [ %.pre167.i, %.lr.ph154.i ], [ %i.di, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 6 uses
  %.sroa.855.0152.i = phi ptr [ undef, %.lr.ph154.i ], [ %.sroa.855.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.11.0151.i = phi i32 [ undef, %.lr.ph154.i ], [ %.sroa.11.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.1262.0150.i = phi i64 [ undef, %.lr.ph154.i ], [ %.sroa.1262.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.13.0149.i = phi ptr [ undef, %.lr.ph154.i ], [ %.sroa.13.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.14.0148.i = phi i8 [ undef, %.lr.ph154.i ], [ %.sroa.14.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.16.0147.i = phi i64 [ undef, %.lr.ph154.i ], [ %.sroa.16.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.17.0146.i = phi i64 [ undef, %.lr.ph154.i ], [ %.sroa.17.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.053.sroa.8.0145.i = phi i32 [ undef, %.lr.ph154.i ], [ %.sroa.053.sroa.8.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12, !noalias !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.095.0153.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bu, align 8, !tbaa !73, !noalias !12
  %i.bv = sdiv i64 %.sroa.0.0.copyload.i, 1000
  store i64 %i.bv, ptr %i.h, align 8, !tbaa !73, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12, !noalias !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.095.0153.i, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.095.0153.i, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !74, !noalias !12 ; 3 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !77, !noalias !12 ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 24                ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, 128102389400760775
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14, !noalias !12
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not225.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not225.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.cf = mul nuw nsw i64 %i.cd, 72
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #13, !noalias !12 ; 5 uses
  %i.ch = load ptr, ptr %12, align 8, !tbaa !78, !noalias !12 ; 5 uses
  %i.ci = load ptr, ptr %i.bb, align 8, !tbaa !79, !noalias !12 ; 2 uses
  %.not10.i.i.i.i25.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not10.i.i.i.i25.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i.i, label %.lr.ph.i.i.i.i26.i

.lr.ph.i.i.i.i26.i:                               ; preds = %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i26.i
  %.012.i.i.i.i27.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i26.i ], [ %i.cg, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i28.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i26.i ], [ %i.ch, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i27.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i28.i, i64 72, i1 false), !alias.scope !80, !noalias !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i28.i, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i27.i, i64 72
  %.not.i.i.i.i29.i = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i29.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i.i, label %.lr.ph.i.i.i.i26.i, !llvm.loop !84

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i26.i, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_M_allocateEm.exit.i.i
  %.not.i8.i30.i = icmp eq ptr %i.ch, null
  br i1 %.not.i8.i30.i, label %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i.i
  %i.cl = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.co) #15, !noalias !12
  br label %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i

_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i.i
  store ptr %i.cg, ptr %12, align 8, !tbaa !78, !noalias !12
  store ptr %i.cg, ptr %i.bb, align 8, !tbaa !79, !noalias !12
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr %i.cg, i64 %i.cd
  store ptr %i.cp, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  %.pre169.i = load ptr, ptr %i.bw, align 8, !tbaa !85, !noalias !12
  %.pre170.i = load ptr, ptr %i.bx, align 8, !tbaa !85, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i, %bb.f
  %i.cq = phi ptr [ null, %bb.f ], [ %i.cg, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i ]
  %i.cr = phi ptr [ %i.by, %bb.f ], [ %.pre170.i, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i ] ; 2 uses
  %i.cs = phi ptr [ %i.bz, %bb.f ], [ %.pre169.i, %_ZNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i ] ; 2 uses
  %.not106127.i = icmp eq ptr %i.cs, %i.cr
  br i1 %.not106127.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i
  %14 = phi ptr [ %i.cq, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %i.rv, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.053.sroa.8.1.lcssa.i = phi i32 [ %.sroa.053.sroa.8.0145.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.053.sroa.8.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.17.1.lcssa.i = phi i64 [ %.sroa.17.0146.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.17.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.16.1.lcssa.i = phi i64 [ %.sroa.16.0147.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.16.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.14.1.lcssa.i = phi i8 [ %.sroa.14.0148.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.14.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.13.1.lcssa.i = phi ptr [ %.sroa.13.0149.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.13.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.1262.1.lcssa.i = phi i64 [ %.sroa.1262.0150.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.1262.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.11.1.lcssa.i = phi i32 [ %.sroa.11.0151.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.11.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %.sroa.855.1.lcssa.i = phi ptr [ %.sroa.855.0152.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %.sroa.855.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %i.ct = load ptr, ptr %i.bs, align 8, !tbaa !41, !noalias !12 ; 8 uses
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !56, !noalias !12
  %.not.i31.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i31.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i: ; preds = %._crit_edge.i
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !73, !noalias !12
  %i.cw = load i64, ptr %.sroa.095.0153.i, align 8, !tbaa !73, !noalias !12
  %i.cx = load ptr, ptr %12, align 8, !tbaa !78, !noalias !12
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !86, !noalias !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !91, !noalias !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !78, !noalias !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %14, ptr %i.db, align 8, !tbaa !79, !noalias !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.cy, ptr %i.dc, align 8, !tbaa !52, !noalias !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr %i.dd, ptr %i.bs, align 8, !tbaa !41, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i: ; preds = %._crit_edge.i
  call void @_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0153.i, ptr noundef nonnull align 8 dereferenceable(24) %12), !noalias !12
  %.pre171.i = load ptr, ptr %12, align 8, !tbaa !78, !noalias !12 ; 3 uses
  %.not.i.i.i32.i = icmp eq ptr %.pre171.i, null
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i
  %i.de = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %.pre171.i to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.pre171.i, i64 noundef %i.dh) #15, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12, !noalias !12
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.095.0153.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.di, %.pre168.i
  br i1 %.not.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i, label %bb.d

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i
  %.sroa.855.1136.i = phi ptr [ %.sroa.855.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.855.0152.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ]
  %.sroa.11.1135.i = phi i32 [ %.sroa.11.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.11.0151.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.1262.1134.i = phi i64 [ %.sroa.1262.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.1262.0150.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.13.1133.i = phi ptr [ %.sroa.13.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.13.0149.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.14.1132.i = phi i8 [ %.sroa.14.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.14.0148.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.16.1131.i = phi i64 [ %.sroa.16.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.16.0147.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.17.1130.i = phi i64 [ %.sroa.17.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.17.0146.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 3 uses
  %.sroa.053.sroa.8.1129.i = phi i32 [ %.sroa.053.sroa.8.2.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %.sroa.053.sroa.8.0145.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ]
  %.sroa.091.0128.i = phi ptr [ %i.rw, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %i.cs, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !92, !noalias !95
  switch i32 %i.dk, label %bb.bm [
    i32 3, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 0, label %bb.l
  ]

bb.i:                                             ; preds = %.lr.ph.i
  %i.dl = load i32, ptr %.sroa.091.0128.i, align 8, !tbaa !98, !noalias !95
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.dm = call fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.091.0128.i), !noalias !95 ; 2 uses
  %i.dn = extractvalue { i64, ptr } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dm, 1
  %.sroa.053.sroa.0.0.extract.trunc78.i = trunc i64 %i.dn to i32
  %.sroa.053.sroa.8.0.extract.shift84.i = lshr i64 %i.dn, 32
  %.sroa.053.sroa.8.0.extract.trunc85.i = trunc nuw i64 %.sroa.053.sroa.8.0.extract.shift84.i to i32
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.dp = call fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.091.0128.i), !noalias !95 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { i64, ptr } %i.dp, 1
  %.sroa.053.sroa.0.0.extract.trunc77.i = trunc i64 %i.dq to i32
  %.sroa.053.sroa.8.0.extract.shift82.i = lshr i64 %i.dq, 32
  %.sroa.053.sroa.8.0.extract.trunc83.i = trunc nuw i64 %.sroa.053.sroa.8.0.extract.shift82.i to i32
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ds = load ptr, ptr %.sroa.091.0128.i, align 8, !tbaa !98, !noalias !95 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.855.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !99
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 8 ; 3 uses
  store ptr %i.ds, ptr %4, align 8, !tbaa !102, !noalias !99
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !3, !noalias !99 ; 4 uses
  store i32 %i.du, ptr %i.bc, align 8, !tbaa !105, !noalias !99
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !106, !noalias !99 ; 3 uses
  %i.dw = load i32, ptr %i.bd, align 8, !tbaa !107, !noalias !99 ; 3 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = ptrtoint ptr %i.ds to i64
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = lshr i32 %i.dz, 4
  %i.eb = lshr i32 %i.dz, 9
  %i.ec = xor i32 %i.ea, %i.eb
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 32
  %i.ef = mul i32 %i.du, 37
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = shl nuw i64 %i.eg, 32
  %i.ei = xor i64 %i.eh, -1
  %i.ej = or disjoint i64 %i.ee, %i.eg
  %i.ek = add i64 %i.ej, %i.ei                    ; 2 uses
  %i.el = lshr i64 %i.ek, 22
  %i.em = xor i64 %i.el, %i.ek                    ; 2 uses
  %i.en = shl i64 %i.em, 13
  %i.eo = xor i64 %i.en, -1
  %i.ep = add i64 %i.em, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 8
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = mul i64 %i.er, 9                        ; 2 uses
  %i.et = lshr i64 %i.es, 15
  %i.eu = xor i64 %i.et, %i.es                    ; 2 uses
  %i.ev = shl i64 %i.eu, 27
  %i.ew = xor i64 %i.ev, -1
  %i.ex = add i64 %i.eu, %i.ew                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 31
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add i32 %i.dw, -1                       ; 2 uses
  %i.fc = and i32 %i.fb, %i.fa                    ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %i.fd ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !102, !noalias !99 ; 2 uses
  %i.fg = icmp eq ptr %i.ds, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !noalias !99 ; 2 uses
  %i.fj = icmp eq i32 %i.du, %i.fi
  %i.fk = select i1 %i.fg, i1 %i.fj, i1 false
  br i1 %i.fk, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, label %.lr.ph.i39.i, !prof !108

.lr.ph.i39.i:                                     ; preds = %bb.m, %bb.n
  %i.fl = phi i32 [ %i.fy, %bb.n ], [ %i.fi, %bb.m ]
  %i.fm = phi ptr [ %i.fv, %bb.n ], [ %i.ff, %bb.m ]
  %.02952.i40.i = phi i32 [ %i.fq, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.03151.i41.i = phi i32 [ %i.fs, %bb.n ], [ %i.fc, %bb.m ]
  %i.fn = icmp eq ptr %i.fm, inttoptr (i64 -8 to ptr)
  %i.fo = icmp eq i32 %i.fl, -1
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.n, !prof !109

bb.n:                                             ; preds = %.lr.ph.i39.i
  %i.fq = add i32 %.02952.i40.i, 1
  %i.fr = add i32 %.03151.i41.i, %.02952.i40.i
  %i.fs = and i32 %i.fr, %i.fb                    ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %i.ft ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !102, !noalias !99 ; 2 uses
  %i.fw = icmp eq ptr %i.ds, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !noalias !99 ; 2 uses
  %i.fz = icmp eq i32 %i.du, %i.fy
  %i.ga = select i1 %i.fw, i1 %i.fz, i1 false
  br i1 %i.ga, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, label %.lr.ph.i39.i, !prof !110, !llvm.loop !111

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i: ; preds = %bb.n, %bb.m
  %.sink.i45.i = phi ptr [ %i.fe, %bb.m ], [ %i.fu, %bb.n ] ; 10 uses
  %i.gb = zext i32 %i.dw to i64
  %i.gc = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %i.gb
  %.not66.i.i.not.i = icmp eq ptr %.sink.i45.i, %i.gc
  br i1 %.not66.i.i.not.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i
  %.sroa.537.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 28
  %.sroa.537.0.copyload39.i.i = load i32, ptr %.sroa.537.0..sroa_idx38.i.i, align 4, !noalias !95
  %.sroa.642.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 32
  %.sroa.642.0.copyload44.i.i = load i32, ptr %.sroa.642.0..sroa_idx43.i.i, align 8, !noalias !95
  %.sroa.750.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 48
  %.sroa.750.0.copyload52.i.i = load i8, ptr %.sroa.750.0..sroa_idx51.i.i, align 8, !noalias !95
  %.sroa.858.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 56
  %.sroa.858.0.copyload60.i.i = load i64, ptr %.sroa.858.0..sroa_idx59.i.i, align 8, !noalias !95
  %.sroa.10.0..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 64
  %.sroa.10.0.copyload62.i.i = load ptr, ptr %.sroa.10.0..sroa_idx61.i.i, align 8, !noalias !95
  %.sroa.11.0..sroa_idx63.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 72
  %.sroa.11.0.copyload64.i.i = load i8, ptr %.sroa.11.0..sroa_idx63.i.i, align 8, !noalias !95
  %.sroa.12.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx65.i.i, i64 7, i1 false), !noalias !95
  %.sroa.1266.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 80
  %.sroa.1266.0.copyload68.i.i = load i64, ptr %.sroa.1266.0..sroa_idx67.i.i, align 8, !noalias !95
  %.sroa.14.0..sroa_idx69.i.i = getelementptr inbounds nuw i8, ptr %.sink.i45.i, i64 88
  %.sroa.14.0.copyload70.i.i = load ptr, ptr %.sroa.14.0..sroa_idx69.i.i, align 8, !noalias !95
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i: ; preds = %.lr.ph.i39.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.i, %bb.l
  %i.gd = load ptr, ptr %.sroa.091.0128.i, align 8, !tbaa !112, !noalias !99
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !114, !noalias !99 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12, !noalias !99
  %i.gg = load i32, ptr %i.dt, align 8, !tbaa !119, !noalias !99
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 296
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !123, !noalias !166
  %i.gj = zext i32 %i.gg to i64
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gj ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 15
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !166
  %i.gn = and i8 %i.gm, 32
  %.not.i.i.i.i33.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i33.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i, label %bb.p, !prof !109

bb.p:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 288
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !167, !noalias !166
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gr = load i32, ptr %i.gq, align 1, !noalias !166
  %i.gs = shl i32 %i.gr, 16
  %i.gt = load i64, ptr %i.gk, align 1, !noalias !166
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 33554431
  %i.gw = or i32 %i.gv, %i.gs
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i: ; preds = %bb.p, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.gz, %bb.p ], [ %i.gk, %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit48.thread.i ] ; 3 uses
  %i.ha = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  %i.hb = trunc i64 %i.ha to i1
  br i1 %i.hb, label %bb.q, label %bb.r, !prof !168

bb.q:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.hd = load i32, ptr %i.hc, align 1, !tbaa !169, !noalias !166
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i.i.i
  %i.he = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 1, !noalias !166
  %i.hf = lshr i64 %i.he, 47
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i

_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.hd, %bb.q ], [ %i.hg, %bb.r ]
  %i.hh = load ptr, ptr %i.gf, align 8, !tbaa !171, !noalias !166
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !166
  %i.hk = call i64 %i.hj(ptr noundef nonnull align 8 dereferenceable(280) %i.gf, i32 noundef %.0.i.i.i.i.i) #12, !noalias !166, !inline_history !173 ; 2 uses
  %.sroa.42.0.extract.shift.i.i.i.i.i = lshr i64 %i.hk, 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.hl, align 8, !tbaa !174, !noalias !166 ; 2 uses
  %i.hm = and i64 %i.hk, 4294967295
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.hm ; 2 uses
  %i.ho = and i64 %.sroa.42.0.extract.shift.i.i.i.i.i, 2147483647 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %.not.i2.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, null
  store ptr %i.be, ptr %5, align 8, !tbaa !178, !alias.scope !179, !noalias !99
  br i1 %.not.i2.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i
  store i64 0, ptr %i.bf, align 8, !tbaa !180, !alias.scope !179, !noalias !99
  store i8 0, ptr %i.be, align 8, !tbaa !98, !alias.scope !179, !noalias !99
  br label %_ZN6hermes2vm12_GLOBAL__N_117getJSFunctionNameB5cxx11EPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i

bb.t:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader12functionNameEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12, !noalias !181
  store i64 %i.ho, ptr %i.g, align 8, !tbaa !73, !noalias !181
  %i.hp = icmp samesign ugt i64 %i.ho, 15
  br i1 %i.hp, label %bb.u, label %._crit_edge.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.hq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #12, !noalias !99 ; 2 uses
  store ptr %i.hq, ptr %5, align 8, !tbaa !182, !alias.scope !179, !noalias !99
  %i.hr = load i64, ptr %i.g, align 8, !tbaa !73, !noalias !181
  store i64 %i.hr, ptr %i.be, align 8, !tbaa !98, !alias.scope !179, !noalias !99
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.u, %bb.t
  %i.hs = phi ptr [ %i.hq, %bb.u ], [ %i.be, %bb.t ] ; 2 uses
  switch i64 %i.ho, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i.i
  ]
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.ki = load <2 x i64>, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !98, !noalias !99
  store <2 x i64> %i.ki, ptr %i.bl, align 8, !tbaa !98, !noalias !99
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.kj = load i64, ptr %i.bj, align 8, !tbaa !98, !noalias !99
  store ptr %i.ka, ptr %7, align 8, !tbaa !182, !noalias !99
  %i.kk = load <2 x i64>, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !98, !noalias !99
  store <2 x i64> %i.kk, ptr %i.bl, align 8, !tbaa !98, !noalias !99
  %.not.i.i19.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i19.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i
  store ptr %i.jy, ptr %8, align 8, !tbaa !182, !noalias !99
  store i64 %i.kj, ptr %i.bk, align 8, !tbaa !98, !noalias !99
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i, %.thread.i.i.i.i.i
  store ptr %i.bk, ptr %8, align 8, !tbaa !182, !noalias !99
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i

bb.ao:                                            ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i.i.i
  store ptr %i.bj, ptr %7, align 8, !tbaa !178, !noalias !99
  %i.kl = load ptr, ptr %8, align 8, !tbaa !182, !noalias !99 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.bk
  br i1 %i.km, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.kn = load i64, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !180, !noalias !99 ; 3 uses
  %i.ko = icmp ult i64 %i.kn, 16
  call void @llvm.assume(i1 %i.ko)
  %i.kp = add nuw nsw i64 %i.kn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.kp, i1 false), !noalias !99
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  store ptr %i.kl, ptr %7, align 8, !tbaa !182, !noalias !99
  %i.kq = load i64, ptr %i.bk, align 8, !tbaa !98, !noalias !99
  store i64 %i.kq, ptr %i.bj, align 8, !tbaa !98, !noalias !99
  %.pre70.i.i.i = load i64, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !180, !noalias !99
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.ap
  %i.kr = phi i64 [ %.pre70.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.kn, %bb.ap ]
  store i64 %i.kr, ptr %i.bl, align 8, !tbaa !180, !noalias !99
  store i8 1, ptr %i.bh, align 8, !tbaa !205, !noalias !99
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i: ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i
  %i.ks = phi ptr [ %i.jy, %bb.am ], [ %i.bk, %bb.an ], [ %.pre.i.i20.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i ]
  store i64 0, ptr %.phi.trans.insert69.i.i.i, align 8, !tbaa !180, !noalias !99
  store i8 0, ptr %i.ks, align 1, !tbaa !98, !noalias !99
  %.pre71.i.i.i = load ptr, ptr %8, align 8, !tbaa !182, !noalias !99 ; 2 uses
  %i.kt = icmp eq ptr %.pre71.i.i.i, %i.bk
  br i1 %i.kt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i
  %i.ku = load i64, ptr %i.bk, align 8, !tbaa !98, !noalias !99
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %.pre71.i.i.i, i64 noundef %i.kv) #15, !noalias !99
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !99
  %.pre72.i.i.i = load i8, ptr %i.bh, align 8, !tbaa !205, !range !207, !noalias !99
  %i.kw = trunc nuw i8 %.pre72.i.i.i to i1
  br i1 %i.kw, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i, label %.thread.i.i.i

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !99
  %i.kx = load ptr, ptr %7, align 8, !tbaa !182, !noalias !99
  store ptr %i.kx, ptr %9, align 8, !tbaa !211, !noalias !99
  %i.ky = load i64, ptr %i.bl, align 8, !tbaa !180, !noalias !99
  store i64 %i.ky, ptr %i.bm, align 8, !tbaa !213, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12, !noalias !99
  %i.kz = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !99
  %i.la = load ptr, ptr %i.e, align 8, !tbaa !214, !noalias !99 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12, !noalias !99
  %i.lb = load ptr, ptr %i.l, align 8, !tbaa !215, !noalias !99
  %i.lc = load i32, ptr %i.bn, align 8, !tbaa !216, !noalias !99
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %i.lb, i64 %i.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !99
  %.not67.i.i.i = icmp ne ptr %i.la, %i.le
  %.not.not68.i.i.i = select i1 %i.kz, i1 %.not67.i.i.i, i1 false
  br i1 %.not.not68.i.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %.sroa.053.0.copyload54.i.i.i = load i64, ptr %i.lf, align 8, !tbaa !73, !noalias !99
  %.sroa.555.0..sroa_idx56.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %.sroa.555.0.copyload57.i.i.i = load ptr, ptr %.sroa.555.0..sroa_idx56.i.i.i, align 8, !tbaa !174, !noalias !99
  br label %.thread.i.i.i

bb.ar:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i.i
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !32, !noalias !99 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !31, !noalias !99 ; 7 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !183, !noalias !99
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -32
  %.not.i.i28.i.i.i = icmp eq ptr %i.li, %i.ll
  br i1 %.not.i.i28.i.i.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 3 uses
  store ptr %i.lm, ptr %i.li, align 8, !tbaa !178, !noalias !99
  %i.ln = load ptr, ptr %7, align 8, !tbaa !182, !noalias !99 ; 2 uses
  %i.lo = load i64, ptr %i.bl, align 8, !tbaa !180, !noalias !99 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12, !noalias !99
  store i64 %i.lo, ptr %i.d, align 8, !tbaa !73, !noalias !99
  %i.lp = icmp ugt i64 %i.lo, 15
  br i1 %i.lp, label %bb.at, label %._crit_edge.i.i.i.i29.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.lq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #12, !noalias !99 ; 2 uses
  store ptr %i.lq, ptr %i.li, align 8, !tbaa !182, !noalias !99
  %i.lr = load i64, ptr %i.d, align 8, !tbaa !73, !noalias !99
  store i64 %i.lr, ptr %i.lm, align 8, !tbaa !98, !noalias !99
  br label %._crit_edge.i.i.i.i29.i.i.i

._crit_edge.i.i.i.i29.i.i.i:                      ; preds = %bb.at, %bb.as
  %i.ls = phi ptr [ %i.lq, %bb.at ], [ %i.lm, %bb.as ] ; 2 uses
  switch i64 %i.lo, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i29.i.i.i
  %i.lt = load i8, ptr %i.ln, align 1, !tbaa !98, !noalias !99
  store i8 %i.lt, ptr %i.ls, align 1, !tbaa !98, !noalias !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i

bb.av:                                            ; preds = %._crit_edge.i.i.i.i29.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ls, ptr align 1 %i.ln, i64 %i.lo, i1 false), !noalias !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i: ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i.i29.i.i.i
  %i.lu = load i64, ptr %i.d, align 8, !tbaa !73, !noalias !99 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !180, !noalias !99
  %i.lw = load ptr, ptr %i.li, align 8, !tbaa !182, !noalias !99
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 0, ptr %i.lx, align 1, !tbaa !98, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12, !noalias !99
  %i.ly = load ptr, ptr %i.lh, align 8, !tbaa !31, !noalias !99
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  store ptr %i.lz, ptr %i.lh, align 8, !tbaa !31, !noalias !99
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i

bb.aw:                                            ; preds = %bb.ar
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %7), !noalias !99
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i: ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i30.i.i.i
  %i.ma = load ptr, ptr %i.m, align 8, !tbaa !32, !noalias !99 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !184, !noalias !217 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !28, !noalias !217
  %i.mf = icmp eq ptr %i.mc, %i.me
  br i1 %i.mf, label %bb.ax, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i

bb.ax:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 72
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !27, !noalias !217
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !26, !noalias !99
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 512
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i: ; preds = %bb.ax, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i
  %i.ml = phi ptr [ %i.mk, %bb.ax ], [ %i.mc, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i31.i.i.i ] ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !182, !noalias !99 ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 -24
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !180, !noalias !99 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12, !noalias !99
  store ptr %i.mn, ptr %10, align 8, !tbaa !211, !noalias !99
  store i64 %i.mp, ptr %i.bo, align 8, !tbaa !213, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !220
  %i.mq = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !220
  %i.mr = load ptr, ptr %i.c, align 8, !tbaa !214, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !220
  br i1 %i.mq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i
  %i.ms = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E20InsertIntoBucketImplIS2_EEPSB_RKS2_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.mr), !noalias !220 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !223, !noalias !220
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store i64 %i.mp, ptr %i.mt, align 8, !tbaa !73, !noalias !220
  %.sroa.6.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store ptr %i.mn, ptr %.sroa.6.0..sroa_idx46.i.i.i, align 8, !tbaa !174, !noalias !220
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i: ; preds = %bb.ay, %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12, !noalias !99
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i
  %.sroa.053.1.i.i.i = phi i64 [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %.sroa.053.0.copyload54.i.i.i, %bb.aq ], [ %i.mp, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.555.1.i.i.i = phi ptr [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %.sroa.555.0.copyload57.i.i.i, %bb.aq ], [ %i.mn, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.658.1.i.i.i = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ 1, %bb.aq ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.036.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %6, align 16, !noalias !95
  %.sroa.537.0.copyload41.i.i = load i32, ptr %.sroa.537.0..sroa_idx40.i.i, align 4, !tbaa !3, !noalias !95 ; 2 uses
  %.sroa.642.0.copyload46.i.i = load i32, ptr %.sroa.642.0..sroa_idx45.i.i, align 16, !tbaa !3, !noalias !95 ; 2 uses
  %.sroa.747.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.747.0..sroa_idx49.i.i, align 4, !noalias !95
  %.sroa.750.0.copyload54.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 16, !tbaa !224, !noalias !95 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.855.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.855.0..sroa_idx57.i.i, i64 3, i1 false), !tbaa.struct !210, !noalias !95
  %i.mu = load ptr, ptr %i.k, align 8, !tbaa !106, !noalias !225 ; 2 uses
  %i.mv = load i32, ptr %i.bd, align 8, !tbaa !107, !noalias !225 ; 7 uses
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i, label %bb.az

bb.az:                                            ; preds = %.thread.i.i.i
  %i.mx = load ptr, ptr %4, align 8, !tbaa !102, !noalias !225 ; 3 uses
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = trunc i64 %i.my to i32                  ; 2 uses
  %i.na = lshr i32 %i.mz, 4
  %i.nb = lshr i32 %i.mz, 9
  %i.nc = xor i32 %i.na, %i.nb
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl nuw nsw i64 %i.nd, 32
  %i.nf = load i32, ptr %i.bc, align 8, !tbaa !3, !noalias !225 ; 3 uses
  %i.ng = mul i32 %i.nf, 37
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = shl nuw i64 %i.nh, 32
  %i.nj = xor i64 %i.ni, -1
  %i.nk = add i64 %i.nj, %i.nh
  %i.nl = add i64 %i.nk, %i.ne                    ; 2 uses
  %i.nm = lshr i64 %i.nl, 22
  %i.nn = xor i64 %i.nm, %i.nl                    ; 2 uses
  %i.no = shl i64 %i.nn, 13
  %i.np = xor i64 %i.no, -1
  %i.nq = add i64 %i.nn, %i.np                    ; 2 uses
  %i.nr = lshr i64 %i.nq, 8
  %i.ns = xor i64 %i.nr, %i.nq
  %i.nt = mul i64 %i.ns, 9                        ; 2 uses
  %i.nu = lshr i64 %i.nt, 15
  %i.nv = xor i64 %i.nu, %i.nt                    ; 2 uses
  %i.nw = shl i64 %i.nv, 27
  %i.nx = xor i64 %i.nw, -1
  %i.ny = add i64 %i.nv, %i.nx                    ; 2 uses
  %i.nz = lshr i64 %i.ny, 31
  %i.oa = xor i64 %i.nz, %i.ny
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = add i32 %i.mv, -1                       ; 2 uses
  %i.od = and i32 %i.oc, %i.ob                    ; 2 uses
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [96 x i8], ptr %i.mu, i64 %i.oe ; 3 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !102, !noalias !225 ; 2 uses
  %i.oh = icmp eq ptr %i.mx, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oj = load i32, ptr %i.oi, align 8, !noalias !225 ; 2 uses
  %i.ok = icmp eq i32 %i.nf, %i.oj
  %i.ol = select i1 %i.oh, i1 %i.ok, i1 false
  br i1 %i.ol, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i, label %.lr.ph.i.i, !prof !108

.lr.ph.i.i:                                       ; preds = %bb.az, %bb.bb
  %i.om = phi i32 [ %i.pf, %bb.bb ], [ %i.oj, %bb.az ] ; 2 uses
  %i.on = phi ptr [ %i.pc, %bb.bb ], [ %i.og, %bb.az ] ; 2 uses
  %i.oo = phi ptr [ %i.pb, %bb.bb ], [ %i.of, %bb.az ] ; 2 uses
  %.02952.i.i = phi i32 [ %i.ox, %bb.bb ], [ 1, %bb.az ] ; 2 uses
  %.03151.i.i = phi i32 [ %i.oz, %bb.bb ], [ %i.od, %bb.az ]
  %.03450.i.i = phi ptr [ %spec.select.i.i, %bb.bb ], [ null, %bb.az ] ; 4 uses
  %i.op = icmp eq ptr %i.on, inttoptr (i64 -8 to ptr)
  %i.oq = icmp eq i32 %i.om, -1
  %i.or = select i1 %i.op, i1 %i.oq, i1 false
  br i1 %i.or, label %bb.ba, label %bb.bb, !prof !109

bb.ba:                                            ; preds = %.lr.ph.i.i
  %.not.i38.i = icmp eq ptr %.03450.i.i, null
  %i.os = select i1 %.not.i38.i, ptr %i.oo, ptr %.03450.i.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.ot = icmp eq ptr %i.on, inttoptr (i64 -16 to ptr)
  %i.ou = icmp eq i32 %i.om, -2
  %i.ov = select i1 %i.ot, i1 %i.ou, i1 false
  %i.ow = icmp eq ptr %.03450.i.i, null
  %or.cond.not.i.i = select i1 %i.ov, i1 %i.ow, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.oo, ptr %.03450.i.i
  %i.ox = add i32 %.02952.i.i, 1
  %i.oy = add i32 %.03151.i.i, %.02952.i.i
  %i.oz = and i32 %i.oy, %i.oc                    ; 2 uses
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [96 x i8], ptr %i.mu, i64 %i.pa ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !102, !noalias !225 ; 2 uses
  %i.pd = icmp eq ptr %i.mx, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pf = load i32, ptr %i.pe, align 8, !noalias !225 ; 2 uses
  %i.pg = icmp eq i32 %i.nf, %i.pf
  %i.ph = select i1 %i.pd, i1 %i.pg, i1 false
  br i1 %i.ph, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i, label %.lr.ph.i.i, !prof !110, !llvm.loop !111

_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i: ; preds = %bb.ba, %.thread.i.i.i
  %.sink.i.i = phi ptr [ %i.os, %bb.ba ], [ null, %.thread.i.i.i ]
  %i.pi = load i32, ptr %i.bq, align 8, !tbaa !228, !noalias !225 ; 2 uses
  %i.pj = shl i32 %i.pi, 2
  %i.pk = add i32 %i.pj, 4
  %i.pl = mul i32 %i.mv, 3
  %.not.i37.i = icmp ult i32 %i.pk, %i.pl
  br i1 %.not.i37.i, label %bb.bd, label %bb.bc, !prof !109

bb.bc:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i
  %i.pm = shl i32 %i.mv, 1
  call void @_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i32 noundef %i.pm), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !225
  %i.pn = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !225 ; 0 uses
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !229, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !225
  br label %bb.bf

bb.bd:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_.exit.i
  %i.pp = load i32, ptr %i.br, align 4, !tbaa !230, !noalias !225
  %.neg.i.i = xor i32 %i.pi, -1
  %.neg12.i.i = add i32 %i.mv, %.neg.i.i
  %i.pq = sub i32 %.neg12.i.i, %i.pp
  %i.pr = lshr i32 %i.mv, 3
  %.not9.i.i = icmp ugt i32 %i.pq, %i.pr
  br i1 %.not9.i.i, label %bb.bf, label %bb.be, !prof !109

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i32 noundef %i.mv), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !225
  %i.ps = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !225 ; 0 uses
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !229, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !225
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.0.i.i = phi ptr [ %.sink.i.i, %bb.bd ], [ %i.pt, %bb.be ], [ %i.po, %bb.bc ] ; 15 uses
  %i.pu = load i32, ptr %i.bq, align 8, !tbaa !228, !noalias !225
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.bq, align 8, !tbaa !228, !noalias !225
  %i.pw = load ptr, ptr %.0.i.i, align 8, !tbaa !102, !noalias !225
  %i.px = icmp eq ptr %i.pw, inttoptr (i64 -8 to ptr)
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 8, !noalias !225
  %i.qa = icmp eq i32 %i.pz, -1
  %i.qb = select i1 %i.px, i1 %i.qa, i1 false
  br i1 %i.qb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qc = load i32, ptr %i.br, align 4, !tbaa !230, !noalias !225
  %i.qd = add i32 %i.qc, -1
  store i32 %i.qd, ptr %i.br, align 4, !tbaa !230, !noalias !225
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i: ; preds = %bb.bg, %bb.bf
  %i.qe = load ptr, ptr %4, align 8, !tbaa !102, !noalias !225
  store ptr %i.qe, ptr %.0.i.i, align 8, !tbaa !102, !noalias !225
  %i.qf = load i32, ptr %i.bc, align 8, !tbaa !105, !noalias !225
  store i32 %i.qf, ptr %i.py, align 8, !tbaa !105, !noalias !225
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <3 x i32> %.sroa.036.i.i.sroa.0.0.copyload, ptr %i.qg, align 8, !noalias !231
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  store i32 %.sroa.537.0.copyload41.i.i, ptr %.sroa.537.0..sroa_idx.i.i, align 4, !noalias !231
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 %.sroa.642.0.copyload46.i.i, ptr %.sroa.642.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.747.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  store <3 x i32> %.sroa.747.i.i.sroa.0.0.copyload, ptr %.sroa.747.0..sroa_idx.i.i, align 4, !noalias !231
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i8 %.sroa.750.0.copyload54.i.i, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.i.i, i64 7, i1 false), !noalias !231
  %.sroa.858.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store i64 %.sroa.053.1.i.i.i, ptr %.sroa.858.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store ptr %.sroa.555.1.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  store i8 %.sroa.658.1.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !231
  %.sroa.1266.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store i64 %i.jg, ptr %.sroa.1266.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  store ptr %i.je, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !231
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i: ; preds = %bb.bb, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, %bb.az
  %i.qh = load i8, ptr %i.bh, align 8, !tbaa !205, !range !207, !noalias !99, !noundef !210
  %i.qi = trunc nuw i8 %i.qh to i1
  store i8 0, ptr %i.bh, align 8, !tbaa !205, !noalias !99
  br i1 %i.qi, label %bb.bh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.bh:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  %i.qj = load ptr, ptr %7, align 8, !tbaa !182, !noalias !99 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.bj
  br i1 %i.qk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.ql = load i64, ptr %i.bj, align 8, !tbaa !98, !noalias !99
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #15, !noalias !99
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !99
  %i.qn = load ptr, ptr %5, align 8, !tbaa !182, !noalias !99 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.be
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.qp = load i64, ptr %i.be, align 8, !tbaa !98, !noalias !99
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #15, !noalias !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !99
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %bb.o
  %.sroa.537.0.i.i = phi i32 [ %.sroa.537.0.copyload39.i.i, %bb.o ], [ %.sroa.537.0.copyload41.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.642.0.i.i = phi i32 [ %.sroa.642.0.copyload44.i.i, %bb.o ], [ %.sroa.642.0.copyload46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.750.0.i.i = phi i8 [ %.sroa.750.0.copyload52.i.i, %bb.o ], [ %.sroa.750.0.copyload54.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.858.0.i.i = phi i64 [ %.sroa.858.0.copyload60.i.i, %bb.o ], [ %.sroa.053.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload62.i.i, %bb.o ], [ %.sroa.555.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.11.0.i.i = phi i8 [ %.sroa.11.0.copyload64.i.i, %bb.o ], [ %.sroa.658.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.1266.0.i.i = phi i64 [ %.sroa.1266.0.copyload68.i.i, %bb.o ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.14.0.i.i = phi ptr [ %.sroa.14.0.copyload70.i.i, %bb.o ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.537.0.fr.i.i = freeze i32 %.sroa.537.0.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !99
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !232, !noalias !95
  %i.qt = trunc nuw i8 %.sroa.750.0.i.i to i1
  br i1 %i.qt, label %bb.bi, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !95
  br label %bb.bl

bb.bi:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.537.0.fr.i.i, 0 ; 2 uses
  %.not17.i.i = icmp eq i32 %.sroa.642.0.i.i, 0
  br i1 %.not17.i.i, label %bb.bj, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bi
  %i.qu = zext i32 %.sroa.642.0.i.i to i64
  %i.qv = or disjoint i64 %i.qu, 4294967296       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !95
  br i1 %.not.not.i.i, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !95
  br i1 %.not.not.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.split.i.i
  %.sroa.431.1108.i.i = phi i64 [ %i.qv, %.split.i.i ], [ 0, %bb.bj ]
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.split.i.i, %.thread.i.i
  %.sroa.431.1105.i.i = phi i64 [ %.sroa.431.1108.i.i, %bb.bk ], [ 0, %bb.bj ], [ 0, %.thread.i.i ], [ %i.qv, %.split.i.i ]
  %i.qw = phi i64 [ 4294967296, %bb.bk ], [ 0, %bb.bj ], [ 0, %.thread.i.i ], [ 0, %.split.i.i ]
  %.sroa.033.0.insert.ext.i.i = zext i32 %.sroa.537.0.fr.i.i to i64
  %.sroa.033.0.insert.insert.i.i = or disjoint i64 %i.qw, %.sroa.033.0.insert.ext.i.i
  %.sroa.053.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.1266.0.i.i to i32
  %.sroa.053.sroa.8.0.extract.shift.i = lshr i64 %.sroa.1266.0.i.i, 32
  %.sroa.053.sroa.8.0.extract.trunc.i = trunc nuw i64 %.sroa.053.sroa.8.0.extract.shift.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, i64 7, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.855.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.bm:                                            ; preds = %.lr.ph.i
  unreachable

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i: ; preds = %bb.bl, %bb.k, %bb.j, %bb.i
  %.sroa.053.sroa.8.2.i = phi i32 [ %.sroa.053.sroa.8.1129.i, %bb.i ], [ %.sroa.053.sroa.8.0.extract.trunc85.i, %bb.j ], [ %.sroa.053.sroa.8.0.extract.trunc83.i, %bb.k ], [ %.sroa.053.sroa.8.0.extract.trunc.i, %bb.bl ] ; 4 uses
  %.sroa.053.sroa.0.0.i = phi i32 [ %i.dl, %bb.i ], [ %.sroa.053.sroa.0.0.extract.trunc78.i, %bb.j ], [ %.sroa.053.sroa.0.0.extract.trunc77.i, %bb.k ], [ %.sroa.053.sroa.0.0.extract.trunc.i, %bb.bl ] ; 2 uses
  %.sroa.18.0.i = phi i8 [ 0, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.bl ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ %.sroa.17.1130.i, %bb.i ], [ %.sroa.17.1130.i, %bb.j ], [ %.sroa.17.1130.i, %bb.k ], [ %.sroa.431.1105.i.i, %bb.bl ] ; 4 uses
  %.sroa.16.2.i = phi i64 [ %.sroa.16.1131.i, %bb.i ], [ %.sroa.16.1131.i, %bb.j ], [ %.sroa.16.1131.i, %bb.k ], [ %.sroa.033.0.insert.insert.i.i, %bb.bl ] ; 4 uses
  %.sroa.14.2.i = phi i8 [ %.sroa.14.1132.i, %bb.i ], [ %.sroa.14.1132.i, %bb.j ], [ %.sroa.14.1132.i, %bb.k ], [ %.sroa.11.0.i.i, %bb.bl ] ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1133.i, %bb.i ], [ %.sroa.13.1133.i, %bb.j ], [ %.sroa.13.1133.i, %bb.k ], [ %.sroa.10.0.i.i, %bb.bl ] ; 4 uses
  %.sroa.1262.2.i = phi i64 [ %.sroa.1262.1134.i, %bb.i ], [ %.sroa.1262.1134.i, %bb.j ], [ %.sroa.1262.1134.i, %bb.k ], [ %.sroa.858.0.i.i, %bb.bl ] ; 4 uses
  %.sroa.11.2.i = phi i32 [ %.sroa.11.1135.i, %bb.i ], [ %.sroa.11.1135.i, %bb.j ], [ %.sroa.11.1135.i, %bb.k ], [ %i.qs, %bb.bl ] ; 4 uses
  %.sroa.855.2.i = phi ptr [ %.sroa.855.1136.i, %bb.i ], [ %i.do, %bb.j ], [ %i.dr, %bb.k ], [ %.sroa.14.0.i.i, %bb.bl ] ; 4 uses
  %i.qx = load ptr, ptr %i.bb, align 8, !tbaa !79, !noalias !12 ; 14 uses
  %i.qy = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  %.not.i.i.i = icmp eq ptr %i.qx, %i.qy
  br i1 %.not.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %.sroa.053.sroa.8.0.insert.ext.i = zext i32 %.sroa.053.sroa.8.2.i to i64
  %.sroa.053.sroa.8.0.insert.shift.i = shl nuw i64 %.sroa.053.sroa.8.0.insert.ext.i, 32
  %.sroa.053.sroa.0.0.insert.ext.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift.i, %.sroa.053.sroa.0.0.insert.ext.i
  store i64 %.sroa.053.sroa.0.0.insert.insert.i, ptr %i.qx, align 8, !noalias !12
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !12
  %i.qz = load ptr, ptr %i.bb, align 8, !tbaa !79, !noalias !12
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 72 ; 2 uses
  store ptr %i.ra, ptr %i.bb, align 8, !tbaa !79, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

bb.bo:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %i.rb = load ptr, ptr %12, align 8, !tbaa !78, !noalias !12 ; 5 uses
  %i.rc = ptrtoint ptr %i.qx to i64
  %i.rd = ptrtoint ptr %i.rb to i64               ; 2 uses
  %i.re = sub i64 %i.rc, %i.rd                    ; 3 uses
  %i.rf = icmp eq i64 %i.re, 9223372036854775800
  br i1 %i.rf, label %bb.bp, label %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14, !noalias !12
  unreachable

_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bo
  %i.rg = sdiv exact i64 %i.re, 72                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rg, i64 1)
  %i.rh = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.rg ; 2 uses
  %i.ri = icmp ult i64 %i.rh, %i.rg
  %i.rj = call i64 @llvm.umin.i64(i64 %i.rh, i64 128102389400760775)
  %i.rk = select i1 %i.ri, i64 128102389400760775, i64 %i.rj ; 3 uses
  %.not.i.i.i.i36.i = icmp ne i64 %i.rk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i36.i)
  %i.rl = mul nuw nsw i64 %i.rk, 72
  %i.rm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rl) #13, !noalias !12 ; 5 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.re ; 10 uses
  %.sroa.053.sroa.8.0.insert.ext86.i = zext i32 %.sroa.053.sroa.8.2.i to i64
  %.sroa.053.sroa.8.0.insert.shift87.i = shl nuw i64 %.sroa.053.sroa.8.0.insert.ext86.i, 32
  %.sroa.053.sroa.0.0.insert.ext79.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert81.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift87.i, %.sroa.053.sroa.0.0.insert.ext79.i
  store i64 %.sroa.053.sroa.0.0.insert.insert81.i, ptr %i.rn, align 8, !noalias !12
  %.sroa.855.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx56.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx58.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx63.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx65.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx67.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx69.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx70.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx72.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx74.i, align 8, !noalias !12
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.rb, %i.qx
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.rp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.rm, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i.i.i ], [ %i.rb, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i.i.i, i64 72, i1 false), !alias.scope !258, !noalias !12
  %i.ro = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ro, %i.qx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !84

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rm, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.rp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.rb, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  %i.rr = load ptr, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = sub i64 %i.rs, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rt) #15, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.bq, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  store ptr %i.rm, ptr %12, align 8, !tbaa !78, !noalias !12
  store ptr %i.rq, ptr %i.bb, align 8, !tbaa !79, !noalias !12
  %i.ru = getelementptr inbounds nuw [72 x i8], ptr %i.rm, i64 %i.rk
  store ptr %i.ru, ptr %i.ba, align 8, !tbaa !52, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i: ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.bn
  %i.rv = phi ptr [ %i.ra, %bb.bn ], [ %i.rq, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 24 ; 2 uses
  %.not106.i = icmp eq ptr %i.rw, %i.cr
  br i1 %.not106.i, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i
  %i.rx = phi ptr [ %.pre172.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ %i.ai, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i ], [ null, %bb.b ]
  %i.ry = phi <2 x ptr> [ %i.bt, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ %i.az, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE7reserveEm.exit.i ], [ splat (ptr null), %bb.b ]
  %i.rz = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !12
  store ptr null, ptr %i.m, align 8, !tbaa !32, !noalias !12
  store ptr %i.rx, ptr %0, align 8, !tbaa !38, !alias.scope !12
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ry, ptr %i.sa, align 8, !tbaa !72, !alias.scope !12
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.rz, ptr %i.sb, align 8, !tbaa !32, !alias.scope !12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12, !noalias !12
  %i.sc = load ptr, ptr %i.l, align 8, !tbaa !215
  call void @_ZdlPv(ptr noundef %i.sc) #12
  %i.sd = load ptr, ptr %i.k, align 8, !tbaa !106
  call void @_ZdlPv(ptr noundef %i.sd) #12
  %i.se = load ptr, ptr %i.j, align 8, !tbaa !262
  call void @_ZdlPv(ptr noundef %i.se) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.std::pair.103", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !263  ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !73     ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = mul i32 %i.h, 37
  %i.j = add i32 %i.e, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.i, %i.j              ; 2 uses
  %i.k = zext i32 %.02744.i.i.i to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !108

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02744.i.i.i, %bb.b ]
  %.02546.i.i.i = phi i32 [ %i.q, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.c, !prof !109

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add i32 %.02546.i.i.i, 1
  %i.r = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.r, %i.j                ; 2 uses
  %i.s = zext i32 %.027.i.i.i to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = icmp eq i64 %i.g, %i.u
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !110, !llvm.loop !264

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.w = zext i32 %i.e to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.w
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.x, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i ], [ %i.l, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.y
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.z
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !265
  br label %bb.l

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ab = load ptr, ptr %0, align 8, !tbaa !266, !nonnull !210, !align !267
  call void @_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !183
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.not.i.i = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !178
  %i.ak = load ptr, ptr %3, align 8, !tbaa !182   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !180 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.am, ptr %i.a, align 8, !tbaa !73
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !182
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !98
  br label %._crit_edge.i.i.i.i

end_hunk_1
