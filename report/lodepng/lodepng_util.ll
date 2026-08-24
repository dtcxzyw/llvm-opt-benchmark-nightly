Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LodePNGDecompressSettings = type { i32, i32, i64, ptr, ptr, ptr }
%struct.LodePNGInfo = type { i32, i32, i32, %struct.LodePNGColorMode, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, %struct.LodePNGTime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x ptr], [3 x i64] }
%struct.LodePNGColorMode = type { i32, i32, ptr, i64, i32, i32, i32, i32 }
%struct.LodePNGTime = type { i32, i32, i32, i32, i32, i32 }
%"class.lodepng::State" = type { %struct.LodePNGState }
%struct.LodePNGState = type { %struct.LodePNGDecoderSettings, %struct.LodePNGEncoderSettings, %struct.LodePNGColorMode, %struct.LodePNGInfo, i32 }
%struct.LodePNGDecoderSettings = type { %struct.LodePNGDecompressSettings, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.LodePNGEncoderSettings = type { %struct.LodePNGCompressSettings, i32, i32, i32, ptr, i32, i32, i32 }
%struct.LodePNGCompressSettings = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<std::vector<unsigned char>, std::allocator<std::vector<unsigned char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<unsigned char>, std::allocator<std::vector<unsigned char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<unsigned char>, std::allocator<std::vector<unsigned char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<unsigned char>, std::allocator<std::vector<unsigned char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.lodepng::LodePNGICC" = type { i32, i32, i32, i32, [3 x float], i32, [9 x float], i32, [3 x float], i32, [3 x float], [3 x float], [3 x float], i32, [3 x %"struct.lodepng::LodePNGICCCurve"] }
%"struct.lodepng::LodePNGICCCurve" = type { i32, ptr, i64, float, float, float, float, float, float, float }

$_ZNSt6vectorIhSaIhEEaSERKS1_ = comdat any

$_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm = comdat any

$_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm = comdat any

@lodepng_default_decompress_settings = external global %struct.LodePNGDecompressSettings, align 8
@_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IX = internal unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IY = internal unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DX = internal unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DY = internal unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column0 = private unnamed_addr constant [8 x i32] [i32 0, i32 6, i32 4, i32 6, i32 2, i32 6, i32 4, i32 6], align 16
@__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column1 = private unnamed_addr constant [8 x i32] [i32 5, i32 6, i32 5, i32 6, i32 5, i32 6, i32 5, i32 6], align 16
@__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift0 = private unnamed_addr constant [8 x i32] [i32 3, i32 1, i32 2, i32 1, i32 3, i32 1, i32 2, i32 1], align 16
@__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift1 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@_ZN7lodepng17lodepng_flt_zero_E = local_unnamed_addr global float 0.000000e+00, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"chad\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rTRC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"gTRC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"bTRC\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"kTRC\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"curv\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"para\00", align 1
@_ZZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfoE4srgb = internal unnamed_addr constant [9 x float] [float f0x3ED32D7C, float f0x3EB71437, float f0x3E38C49C, float f0x3E59C6ED, float f0x3F371437, float 7.217500e-02, float 1.933390e-02, float 1.191920e-01, float f0x3F734721], align 16
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define void @_ZN7lodepng16getPNGHeaderInfoERKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.LodePNGInfo) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.lodepng::State", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %2)
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select = select i1 %i.f, ptr null, ptr %i.c
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = invoke noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef %spec.select, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %i.k, i64 424, i1 false), !tbaa.struct !11
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640)) unnamed_addr #2

declare noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng12getChunkInfoERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERS0_ImSaImEERKS0_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [5 x i8], align 1                 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = icmp ult ptr %i.g, %i.e
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp sgt i64 %i.k, 7
  %i.m = and i1 %i.i, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.01943 = phi ptr [ %i.g, %.lr.ph ], [ %i.ce, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.c, ptr noundef %.01943)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.n, ptr %3, align 8, !tbaa !21
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.v, ptr %i.b, align 8, !tbaa !15
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !23
  %i.y = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.y, ptr %i.n, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.n, %bb.b ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.c, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !25
  %i.ac = load ptr, ptr %3, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %.not = icmp eq i64 %i.ae, 4
  %i.af = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.n
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.ah = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = call noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.01943)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.p, ptr %4, align 8, !tbaa !21
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.al, ptr %i.a, align 8, !tbaa !15
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i27, label %._crit_edge.i.i26

.noexc.i27:                                       ; preds = %bb.f
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !23
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.ao, ptr %i.p, align 8, !tbaa !20
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %.noexc.i27, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc.i27 ], [ %i.p, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i26
  %i.aq = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.c, i64 %i.al, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i26
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !25
  %i.as = load ptr, ptr %4, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !26  ; 6 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !21
  %i.ax = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.p
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.q, align 8, !tbaa !25  ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !23
  %i.bc = load i64, ptr %i.p, align 8, !tbaa !20
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !20
  %.pre = load i64, ptr %i.q, align 8, !tbaa !25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.az, %bb.k ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !25
  store ptr %i.p, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %i.q, align 8, !tbaa !25
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %i.bg, ptr %i.r, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre44 = load ptr, ptr %4, align 8, !tbaa !23  ; 2 uses
  %i.bh = icmp eq ptr %.pre44, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !20
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %.pre44, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bk = zext i32 %i.ak to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !30  ; 4 uses
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !33
  %.not.i.i34 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.t, align 8, !tbaa !30
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bo = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.o, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #31 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  store i64 %i.bk, ptr %i.ca, align 8, !tbaa !15
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.p, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bz, ptr %1, align 8, !tbaa !34
  store ptr %i.cc, ptr %i.t, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.u, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.m, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ce = call noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.01943, ptr noundef nonnull %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cf = icmp ult ptr %i.ce, %i.e
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.h, %i.cg
  %i.ci = icmp sgt i64 %i.ch, 7
  %i.cj = and i1 %i.cf, %i.ci
  br i1 %i.cj, label %bb.b, label %.loopexit, !llvm.loop !35

bb.r:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.p
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.r
  %i.cn = load i64, ptr %i.p, align 8, !tbaa !20
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  resume { ptr, i32 } %i.ck

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.a, %.critedge
  %.2 = phi i32 [ 1, %.critedge ], [ 0, %bb.a ], [ 0, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  ret i32 %.2
}

declare void @_Z18lodepng_chunk_typePcPKh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng9getChunksEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS0_IS0_IhSaIhEESaISB_EERKSB_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [5 x i8], align 1                 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = icmp ult ptr %i.g, %i.e
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.o = sub i64 %i.h, %i.n
  %i.p = icmp sgt i64 %i.o, 7
  %i.q = and i1 %i.m, %i.p
  br i1 %i.q, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0
  %i.r = phi i64 [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ %i.n, %.preheader ]
  %.02592 = phi i32 [ %.227.jt0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ 0, %.preheader ] ; 2 uses
  %.02891 = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ], [ %i.g, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.c, ptr noundef %.02891)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.i, ptr %3, align 8, !tbaa !21
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.s, ptr %i.b, align 8, !tbaa !15
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !23
  %i.v = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.v, ptr %i.i, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.i, %.lr.ph ] ; 2 uses
  switch i64 %i.s, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.x, ptr %i.w, align 1, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.c, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !25
  %i.z = load ptr, ptr %3, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !25
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1

bb.d:                                             ; preds = %bb.c
  %i.ac = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.02891, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.f       ; 6 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !25  ; 5 uses
  %cond = icmp eq i64 %i.ad, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %3, align 8, !tbaa !23    ; 4 uses
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = icmp ne i32 %i.af, 1380206665
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

bb.f:                                             ; preds = %bb.k, %.noexc.i.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = load i32, ptr %i.ae, align 1
  %i.al = icmp ne i32 %i.ak, 1163152464
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %i.ao = load i32, ptr %i.ae, align 1
  %i.ap = icmp ne i32 %i.ao, 1413563465
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59
  %i.as = load i32, ptr %i.ae, align 1
  %i.at = icmp ne i32 %i.as, 1145980233
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60
  %.not35 = icmp ult ptr %i.ac, %i.e
  br i1 %.not35, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61
  %i.aw = zext nneg i32 %.02592 to i64            ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  %i.bd = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !15
  %i.be = icmp ugt i64 %i.ad, 15
  br i1 %i.be, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc45 unwind label %bb.f   ; 2 uses

.noexc45:                                         ; preds = %.noexc.i.i
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !23
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc45, %bb.h
  %i.bh = phi ptr [ %i.bf, %.noexc45 ], [ %i.bc, %bb.h ] ; 2 uses
  switch i64 %i.ad, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !20
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bd, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !25
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.bo, ptr %i.ay, align 8, !tbaa !26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.f

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bp = ptrtoint ptr %i.ac to i64
  %i.bq = sub i64 %i.bp, %i.r                     ; 6 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.l, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #30
          to label %.noexc.i47 unwind label %bb.p

.noexc.i47:                                       ; preds = %bb.l
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.not.i.i.i = icmp eq ptr %i.ac, %.02891
  br i1 %.not.i.i.i, label %bb.n, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #31
          to label %.noexc4.i unwind label %.thread ; 6 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  store ptr %i.bs, ptr %4, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq ; 3 uses
  store ptr %i.bt, ptr %i.k, align 8, !tbaa !39
  %i.bu = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.bu, label %bb.m, label %bb.o, !prof !40

bb.m:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %.02891, i64 %i.bq, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr null, i64 %i.bq ; 2 uses
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !39
  br label %bb.r

bb.o:                                             ; preds = %.noexc4.i
  %i.bw = load i8, ptr %.02891, align 1, !tbaa !20
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !20
  br label %bb.r

.thread:                                          ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i5.i, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %5 = load ptr, ptr %i.k, align 8, !tbaa !39
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %.pre to i64
  %8 = sub i64 %6, %7
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %8) #29
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bx = phi ptr [ %i.bs, %bb.m ], [ null, %bb.n ], [ %i.bs, %bb.o ]
  %i.by = phi ptr [ %i.bt, %bb.m ], [ %i.bv, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  store ptr %i.by, ptr %i.l, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.aw ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.cb, %i.cd
  br i1 %.not.i.i, label %bb.s, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.r
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.by, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.by, ptr %i.cf, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit unwind label %bb.u

_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s
  %.pr = load ptr, ptr %4, align 8, !tbaa !37     ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.pr to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ck) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0

bb.u:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i51, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #29
  br label %.body

.body:                                            ; preds = %.thread, %bb.v, %bb.u, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.p ], [ %i.cl, %bb.v ], [ %lpad.loopexit.split-lp, %bb.q ], [ %i.cl, %bb.u ], [ %lpad.loopexit, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59
  %.227.jt0 = phi i32 [ %.02592, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59 ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.i
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61
  %i.ct = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.i
  br i1 %i.cu, label %.loopexit64.sink.split, label %.loopexit64.sink.split.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60
  %i.cv = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.i
  br i1 %i.cw, label %.loopexit64.sink.split, label %.loopexit64.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0
  %i.cx = load i64, ptr %i.i, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cz = icmp ult ptr %i.ac, %i.e
  %i.da = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.db = sub i64 %i.h, %i.da
  %i.dc = icmp sgt i64 %i.db, 7
  %i.dd = and i1 %i.cz, %i.dc
  br i1 %i.dd, label %.lr.ph, label %.loopexit64

bb.w:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aj, %bb.f ]
  %i.de = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.i
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  resume { ptr, i32 } %.pn.pn

.loopexit64.sink.split.sink.split:                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1
  %.sink = phi ptr [ %i.ct, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ %i.cv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ]
  %.232.ph.ph = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ]
  %i.di = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dj) #29
  br label %.loopexit64.sink.split

.loopexit64.sink.split:                           ; preds = %.loopexit64.sink.split.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1
  %.232.ph = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ], [ %.232.ph.ph, %.loopexit64.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit64

.loopexit64:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0, %.preheader, %.loopexit64.sink.split
  %.232 = phi i32 [ %.232.ph, %.loopexit64.sink.split ], [ 0, %.preheader ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ]
  ret i32 %.232
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng12insertChunksERSt6vectorIhSaIhEEPKS0_IS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [5 x i8], align 1                 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::vector", align 8       ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.d
  %i.i = ptrtoint ptr %i.f to i64                 ; 5 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp sgt i64 %i.j, 7
  %i.l = and i1 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %invariant.op = sub i64 8, %i.i
  %invariant.op238 = sub i64 8, %i.i
  %invariant.op239 = sub i64 8, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.o = phi i64 [ %i.i, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 3 uses
  %.081173 = phi ptr [ %i.f, %.lr.ph ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %.083172 = phi i64 [ 0, %.lr.ph ], [ %.285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 5 uses
  %.086171 = phi i64 [ 0, %.lr.ph ], [ %.187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 4 uses
  %.090170 = phi i64 [ 0, %.lr.ph ], [ %.191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.b, ptr noundef %.081173)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.m, ptr %2, align 8, !tbaa !21
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.p, ptr %i.a, align 8, !tbaa !15
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.r, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.s, ptr %i.m, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.u, ptr %i.t, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.b, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  store i64 %i.v, ptr %i.n, align 8, !tbaa !25
  %i.w = load ptr, ptr %2, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.y = load i64, ptr %i.n, align 8, !tbaa !25
  %.not = icmp eq i64 %i.y, 4
  %i.z = load ptr, ptr %2, align 8, !tbaa !23     ; 5 uses
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

bb.f:                                             ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 1
  %i.ac = icmp ne i32 %i.ab, 1163152464
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = icmp eq i64 %.083172, 0
  %.reass.reass = add i64 %i.o, %invariant.op239
  %spec.select185 = select i1 %i.af, i64 %.reass.reass, i64 %.083172
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.m
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !20
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.al = load i32, ptr %i.z, align 1
  %i.am = icmp ne i32 %i.al, 1413563465
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ap = icmp eq i64 %.083172, 0
  %.reass.reass.reass = add i64 %i.o, %invariant.op238 ; 2 uses
  %.184 = select i1 %i.ap, i64 %.reass.reass.reass, i64 %.083172
  %i.aq = icmp eq i64 %.086171, 0
  %spec.select = select i1 %i.aq, i64 %.reass.reass.reass, i64 %.086171
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ar = load i32, ptr %i.z, align 1
end_hunk_0
begin_hunk_1_@_ZN7lodepng12insertChunksERSt6vectorIhSaIhEEPKS0_IS2_SaIS2_EE:bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge181:                                   ; preds = %bb.o, %.preheader153
  %i.cu = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.cv = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %.086.lcssa
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %.090.lcssa
  %i.cy = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dc, ptr %i.cw, ptr %i.cx)
          to label %.preheader unwind label %bb.q

.preheader:                                       ; preds = %._crit_edge181
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !42
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 2 uses
  %.not191 = icmp eq ptr %i.df, %i.dg
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

bb.n:                                             ; preds = %._crit_edge178
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph180:                                        ; preds = %.preheader153, %bb.o
  %i.di = phi ptr [ %i.dv, %bb.o ], [ %i.by, %.preheader153 ]
  %.0101179 = phi i64 [ %i.dt, %bb.o ], [ 0, %.preheader153 ] ; 2 uses
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.0101179 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.do = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ds, ptr %i.dl, ptr %i.dn)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph180
  %i.dt = add nuw i64 %.0101179, 1                ; 2 uses
  %i.du = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.dv = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 24
  %i.ea = icmp ult i64 %i.dt, %i.dz
  br i1 %i.ea, label %.lr.ph180, label %._crit_edge181, !llvm.loop !49

bb.p:                                             ; preds = %.lr.ph180
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge184:                                   ; preds = %bb.r, %.preheader
  %i.ec = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.ed = load ptr, ptr %0, align 8, !tbaa !8
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %.090.lcssa
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.eg = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.eh = ptrtoint ptr %i.ec to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ek, ptr %i.ee, ptr %i.ef)
          to label %bb.t unwind label %bb.w

bb.q:                                             ; preds = %._crit_edge181
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph183:                                        ; preds = %.preheader, %bb.r
  %i.em = phi ptr [ %i.ez, %bb.r ], [ %i.dg, %.preheader ]
  %.089182 = phi i64 [ %i.ex, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.en = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.089182 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8
  %i.es = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.ev
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ew, ptr %i.ep, ptr %i.er)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph183
  %i.ex = add nuw i64 %.089182, 1                 ; 2 uses
  %i.ey = load ptr, ptr %i.de, align 8, !tbaa !42
  %i.ez = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = sdiv exact i64 %i.fc, 24
  %i.fe = icmp ult i64 %i.ex, %i.fd
  br i1 %i.fe, label %.lr.ph183, label %._crit_edge184, !llvm.loop !50

bb.s:                                             ; preds = %.lr.ph183
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge184
  %i.fg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.fh = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !39
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.aa

bb.w:                                             ; preds = %._crit_edge184
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.m ], [ %i.eb, %bb.p ], [ %i.ff, %bb.s ], [ %i.fo, %bb.x ], [ %i.fn, %bb.w ], [ %i.el, %bb.q ], [ %i.dh, %bb.n ], [ %i.bz, %bb.k ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIhSaIhEED2Ev.exit127, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !39
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit127

_ZNSt6vectorIhSaIhEED2Ev.exit127:                 ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ab

.critedge:                                        ; preds = %bb.e
  %i.fv = icmp eq ptr %i.z, %i.m
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %.critedge
  %i.fw = load i64, ptr %i.m, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.fx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.2 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ 0, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  ret i32 %.2

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit127 ]
  resume { ptr, i32 } %.pn104.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = load ptr, ptr %0, align 8, !tbaa !37     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !51

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.q, ptr %i.o, align 1, !tbaa !20
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.f, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !52

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.y, ptr %i.i, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.v, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.i, align 1, !tbaa !20
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ac = load ptr, ptr %1, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !41  ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !37
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !20
  store i8 %i.ap, ptr %i.ad, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.lodepng::State", align 8    ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %i.e = alloca [5 x i8], align 1                 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.f = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  %spec.select = select i1 %i.i, ptr null, ptr %i.f
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef %spec.select, i64 noundef %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.bi

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !8    ; 5 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = icmp ult ptr %i.q, %i.o
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp sgt i64 %i.u, 7
  %i.w = and i1 %i.s, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.z
  %.064155 = phi ptr [ %i.q, %.lr.ph ], [ %i.cl, %bb.z ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  invoke void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.e, ptr noundef %.064155)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.x, ptr %4, align 8, !tbaa !21
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !15
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ae, ptr %4, align 8, !tbaa !23
  %i.af = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.af, ptr %i.x, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.f
  %i.ag = phi ptr [ %i.ae, %.noexc ], [ %i.x, %bb.f ] ; 2 uses
  switch i64 %i.ac, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.e, i64 %i.ac, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !25
  %i.aj = load ptr, ptr %4, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.al = load i64, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %.not94 = icmp eq i64 %i.al, 4
  %i.am = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.x
end_hunk_1
begin_hunk_2_@_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_:bb.a
.noexc109:                                        ; preds = %.noexc.i108
  store ptr %i.av, ptr %5, align 8, !tbaa !23
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.aw, ptr %i.z, align 8, !tbaa !20
  br label %._crit_edge.i.i107

._crit_edge.i.i107:                               ; preds = %.noexc109, %bb.l
  %i.ax = phi ptr [ %i.av, %.noexc109 ], [ %i.z, %bb.l ] ; 2 uses
  switch i64 %i.at, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i107
  %i.ay = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !20
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.e, i64 %i.at, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i107
  %i.az = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.az, ptr %i.aa, align 8, !tbaa !25
  %i.ba = load ptr, ptr %5, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bc = load i64, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4
  %.pre = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  br i1 %i.bd, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %.pre, align 1
  %i.bf = icmp ne i32 %i.be, 1413563465
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.p, %bb.o
  %i.bi = phi i1 [ false, %bb.o ], [ %i.bh, %bb.p ]
  %i.bj = icmp eq ptr %.pre, %i.z
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bk = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !20
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.bi, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.bn = invoke noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef %.064155)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bo = invoke noundef i32 @_Z20lodepng_chunk_lengthPKh(ptr noundef %.064155)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.064155, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.bs = icmp ugt ptr %i.br, %i.o
  br i1 %i.bs, label %.critedge105, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.bu = load ptr, ptr %1, align 8, !tbaa !37
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bp
  %i.bz = icmp ult ptr %i.br, %i.q
  %or.cond = or i1 %i.by, %i.bz
  br i1 %or.cond, label %.critedge105, label %bb.x

bb.u:                                             ; preds = %.noexc.i108
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aa

bb.v:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.cf = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cj, ptr noundef %i.bn, ptr noundef %i.ce)
          to label %.critedge unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.critedge:                                        ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.cl = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.064155, ptr noundef nonnull %i.o)
          to label %bb.z unwind label %bb.j       ; 3 uses

bb.z:                                             ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.cm = icmp ult ptr %i.cl, %i.o
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.r, %i.cn
  %i.cp = icmp sgt i64 %i.co, 7
  %i.cq = and i1 %i.cm, %i.cp
  br i1 %i.cq, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !53

bb.aa:                                            ; preds = %bb.v, %bb.y, %bb.w, %bb.u, %bb.k, %bb.j
  %.pn100 = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %i.ca, %bb.u ], [ %i.cb, %bb.v ], [ %i.ck, %bb.y ], [ %i.cc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.bg

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre170 = load ptr, ptr %3, align 8, !tbaa !8
  %.pre171 = load ptr, ptr %i.ab, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.cr = phi ptr [ %.pre171, %._crit_edge.loopexit ], [ null, %bb.d ] ; 2 uses
  %i.cs = phi ptr [ %.pre170, %._crit_edge.loopexit ], [ null, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ct = icmp eq ptr %i.cs, %i.cr
  %spec.select141 = select i1 %i.ct, ptr null, ptr %i.cs
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = invoke noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %spec.select141, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(40) @lodepng_default_decompress_settings)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %.not87 = icmp eq i32 %i.cx, 0
  br i1 %.not87, label %bb.ad, label %thread-pre-split

bb.ac:                                            ; preds = %bb.ao, %bb.ae, %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ad:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !54
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.de = invoke noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef %i.dc, i32 noundef 1, ptr noundef nonnull %i.dd)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.df = add i64 %i.de, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %.not168 = icmp eq ptr %i.dh, %i.di
  br i1 %.not168, label %.loopexit, label %.lr.ph165

bb.ah:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph165:                                        ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.dk = phi ptr [ %i.el, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %i.di, %bb.ag ]
  %.060163 = phi i64 [ %i.ej, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ 0, %bb.ag ] ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !47    ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.060163 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !41 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph165
  %i.dr = load i8, ptr %i.dm, align 1, !tbaa !20
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !20
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store ptr %i.dt, ptr %i.dn, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.aj:                                            ; preds = %.lr.ph165
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 4 uses
  %i.dv = ptrtoint ptr %i.do to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 8 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775807
  br i1 %i.dy, label %bb.ak, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc118 unwind label %.loopexit.split-lp

.noexc118:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dz = add i64 %.sroa.speculated.i.i.i, %i.dx  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dx
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 9223372036854775807)
  %i.ec = select i1 %i.ea, i64 9223372036854775807, i64 %i.eb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #31
          to label %.noexc119 unwind label %.loopexit144 ; 4 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx ; 2 uses
  %i.ef = load i8, ptr %i.dm, align 1, !tbaa !20
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !20
  %i.eg = icmp sgt i64 %i.dx, 0
  br i1 %i.eg, label %bb.al, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.al:                                            ; preds = %.noexc119
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr align 1 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.al, %.noexc119
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.not.i17.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.ed, ptr %i.dl, align 8, !tbaa !37
  store ptr %i.eh, ptr %i.dn, align 8, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store ptr %i.ei, ptr %i.dp, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.ai
  %i.ej = add i64 %i.df, %.060163                 ; 2 uses
  %i.ek = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.el = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.ej, %i.eo
  br i1 %i.ep, label %.lr.ph165, label %.loopexit, !llvm.loop !64

.loopexit144:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.an:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42 ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = sdiv exact i64 %i.ev, 24                ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 7
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ey = sub nuw nsw i64 7, %i.ew
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ey)
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit unwind label %bb.ac

bb.ap:                                            ; preds = %bb.an
  %.not142 = icmp eq i64 %i.ev, 168
  br i1 %.not142, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 168 ; 3 uses
  %.not.i.i = icmp eq ptr %i.er, %i.ez
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fg, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i ], [ %i.ez, %bb.aq ] ; 3 uses
  %i.fa = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !39
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i: ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, %i.er
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i.i
  store ptr %i.ez, ptr %i.eq, align 8, !tbaa !42
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit:    ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 224
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit, %.loopexit145
  %.058161 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %i.hh, %.loopexit145 ] ; 6 uses
  %.059160 = phi i64 [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm.exit ], [ %.2, %.loopexit145 ] ; 3 uses
  %i.fi = load i32, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IX, i64 %.058161
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !12 ; 2 uses
  %i.fl = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_IY, i64 %.058161
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !12 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DY, i64 %.058161
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !12 ; 3 uses
  %i.fq = xor i32 %i.fn, -1
  %i.fr = add i32 %i.fl, %i.fq
  %i.fs = add i32 %i.fr, %i.fp                    ; 2 uses
  %i.ft = udiv i32 %i.fs, %i.fp
  %.not88 = icmp ult i32 %i.fk, %i.fi
  %.not89 = icmp ult i32 %i.fn, %i.fl
  %or.cond106 = select i1 %.not88, i1 %.not89, i1 false
  br i1 %or.cond106, label %bb.at, label %.loopexit145

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_E8ADAM7_DX, i64 %.058161
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !12 ; 2 uses
  %i.fw = xor i32 %i.fk, -1
  %i.fx = add i32 %i.fi, %i.fw
  %i.fy = add i32 %i.fx, %i.fv
  %i.fz = udiv i32 %i.fy, %i.fv
  %i.ga = invoke noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef %i.fz, i32 noundef 1, ptr noundef nonnull %i.fh)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gb = add i64 %i.ga, 1
  %i.gc = zext i32 %i.ft to i64
  %.not167 = icmp ugt i32 %i.fp, %i.fs
  br i1 %.not167, label %.loopexit145, label %.lr.ph159

bb.av:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph159:                                        ; preds = %bb.au, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130
  %.0157 = phi i64 [ %i.hf, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ], [ 0, %bb.au ]
  %.1156 = phi i64 [ %i.he, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ], [ %.059160, %bb.au ] ; 2 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !47
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %.058161 ; 4 uses
  %i.gg = load ptr, ptr %6, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.1156 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !41 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !39
  %.not.i121 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not.i121, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph159
  %i.gm = load i8, ptr %i.gh, align 1, !tbaa !20
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !20
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store ptr %i.go, ptr %i.gi, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130

bb.ax:                                            ; preds = %.lr.ph159
  %i.gp = load ptr, ptr %i.gf, align 8, !tbaa !37 ; 4 uses
  %i.gq = ptrtoint ptr %i.gj to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 8 uses
  %i.gt = icmp eq i64 %i.gs, 9223372036854775807
  br i1 %i.gt, label %bb.ay, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc128 unwind label %.loopexit.split-lp147

.noexc128:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122: ; preds = %bb.ax
  %.sroa.speculated.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gu = add i64 %.sroa.speculated.i.i.i123, %i.gs ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gs
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 9223372036854775807)
  %i.gx = select i1 %i.gv, i64 9223372036854775807, i64 %i.gw ; 3 uses
  %.not.i.i.i124 = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i124)
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #31
          to label %.noexc129 unwind label %.loopexit146 ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gs ; 2 uses
  %i.ha = load i8, ptr %i.gh, align 1, !tbaa !20
  store i8 %i.ha, ptr %i.gz, align 1, !tbaa !20
  %i.hb = icmp sgt i64 %i.gs, 0
  br i1 %i.hb, label %bb.az, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125

bb.az:                                            ; preds = %.noexc129
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gy, ptr align 1 %i.gp, i64 %i.gs, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125: ; preds = %bb.az, %.noexc129
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %.not.i17.i.i126 = icmp eq ptr %i.gp, null
  br i1 %.not.i17.i.i126, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gs) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127: ; preds = %bb.ba, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i125
  store ptr %i.gy, ptr %i.gf, align 8, !tbaa !37
  store ptr %i.hc, ptr %i.gi, align 8, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  store ptr %i.hd, ptr %i.gk, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130

_ZNSt6vectorIhSaIhEE9push_backERKh.exit130:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i127, %bb.aw
  %i.he = add i64 %i.gb, %.1156                   ; 2 uses
  %i.hf = add nuw nsw i64 %.0157, 1               ; 2 uses
  %i.hg = icmp samesign ult i64 %i.hf, %i.gc
  br i1 %i.hg, label %.lr.ph159, label %.loopexit145, !llvm.loop !66

.loopexit146:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i122
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp147:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit145:                                     ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130, %bb.au, %bb.as
  %.2 = phi i64 [ %.059160, %bb.as ], [ %.059160, %bb.au ], [ %i.he, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit130 ]
  %i.hh = add nuw nsw i64 %.058161, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hh, 7
  br i1 %exitcond.not, label %thread-pre-split, label %bb.as, !llvm.loop !67

thread-pre-split:                                 ; preds = %.loopexit145, %bb.ab
  %.4.ph = phi i32 [ 1, %bb.ab ], [ 0, %.loopexit145 ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.ag, %thread-pre-split
  %i.hi = phi ptr [ %.pr, %thread-pre-split ], [ %i.di, %bb.ag ], [ %i.el, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %.4 = phi i32 [ %.4.ph, %thread-pre-split ], [ 0, %bb.ag ], [ 0, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ]
  %.not.i.i.i131 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !39
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.be

bb.bc:                                            ; preds = %.loopexit146, %.loopexit.split-lp147, %.loopexit144, %.loopexit.split-lp, %bb.av, %bb.ah, %bb.ac
  %.pn91.pn = phi { ptr, i32 } [ %i.dj, %bb.ah ], [ %i.cy, %bb.ac ], [ %i.gd, %bb.av ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit144 ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ]
  %i.ho = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIhSaIhEED2Ev.exit133, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !39
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit133

_ZNSt6vectorIhSaIhEED2Ev.exit133:                 ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bg

.critedge105:                                     ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.be

bb.be:                                            ; preds = %.critedge105, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.5 = phi i32 [ 1, %.critedge105 ], [ %.4, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  %i.hu = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIhSaIhEED2Ev.exit135, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !39
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit135

_ZNSt6vectorIhSaIhEED2Ev.exit135:                 ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bi

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit133, %bb.aa
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.aa ], [ %.pn91.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit133 ]
  %i.ia = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIhSaIhEED2Ev.exit137, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !39
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit137

_ZNSt6vectorIhSaIhEED2Ev.exit137:                 ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bj

bb.bi:                                            ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit135
  %.6 = phi i32 [ %.5, %_ZNSt6vectorIhSaIhEED2Ev.exit135 ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.6

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit137, %bb.c
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit137 ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn100.pn.pn
}

declare noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.e, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %3 = alloca %"class.lodepng::State", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = invoke noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  %.pre34 = load ptr, ptr %2, align 8, !tbaa !47  ; 6 uses
  br i1 %.not, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.pre34 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 24
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = load <2 x ptr>, ptr %.pre34, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %.pre34, i64 16 ; 2 uses
  %i.o = load <2 x ptr>, ptr %0, align 8, !tbaa !8
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !8
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.p, ptr %i.k, align 8, !tbaa !39
  store <2 x ptr> %i.o, ptr %.pre34, align 8, !tbaa !8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !39
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.q = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  %spec.select = select i1 %i.t, ptr null, ptr %i.q
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %spec.select, i64 noundef %i.w)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.a, align 4, !tbaa !12
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  %..sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column0
  %.sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift0
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !12
  %.not32 = icmp eq i32 %i.aa, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !41
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre33 = load ptr, ptr %2, align 8, !tbaa !47
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.af = phi ptr [ %.pre, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %.031 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %i.ag = and i64 %.031, 7                        ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %2, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ag
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 %.031, %i.ao
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.af, %i.as
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !20
  store i8 %i.at, ptr %i.af, align 1, !tbaa !20
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !41
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %0, align 8, !tbaa !37    ; 4 uses
  %i.ax = ptrtoint ptr %i.af to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 8 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i.i.i, %i.az  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31
          to label %.noexc29 unwind label %.loopexit ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.az ; 2 uses
  %i.bh = load i8, ptr %i.ar, align 1, !tbaa !20
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !20
  %i.bi = icmp sgt i64 %i.az, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !37
  store ptr %i.bj, ptr %i.ab, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.l
  %i.bl = phi ptr [ %i.bj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.av, %bb.l ]
  %i.bm = add nuw nsw i64 %.031, 1                ; 2 uses
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !12
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.k, label %._crit_edge, !llvm.loop !68

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.v

bb.s:                                             ; preds = %bb.e, %._crit_edge, %bb.b
  %i.bq = phi ptr [ %.pre34, %bb.b ], [ %.pre33, %._crit_edge ], [ %.pre34, %bb.e ] ; 3 uses
  %.024 = phi i32 [ 1, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.bq, %bb.s ] ; 3 uses
  %i.bt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bz, %i.bs
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.s
  %i.ca = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bq, %bb.s ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #29
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.024

bb.v:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.d, %bb.c ]
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN7lodepng15getPaletteValueEPKhmi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i32
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.g = lshr i64 %1, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20
  %i.j = zext i8 %i.i to i32
  %.tr16 = trunc i64 %1 to i32
  %i.k = shl i32 %.tr16, 2
  %i.l = and i32 %i.k, 4
  %i.m = lshr i32 %i.j, %i.l
  %i.n = and i32 %i.m, 15
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.o = lshr i64 %1, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = zext i8 %i.q to i32
  %.tr = trunc i64 %1 to i32
  %i.s = shl i32 %.tr, 1
  %i.t = and i32 %i.s, 6
  %i.u = lshr i32 %i.r, %i.t
  %i.v = and i32 %i.u, 3
  br label %bb.f

bb.e:                                             ; preds = %.split
  %i.w = lshr i64 %1, 3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i32
  %i.aa = trunc i64 %1 to i32
  %i.ab = and i32 %i.aa, 7
end_hunk_2
begin_hunk_3_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !21, !alias.scope !173, !noalias !176
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !176, !noalias !173 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25, !alias.scope !176, !noalias !173 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !178
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !23, !alias.scope !173, !noalias !176
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !20, !alias.scope !173, !noalias !176
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !25, !alias.scope !176, !noalias !173
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !25, !alias.scope !173, !noalias !176
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !23, !alias.scope !176, !noalias !173
  store i64 0, ptr %i.be, align 8, !tbaa !25, !alias.scope !176, !noalias !173
  store i8 0, ptr %i.aw, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !160

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !153
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !29
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !8
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  store ptr %i.u, ptr %i.s, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !8, !alias.scope !182, !noalias !179
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !8, !alias.scope !179, !noalias !182
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39, !alias.scope !182, !noalias !179
  store ptr %i.y, ptr %i.w, align 8, !tbaa !39, !alias.scope !179, !noalias !182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !182, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !184

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !8, !alias.scope !188, !noalias !185
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !8, !alias.scope !185, !noalias !188
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39, !alias.scope !188, !noalias !185
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !39, !alias.scope !185, !noalias !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !188, !noalias !185
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !184

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !47
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !20
  store i8 %i.s, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !52

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.ad, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !20
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !41
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !41
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !52

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.au, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !52

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !20
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !52

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !52

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i55 = icmp eq ptr %i.av, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !37
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !20
  store i8 %i.s, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !52

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.ad, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !20
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !41
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !41
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !52

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.au, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !52

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !20
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !52

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !52

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i55 = icmp eq ptr %i.av, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !37
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !39
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !20
  store i8 %i.s, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !20
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !52

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.ad, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !20
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !41
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !41
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !52

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.au, ptr %1, align 1, !tbaa !20
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !52

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !20
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !52

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !52

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !37
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !39
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !42
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !8, !alias.scope !193, !noalias !190
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !8, !alias.scope !190, !noalias !193
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39, !alias.scope !193, !noalias !190
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !39, !alias.scope !190, !noalias !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !193, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !184

_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IhSaIhEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIhSaIhEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
end_hunk_3
