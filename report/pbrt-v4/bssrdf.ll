Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bssrdf?download=true
inline.NumInlined: 597
inline.NumDeleted: 200
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev = comdat any

$_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_ = comdat any

$_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation = comdat any

$__clang_call_terminate = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJRKfRKNS_7Normal3IfEERKNS_15SampledSpectrumESE_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJRKNS_7Normal3IfEERKNS_15SampledSpectrumESA_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIPKcJRS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_7Normal3IfEEJRKNS_15SampledSpectrumES8_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJS4_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJRKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_11BSSRDFTableEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJS9_S9_S9_S9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJS9_S9_S9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJS9_S9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJS9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZTIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = comdat any

$_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = comdat any

$_ZTSN4pbrt6Point3IfEE = comdat any

$_ZTSN4pbrt7Normal3IfEE = comdat any

$_ZTSN4pbrt15SampledSpectrumE = comdat any

$_ZTSN4pbrt11BSSRDFTableE = comdat any

$_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE = comdat any

@_ZN4pbrtL10LMSFromXYZE = internal global %"class.pbrt::SquareMatrix" zeroinitializer, align 32
@_ZN4pbrtL10XYZFromLMSE = internal global %"class.pbrt::SquareMatrix" zeroinitializer, align 32
@_ZN4pbrtL29STATS_REGredundantBufferBytesE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL25STATS_REGnBufferCacheHitsE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@.str = private unnamed_addr constant [72 x i8] c"[ TabulatedBSSRDF po: %s eta: %f ns: %s sigma_t: %s rho: %s table: %s ]\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"[ BSSRDFTable rhoSamples: %s radiusSamples: %s profile: %s rhoEff: %s profileCDF: %s ]\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Memory/Redundant vertex and index buffers\00", align 1
@_ZN4pbrtL20redundantBufferBytesE = internal thread_local unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Geometry/Buffer cache hits\00", align 1
@_ZN4pbrtL16nBufferCacheHitsE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL19nBufferCacheLookupsE = internal thread_local unnamed_addr global i64 0, align 8
@_ZTIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = linkonce_odr dso_local constant [48 x i8] c"ZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_\00", comdat, align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Printf: Non-basic type %s passed for format string %s\00", align 1
@_ZTSN4pbrt6Point3IfEE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt6Point3IfEE\00", comdat, align 1
@_ZTSN4pbrt7Normal3IfEE = linkonce_odr dso_local constant [19 x i8] c"N4pbrt7Normal3IfEE\00", comdat, align 1
@_ZTSN4pbrt15SampledSpectrumE = linkonce_odr dso_local constant [25 x i8] c"N4pbrt15SampledSpectrumE\00", comdat, align 1
@_ZTSN4pbrt11BSSRDFTableE = linkonce_odr dso_local constant [21 x i8] c"N4pbrt11BSSRDFTableE\00", comdat, align 1
@"_ZTIZN4pbrt26ComputeBeamDiffusionBSSRDFEffPNS_11BSSRDFTableEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4pbrt26ComputeBeamDiffusionBSSRDFEffPNS_11BSSRDFTableEE3$_0" }, align 8
@"_ZTSZN4pbrt26ComputeBeamDiffusionBSSRDFEffPNS_11BSSRDFTableEE3$_0" = internal constant [62 x i8] c"ZN4pbrt26ComputeBeamDiffusionBSSRDFEffPNS_11BSSRDFTableEE3$_0\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE = linkonce_odr dso_local constant [52 x i8] c"N4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_bssrdf.cpp, ptr null }]

@_ZN4pbrt11BSSRDFTableC1EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN4pbrt11BSSRDFTableC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15TabulatedBSSRDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !17, !alias.scope !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !20, !alias.scope !80
  store i8 0, ptr %i.g, align 8, !tbaa !21, !alias.scope !80
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJRKfRKNS_7Normal3IfEERKNS_15SampledSpectrumESE_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.f)
          to label %_ZN4pbrt12StringPrintfIJRKNS_6Point3IfEERKfRKNS_7Normal3IfEERKNS_15SampledSpectrumESD_RKNS_11BSSRDFTableEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !22, !alias.scope !80 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !21, !alias.scope !80
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.i

_ZN4pbrt12StringPrintfIJRKNS_6Point3IfEERKfRKNS_7Normal3IfEERKNS_15SampledSpectrumESD_RKNS_11BSSRDFTableEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt15BeamDiffusionMSEfffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = fsub float 1.000000e+00, %2
  %i.b = fmul float %0, %i.a                      ; 3 uses
  %i.c = fadd float %1, %i.b                      ; 5 uses
  %i.d = fdiv float %i.b, %i.c                    ; 2 uses
  %i.e = fmul float %1, 2.000000e+00
  %i.f = fadd float %i.e, %i.b
  %i.g = fmul float %i.c, 3.000000e+00
  %i.h = fmul float %i.c, %i.g
  %i.i = fdiv float %i.f, %i.h                    ; 3 uses
  %i.j = fdiv float %1, %i.i                      ; 2 uses
  %i.k = fcmp ogt float %i.j, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.k, float %i.j, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 3 uses
  %i.l = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %3)
  %i.m = tail call noundef float @_ZN4pbrt14FresnelMoment2Ef(float noundef %3)
  %i.n = fmul float %i.i, -2.000000e+00
  %i.o = fmul float %i.m, 3.000000e+00            ; 2 uses
  %i.p = fadd float %i.o, 1.000000e+00
  %i.q = fmul float %i.n, %i.p
  %i.r = fmul float %i.l, 2.000000e+00
  %i.s = fsub float 1.000000e+00, %i.r            ; 2 uses
  %i.t = fdiv float %i.q, %i.s
  %i.u = fmul float %i.s, 2.500000e-01
  %i.v = fsub float 1.000000e+00, %i.o
  %i.w = fmul float %i.v, 5.000000e-01
  %i.x = fmul float %i.t, 2.000000e+00
  %i.y = fmul float %4, %4                        ; 2 uses
  %i.z = fdiv float f0x3DA2F983, %i.i
  %i.aa = fneg float %sqrt.i                      ; 2 uses
  %i.ab = fmul float %i.c, -2.000000e+00
  br label %bb.c

bb.b:                                             ; preds = %_ZN4pbrt7FastExpEf.exit68
  %i.ac = fdiv float %i.ei, 1.000000e+02
  ret float %i.ac

bb.c:                                             ; preds = %bb.a, %_ZN4pbrt7FastExpEf.exit68
  %.071 = phi float [ 0.000000e+00, %bb.a ], [ %i.ei, %_ZN4pbrt7FastExpEf.exit68 ]
  %.06070 = phi i32 [ 0, %bb.a ], [ %i.ej, %_ZN4pbrt7FastExpEf.exit68 ] ; 2 uses
  %i.ad = uitofp nneg i32 %.06070 to float
  %i.ae = fadd float %i.ad, 5.000000e-01
  %i.af = fdiv float %i.ae, 1.000000e+02
  %i.ag = fsub float 1.000000e+00, %i.af
  %i.ah = tail call noundef float @logf(float noundef %i.ag) #23
  %i.ai = fneg float %i.ah
  %i.aj = fdiv float %i.ai, %i.c                  ; 5 uses
  %i.ak = fsub float %i.x, %i.aj                  ; 3 uses
  %i.al = fmul float %i.aj, %i.aj
  %i.am = fadd float %i.y, %i.al
  %sqrt69 = tail call noundef float @sqrtf(float noundef %i.am) #23 ; 7 uses
  %i.an = fmul float %i.ak, %i.ak
  %i.ao = fadd float %i.y, %i.an
  %sqrt = tail call noundef float @sqrtf(float noundef %i.ao) #23 ; 6 uses
  %i.ap = fmul float %sqrt69, %i.aa
  %i.aq = fmul float %i.ap, f0x3FB8AA3B           ; 2 uses
  %i.ar = tail call noundef float @llvm.floor.f32(float %i.aq) ; 2 uses
  %i.as = fsub float %i.aq, %i.ar                 ; 3 uses
  %i.at = fptosi float %i.ar to i32
  %i.au = tail call noundef float @llvm.fma.f32(float %i.as, float f0x3DA00AC9, float f0x3E679A0B)
  %i.av = tail call noundef float @llvm.fma.f32(float %i.as, float %i.au, float f0x3F321004)
  %i.aw = tail call noundef float @llvm.fma.f32(float %i.as, float %i.av, float 1.000000e+00)
  %i.ax = bitcast float %i.aw to i32              ; 3 uses
  %i.ay = lshr i32 %i.ax, 23
  %i.az = add i32 %i.at, -127
  %i.ba = add i32 %i.az, %i.ay                    ; 5 uses
  %i.bb = icmp slt i32 %i.ba, -126                ; 2 uses
  br i1 %i.bb, label %_ZN4pbrt7FastExpEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = icmp sgt i32 %i.ba, 127
  br i1 %i.bc, label %_ZN4pbrt7FastExpEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = and i32 %i.ax, -2139095041
  %i.be = shl nsw i32 %i.ba, 23
  %i.bf = add nsw i32 %i.be, 1065353216
  %i.bg = or i32 %i.bf, %i.bd
  %i.bh = bitcast i32 %i.bg to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi float [ %i.bh, %bb.e ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.d ]
  %i.bi = fdiv float %.0.i, %sqrt69
  %i.bj = fmul float %sqrt, %i.aa
  %i.bk = fmul float %i.bj, f0x3FB8AA3B           ; 2 uses
  %i.bl = tail call noundef float @llvm.floor.f32(float %i.bk) ; 2 uses
  %i.bm = fsub float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fptosi float %i.bl to i32
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bm, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bo, float f0x3F321004)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bp, float 1.000000e+00)
  %i.br = bitcast float %i.bq to i32              ; 3 uses
  %i.bs = lshr i32 %i.br, 23
  %i.bt = add i32 %i.bn, -127
  %i.bu = add i32 %i.bt, %i.bs                    ; 5 uses
  %i.bv = icmp slt i32 %i.bu, -126                ; 2 uses
  br i1 %i.bv, label %_ZN4pbrt7FastExpEf.exit62, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt7FastExpEf.exit
  %i.bw = icmp sgt i32 %i.bu, 127
  br i1 %i.bw, label %_ZN4pbrt7FastExpEf.exit62, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = and i32 %i.br, -2139095041
  %i.by = shl nsw i32 %i.bu, 23
  %i.bz = add nsw i32 %i.by, 1065353216
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = bitcast i32 %i.ca to float
  br label %_ZN4pbrt7FastExpEf.exit62

_ZN4pbrt7FastExpEf.exit62:                        ; preds = %_ZN4pbrt7FastExpEf.exit, %bb.f, %bb.g
  %.0.i61 = phi float [ %i.cb, %bb.g ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit ], [ +inf, %bb.f ]
  %i.cc = fdiv float %.0.i61, %sqrt
  %i.cd = fsub float %i.bi, %i.cc
  %i.ce = fmul float %i.z, %i.cd
  %i.cf = fmul float %sqrt.i, %sqrt69
  %i.cg = fadd float %i.cf, 1.000000e+00
  %i.ch = fmul float %i.aj, %i.cg
  br i1 %i.bb, label %_ZN4pbrt7FastExpEf.exit64, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt7FastExpEf.exit62
  %i.ci = icmp sgt i32 %i.ba, 127
  br i1 %i.ci, label %_ZN4pbrt7FastExpEf.exit64, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = and i32 %i.ax, -2139095041
  %i.ck = shl nsw i32 %i.ba, 23
  %i.cl = add nsw i32 %i.ck, 1065353216
  %i.cm = or i32 %i.cl, %i.cj
  %i.cn = bitcast i32 %i.cm to float
  br label %_ZN4pbrt7FastExpEf.exit64

_ZN4pbrt7FastExpEf.exit64:                        ; preds = %_ZN4pbrt7FastExpEf.exit62, %bb.h, %bb.i
  %.0.i63 = phi float [ %i.cn, %bb.i ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit62 ], [ +inf, %bb.h ]
  %i.co = fmul float %i.ch, %.0.i63
  %i.cp = fmul float %sqrt69, %sqrt69
  %i.cq = fmul float %sqrt69, %i.cp
  %i.cr = fdiv float %i.co, %i.cq
  %i.cs = fmul float %sqrt.i, %sqrt
  %i.ct = fadd float %i.cs, 1.000000e+00
  %i.cu = fmul float %i.ak, %i.ct
  br i1 %i.bv, label %_ZN4pbrt7FastExpEf.exit66, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt7FastExpEf.exit64
  %i.cv = icmp sgt i32 %i.bu, 127
  br i1 %i.cv, label %_ZN4pbrt7FastExpEf.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = and i32 %i.br, -2139095041
  %i.cx = shl nsw i32 %i.bu, 23
  %i.cy = add nsw i32 %i.cx, 1065353216
  %i.cz = or i32 %i.cy, %i.cw
  %i.da = bitcast i32 %i.cz to float
  br label %_ZN4pbrt7FastExpEf.exit66

_ZN4pbrt7FastExpEf.exit66:                        ; preds = %_ZN4pbrt7FastExpEf.exit64, %bb.j, %bb.k
  %.0.i65 = phi float [ %i.da, %bb.k ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit64 ], [ +inf, %bb.j ]
  %i.db = fmul float %i.cu, %.0.i65
  %i.dc = fmul float %sqrt, %sqrt
  %i.dd = fmul float %sqrt, %i.dc
  %i.de = fdiv float %i.db, %i.dd
  %i.df = fsub float %i.cr, %i.de
  %i.dg = fmul float %i.df, f0x3DA2F983
  %i.dh = fmul float %i.u, %i.ce
  %i.di = fmul float %i.w, %i.dg
  %i.dj = fadd float %i.dh, %i.di
  %i.dk = fadd float %sqrt69, %i.aj
  %i.dl = fmul float %i.ab, %i.dk
  %i.dm = fmul float %i.dl, f0x3FB8AA3B           ; 2 uses
  %i.dn = tail call noundef float @llvm.floor.f32(float %i.dm) ; 2 uses
  %i.do = fsub float %i.dm, %i.dn                 ; 3 uses
  %i.dp = fptosi float %i.dn to i32
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.do, float f0x3DA00AC9, float f0x3E679A0B)
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.do, float %i.dq, float f0x3F321004)
  %i.ds = tail call noundef float @llvm.fma.f32(float %i.do, float %i.dr, float 1.000000e+00)
  %i.dt = bitcast float %i.ds to i32              ; 2 uses
  %i.du = lshr i32 %i.dt, 23
  %i.dv = add i32 %i.dp, -127
  %i.dw = add i32 %i.dv, %i.du                    ; 3 uses
  %i.dx = icmp slt i32 %i.dw, -126
  br i1 %i.dx, label %_ZN4pbrt7FastExpEf.exit68, label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt7FastExpEf.exit66
  %i.dy = icmp sgt i32 %i.dw, 127
  br i1 %i.dy, label %_ZN4pbrt7FastExpEf.exit68, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = and i32 %i.dt, -2139095041
  %i.ea = shl nsw i32 %i.dw, 23
  %i.eb = add nsw i32 %i.ea, 1065353216
  %i.ec = or i32 %i.eb, %i.dz
  %i.ed = bitcast i32 %i.ec to float
  br label %_ZN4pbrt7FastExpEf.exit68

_ZN4pbrt7FastExpEf.exit68:                        ; preds = %_ZN4pbrt7FastExpEf.exit66, %bb.l, %bb.m
  %.0.i67 = phi float [ %i.ed, %bb.m ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit66 ], [ +inf, %bb.l ]
  %i.ee = fsub float 1.000000e+00, %.0.i67
  %i.ef = fmul float %i.d, %i.ee
  %i.eg = fmul float %i.d, %i.ef
  %i.eh = fmul float %i.dj, %i.eg
  %i.ei = fadd float %.071, %i.eh                 ; 2 uses
  %i.ej = add nuw nsw i32 %.06070, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !81
}

declare noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef) local_unnamed_addr #1

declare noundef float @_ZN4pbrt14FresnelMoment2Ef(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define dso_local noundef float @_ZN4pbrt15BeamDiffusionSSEfffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd float %0, %1                        ; 3 uses
  %i.b = fdiv float %0, %i.a
  %i.c = fmul float %3, %3
  %i.d = fadd float %i.c, -1.000000e+00           ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.e, float %i.d, float 0.000000e+00
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i)
  %i.f = fmul float %4, %sqrt.i                   ; 2 uses
  %i.g = fmul float %4, %4
  %i.h = fneg float %i.a
  %i.i = fpext float %2 to double                 ; 2 uses
  %i.j = fcmp olt double %i.i, f0xBFEFAE147AE147AE
  %i.k = fcmp ogt double %i.i, f0x3FEFAE147AE147AE
  %spec.select.i.i = select i1 %i.k, float 9.900000e-01, float %2
  %.0.i.i = select i1 %i.j, float -9.900000e-01, float %spec.select.i.i ; 3 uses
  %i.l = fmul float %.0.i.i, %.0.i.i              ; 2 uses
  %i.m = fadd float %i.l, 1.000000e+00
  %i.n = fmul float %.0.i.i, 2.000000e+00
  %i.o = fsub float 1.000000e+00, %i.l
  %i.p = fmul float %i.o, f0x3DA2F983
  %i.q = fdiv float 1.000000e+00, %3
  br label %bb.c

bb.b:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  %i.r = fdiv float %i.ch, 1.000000e+02
  ret float %i.r

bb.c:                                             ; preds = %bb.a, %_ZN4pbrt12FrDielectricEff.exit
  %.032 = phi i32 [ 0, %bb.a ], [ %i.ci, %_ZN4pbrt12FrDielectricEff.exit ] ; 2 uses
  %.02631 = phi float [ 0.000000e+00, %bb.a ], [ %i.ch, %_ZN4pbrt12FrDielectricEff.exit ]
  %i.s = uitofp nneg i32 %.032 to float
  %i.t = fadd float %i.s, 5.000000e-01
  %i.u = fdiv float %i.t, 1.000000e+02
  %i.v = fsub float 1.000000e+00, %i.u
  %i.w = tail call noundef float @logf(float noundef %i.v) #23
  %i.x = fdiv float %i.w, %i.a
  %i.y = fsub float %i.f, %i.x                    ; 3 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fadd float %i.g, %i.z
  %sqrt = tail call noundef float @sqrtf(float noundef %i.aa) #23 ; 4 uses
  %i.ab = fdiv float %i.y, %sqrt                  ; 4 uses
  %i.ac = fadd float %i.f, %sqrt
  %i.ad = fmul float %i.ac, %i.h
  %i.ae = fmul float %i.ad, f0x3FB8AA3B           ; 2 uses
  %i.af = tail call noundef float @llvm.floor.f32(float %i.ae) ; 2 uses
  %i.ag = fsub float %i.ae, %i.af                 ; 3 uses
  %i.ah = fptosi float %i.af to i32
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ag, float f0x3DA00AC9, float f0x3E679A0B)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ai, float f0x3F321004)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.aj, float 1.000000e+00)
  %i.al = bitcast float %i.ak to i32              ; 2 uses
  %i.am = lshr i32 %i.al, 23
  %i.an = add i32 %i.ah, -127
  %i.ao = add i32 %i.an, %i.am                    ; 3 uses
  %i.ap = icmp slt i32 %i.ao, -126
  br i1 %i.ap, label %_ZN4pbrt7FastExpEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp sgt i32 %i.ao, 127
  br i1 %i.aq, label %_ZN4pbrt7FastExpEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = and i32 %i.al, -2139095041
  %i.as = shl nsw i32 %i.ao, 23
  %i.at = add nsw i32 %i.as, 1065353216
  %i.au = or i32 %i.at, %i.ar
  %i.av = bitcast i32 %i.au to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi float [ %i.av, %bb.e ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.d ]
  %i.aw = fmul float %i.b, %.0.i
  %i.ax = fmul float %sqrt, %sqrt
  %i.ay = fdiv float %i.aw, %i.ax
  %i.az = fmul float %i.n, %i.ab
  %i.ba = fadd float %i.m, %i.az                  ; 3 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bb, float %i.ba, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.bc = fmul float %i.ba, %sqrt.i.i
  %i.bd = fdiv float %i.p, %i.bc
  %i.be = fmul float %i.bd, %i.ay
  %i.bf = fneg float %i.ab                        ; 2 uses
  %i.bg = fcmp ogt float %i.ab, 1.000000e+00
  %i.bh = fcmp ogt float %i.bf, 1.000000e+00
  %..i.i = select i1 %i.bh, float 1.000000e+00, float %i.bf
  %.0.i.i27 = select i1 %i.bg, float -1.000000e+00, float %..i.i ; 3 uses
  %i.bi = fcmp olt float %.0.i.i27, 0.000000e+00  ; 2 uses
  %i.bj = fneg float %.0.i.i27
  %.025.i = select i1 %i.bi, float %i.q, float %3 ; 4 uses
  %.024.i = select i1 %i.bi, float %i.bj, float %.0.i.i27 ; 5 uses
  %i.bk = fmul float %.024.i, %.024.i
  %i.bl = fsub float 1.000000e+00, %i.bk
  %i.bm = fmul float %.025.i, %.025.i
  %i.bn = fdiv float %i.bl, %i.bm                 ; 2 uses
  %i.bo = fcmp ult float %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.f, label %_ZN4pbrt12FrDielectricEff.exit

bb.f:                                             ; preds = %_ZN4pbrt7FastExpEf.exit
  %i.bp = fsub float 1.000000e+00, %i.bn          ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  %.sroa.speculated.i.i29 = select i1 %i.bq, float %i.bp, float 0.000000e+00
  %sqrt.i.i30 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i29) ; 3 uses
  %i.br = fmul float %.025.i, %.024.i             ; 2 uses
  %i.bs = fsub float %i.br, %sqrt.i.i30
  %i.bt = fadd float %i.br, %sqrt.i.i30
  %i.bu = fdiv float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fmul float %.025.i, %sqrt.i.i30         ; 2 uses
  %i.bw = fsub float %.024.i, %i.bv
  %i.bx = fadd float %.024.i, %i.bv
  %i.by = fdiv float %i.bw, %i.bx                 ; 2 uses
  %i.bz = fmul float %i.bu, %i.bu
  %i.ca = fmul float %i.by, %i.by
  %i.cb = fadd float %i.bz, %i.ca
  %i.cc = fmul float %i.cb, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %_ZN4pbrt7FastExpEf.exit, %bb.f
  %.0.i28 = phi float [ %i.cc, %bb.f ], [ 1.000000e+00, %_ZN4pbrt7FastExpEf.exit ]
  %i.cd = fsub float 1.000000e+00, %.0.i28
  %i.ce = fmul float %i.be, %i.cd
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.cg = fmul float %i.cf, %i.ce
  %i.ch = fadd float %.02631, %i.cg               ; 2 uses
  %i.ci = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt26ComputeBeamDiffusionBSSRDFEffPNS_11BSSRDFTableE(float noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.6", align 8   ; 11 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  store float %0, ptr %i.a, align 4, !tbaa !24
  store float %1, ptr %i.b, align 4, !tbaa !24
  store ptr %2, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 11 uses
  store <2 x float> <float 0.000000e+00, float 2.500000e-03>, ptr %i.e, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 2
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.e, i64 4
  %load_initial = load float, ptr %scevgep, align 4 ; 2 uses
  %i.i = add i64 %i.g, -2                         ; 2 uses
  %i.j = add i64 %i.g, -3
  %xtraiter = and i64 %i.i, 7                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 7
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, -8
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi float [ %load_initial, %.lr.ph.preheader ], [ %i.bp, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi float [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.m, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.l = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.m = fmul float %store_forwarded.epil, 1.200000e+00 ; 2 uses
  store float %i.m, ptr %i.l, align 4, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !83

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 7 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %.preheader
  %i.p = add i64 %i.o, -1
  %i.q = uitofp i64 %i.p to float                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph19
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.t = mul <8 x i32> %vec.ind, splat (i32 -8)
  %i.u = sitofp <8 x i32> %i.t to <8 x float>
  %i.v = fdiv <8 x float> %i.u, %broadcast.splat
  %i.w = fmul <8 x float> %i.v, splat (float f0x3FB8AA3B) ; 2 uses
  %i.x = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.w) ; 2 uses
  %i.y = fsub <8 x float> %i.w, %i.x              ; 3 uses
  %i.z = fptosi <8 x float> %i.x to <8 x i32>
  %i.aa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.y, <8 x float> splat (float f0x3DA00AC9), <8 x float> splat (float f0x3E679A0B))
  %i.ab = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.y, <8 x float> %i.aa, <8 x float> splat (float f0x3F321004))
  %i.ac = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.y, <8 x float> %i.ab, <8 x float> splat (float 1.000000e+00))
  %i.ad = bitcast <8 x float> %i.ac to <8 x i32>  ; 2 uses
  %i.ae = lshr <8 x i32> %i.ad, splat (i32 23)
  %i.af = add <8 x i32> %i.z, splat (i32 -127)
  %i.ag = add <8 x i32> %i.af, %i.ae              ; 3 uses
  %i.ah = icmp sgt <8 x i32> %i.ag, splat (i32 -127)
  %i.ai = add <8 x i32> %i.ag, splat (i32 126)
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 254)
  %i.ak = and <8 x i32> %i.ad, splat (i32 -2139095041)
  %i.al = shl nsw <8 x i32> %i.ag, splat (i32 23)
  %i.am = add nsw <8 x i32> %i.al, splat (i32 1065353216)
  %i.an = or <8 x i32> %i.am, %i.ak
  %i.ao = bitcast <8 x i32> %i.an to <8 x float>
  %predphi = select <8 x i1> %i.ah, <8 x float> splat (float +inf), <8 x float> zeroinitializer
  %predphi31 = select <8 x i1> %i.aj, <8 x float> %i.ao, <8 x float> %predphi
  %i.ap = fsub <8 x float> splat (float 1.000000e+00), %predphi31
  %i.aq = fdiv <8 x float> %i.ap, splat (float f0x3F7FEA04)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  store <8 x float> %i.aq, ptr %i.ar, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !84

end_hunk_0
begin_hunk_1_@_ZN4pbrt11BSSRDFTableC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.jt = load ptr, ptr %i.in, align 8, !tbaa !49 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !47
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull %.pre.i.i.i69, i64 noundef %i.js, i64 noundef 4)
          to label %.lr.ph.i.i75 unwind label %bb.i, !inline_history !95

.lr.ph.i.i.i70:                                   ; preds = %.lr.ph.i.i.i70.prol.loopexit, %.lr.ph.i.i.i70
  %indvars.iv.i.i.i71 = phi i64 [ %indvars.iv.next.i.i.i72.7, %.lr.ph.i.i.i70 ], [ %indvars.iv.i.i.i71.unr, %.lr.ph.i.i.i70.prol.loopexit ] ; 10 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.i.i71
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.i.i.i71
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !24
  store float %i.jz, ptr %i.jx, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72 = add nuw nsw i64 %indvars.iv.i.i.i71, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !24
  store float %i.kc, ptr %i.ka, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.1 = add nuw nsw i64 %indvars.iv.i.i.i71, 2 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.1
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.1
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !24
  store float %i.kf, ptr %i.kd, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.2 = add nuw nsw i64 %indvars.iv.i.i.i71, 3 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.2
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.2
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !24
  store float %i.ki, ptr %i.kg, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.3 = add nuw nsw i64 %indvars.iv.i.i.i71, 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.3
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.3
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !24
  store float %i.kl, ptr %i.kj, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.4 = add nuw nsw i64 %indvars.iv.i.i.i71, 5 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.4
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.4
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !24
  store float %i.ko, ptr %i.km, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.5 = add nuw nsw i64 %indvars.iv.i.i.i71, 6 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.5
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.5
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !24
  store float %i.kr, ptr %i.kp, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.6 = add nuw nsw i64 %indvars.iv.i.i.i71, 7 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i72.6
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i69, i64 %indvars.iv.next.i.i.i72.6
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !24
  store float %i.ku, ptr %i.ks, align 4, !tbaa !24
  %indvars.iv.next.i.i.i72.7 = add nuw nsw i64 %indvars.iv.i.i.i71, 8 ; 2 uses
  %exitcond.not.i.i.i73.7 = icmp eq i64 %indvars.iv.next.i.i.i72.7, %.pr.i.i67
  br i1 %exitcond.not.i.i.i73.7, label %._crit_edge.thread.i.i.i74, label %.lr.ph.i.i.i70, !llvm.loop !111

.lr.ph.i.i75:                                     ; preds = %._crit_edge.thread.i.i.i74, %._crit_edge.i.i.i77
  store i64 %i.du, ptr %i.ip, align 8, !tbaa !48
  store ptr %i.iv, ptr %i.io, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iv, i8 0, i64 %i.ir, i1 false), !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.lr.ph.i.i75, %bb.d
  %i.kv = phi ptr [ %i.gi, %.thread ], [ %i.iq, %.lr.ph.i.i75 ], [ %i.iq, %bb.d ]
  store i64 %i.du, ptr %i.kv, align 8, !tbaa !31
  ret void

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i24, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i16
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i40, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i32
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i57, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i49
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i74, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i66
  %i.kz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gc) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.kz, %bb.i ], [ %i.ky, %bb.h ]
  tail call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ds) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.kx, %bb.g ]
  tail call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bj) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.kw, %bb.f ]
  tail call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = shl i64 %i.e, 2
  %i.g = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit unwind label %bb.c, !inline_history !114

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt11BSSRDFTable8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17, !alias.scope !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !20, !alias.scope !117
  store i8 0, ptr %i.e, align 8, !tbaa !21, !alias.scope !117
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEJS9_S9_S9_S9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZN4pbrt12StringPrintfIJRKN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEES8_S8_S8_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !22, !alias.scope !117 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !21, !alias.scope !117
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.g

_ZN4pbrt12StringPrintfIJRKN4pstd6vectorIfNS1_3pmr21polymorphic_allocatorIfEEEES8_S8_S8_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #5 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  tail call void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  store i64 0, ptr %i.c, align 8, !tbaa !50
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef, i64 noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.d = icmp slt i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt8functionIFvlEEclEl.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.j, %_ZNKSt8functionIFvlEEclEl.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !121, !nonnull !51, !align !52 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.05.i.i.i, ptr %i.a, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFvlEEclEl.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFvlEEclEl.exit.i.i.i:             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = add i64 %.05.i.i.i, 1                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rIvRZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !119

_ZSt10__invoke_rIvRZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit: ; preds = %_ZNKSt8functionIFvlEEclEl.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_, ptr %0, align 8, !tbaa !54
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !45
  store i64 %i.a, ptr %0, align 8, !tbaa !45
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJRKfRKNS_7Normal3IfEERKNS_15SampledSpectrumESE_RKNS_11BSSRDFTableEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %7) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 42, i64 noundef 0) #23
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 115, i64 noundef 0) #23
  %.not21 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 100, i64 noundef 0) #23
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i64 %i.f, -1
  br i1 %.not22, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.i = load float, ptr %2, align 4, !tbaa !130, !noalias !131
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !132, !noalias !131
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !133, !noalias !131
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, float noundef %i.i, float noundef %i.k, float noundef %i.m)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.n = load ptr, ptr %8, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.r = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !21
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ac = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ad, ptr %12, align 8, !tbaa !17, !alias.scope !136
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !20, !alias.scope !136
  store i8 0, ptr %i.ad, align 8, !tbaa !21, !alias.scope !136
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59, !noalias !136 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !136 ; 2 uses
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  %.08.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ai ; 2 uses
end_hunk_1
