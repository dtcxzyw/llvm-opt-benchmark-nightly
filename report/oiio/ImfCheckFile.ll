inline.NumInlined: 708
inline.NumDeleted: 300
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.OpenImageIO_v3_1_Imf__3_3_5::MultiPartInputFile" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::Context", %"class.std::shared_ptr.4" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::Context" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.4" = type { %"class.std::__shared_ptr.5" }
%"class.std::__shared_ptr.5" = type { ptr, %"class.std::__shared_count" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::RgbaInputFile" = type { ptr, ptr, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::InputFile" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::Context", %"class.std::shared_ptr.10" }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { ptr, %"class.std::__shared_count" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::TiledInputFile" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::Context", %"class.std::shared_ptr.13" }
%"class.std::shared_ptr.13" = type { %"class.std::__shared_ptr.14" }
%"class.std::__shared_ptr.14" = type { ptr, %"class.std::__shared_count" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::DeepScanLineInputFile" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::Context", %"class.std::shared_ptr.16" }
%"class.std::shared_ptr.16" = type { %"class.std::__shared_ptr.17" }
%"class.std::__shared_ptr.17" = type { ptr, %"class.std::__shared_count" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::DeepTiledInputFile" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::Context", %"class.std::shared_ptr.19" }
%"class.std::shared_ptr.19" = type { %"class.std::__shared_ptr.20" }
%"class.std::__shared_ptr.20" = type { ptr, %"class.std::__shared_count" }
%struct._exr_context_initializer_v3 = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, float, i32, [4 x i8] }
%"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::memdata" = type { ptr, i64 }
%"class.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::PtrIStream" = type { %"class.OpenImageIO_v3_1_Imf__3_3_5::IStream", ptr, ptr, ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::IStream" = type { ptr, %"class.std::__cxx11::basic_string" }
%struct.exr_attr_box2i_t = type { %struct.exr_attr_v2i_t, %struct.exr_attr_v2i_t }
%struct.exr_attr_v2i_t = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.exr_chunk_info_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i64, i64, i64, i64, i64 }
%struct._exr_decode_pipeline = type { i64, ptr, i16, i16, i32, ptr, %struct.exr_chunk_info_t, i32, i32, i64, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, [5 x %struct.exr_coding_channel_info_t] }
%struct.exr_coding_channel_info_t = type { ptr, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
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
%"class.OpenImageIO_v3_1_Imf__3_3_5::DeepFrameBuffer" = type { %"class.std::map.53", %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice" }
%"class.std::map.53" = type { %"class.std::_Rb_tree.54" }
%"class.std::_Rb_tree.54" = type { %"struct.std::_Rb_tree<OpenImageIO_v3_1_Imf__3_3_5::Name, std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::DeepSlice>, std::_Select1st<std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::DeepSlice>>, std::less<OpenImageIO_v3_1_Imf__3_3_5::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<OpenImageIO_v3_1_Imf__3_3_5::Name, std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::DeepSlice>, std::_Select1st<std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::DeepSlice>>, std::less<OpenImageIO_v3_1_Imf__3_3_5::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8, [6 x i8] }>
%"struct.OpenImageIO_v3_1_Imf__3_3_5::DeepSlice" = type { %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice.base", i32 }
%"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice.base" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8 }>
%"class.OpenImageIO_v3_1_Imf__3_3_5::Array.51" = type { i64, ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::FrameBuffer" = type { %"class.std::map.22" }
%"class.std::map.22" = type { %"class.std::_Rb_tree.23" }
%"class.std::_Rb_tree.23" = type { %"struct.std::_Rb_tree<OpenImageIO_v3_1_Imf__3_3_5::Name, std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>, std::_Select1st<std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>>, std::less<OpenImageIO_v3_1_Imf__3_3_5::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<OpenImageIO_v3_1_Imf__3_3_5::Name, std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>, std::_Select1st<std::pair<const OpenImageIO_v3_1_Imf__3_3_5::Name, OpenImageIO_v3_1_Imf__3_3_5::Slice>>, std::less<OpenImageIO_v3_1_Imf__3_3_5::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.OpenImageIO_v3_1_Imf__3_3_5::InputPart" = type { ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::TiledInputPart" = type { ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::DeepScanLineInputPart" = type { ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::DeepTiledInputPart" = type { ptr }

@_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"scanlineimage\00", align 1
@__dso_handle = external hidden global i8
@_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tiledimage\00", align 1
@_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"deepscanline\00", align 1
@_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"EXR_CHECK_ENABLE_PRINTS\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<error>\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"ERROR '%s' (%s): %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"<memstream>\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE = internal unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStreamD2Ev, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamD0Ev, ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream14isMemoryMappedEv, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream4readEPci, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream16readMemoryMappedEi, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream5tellgEv, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream5seekgEm, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStream5clearEv, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream4sizeEv, ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57IStream15isStatelessReadEv, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStream4readEPvmm] }, align 8
@_ZTIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE, ptr @_ZTIN27OpenImageIO_v3_1_Imf__3_3_57IStreamE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE = internal constant [58 x i8] c"N27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE\00", align 1
@_ZTIN27OpenImageIO_v3_1_Imf__3_3_57IStreamE = external constant ptr
@.str.13 = private unnamed_addr constant [29 x i8] c" bytes requested from stream\00", align 1
@_ZTIN7Iex_3_38InputExcE = external constant ptr
@.str.14 = private unnamed_addr constant [31 x i8] c"Early end of file: requesting \00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c" extra bytes after file\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Out of range seek requested\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImfCheckFile.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_516checkOpenEXRFileEPKcbbb(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::MultiPartInputFile", align 8 ; 11 uses
  %6 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::RgbaInputFile", align 8 ; 7 uses
  %7 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::InputFile", align 8 ; 8 uses
  %8 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TiledInputFile", align 8 ; 8 uses
  %9 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepScanLineInputFile", align 8 ; 8 uses
  %10 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepTiledInputFile", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %struct._exr_context_initializer_v3, align 8 ; 9 uses
  br i1 %3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i8 0, i64 88, i1 false)
  store i64 104, ptr %11, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i32 -2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 92
  store float -1.000000e+00, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121core_error_handler_cbEPK19_priv_exr_context_tiPKc, ptr %i.i, align 8, !tbaa !7
  %or.cond.i = or i1 %1, %2
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 72
  store <4 x i32> <i32 2048, i32 2048, i32 512, i32 512>, ptr %i.j, align 8, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = call i32 @exr_start_read(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %11)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcbb.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.m = call fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113checkCoreFileEP19_priv_exr_context_tbb(ptr noundef %i.l, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %i.n = call i32 @exr_finish(ptr noundef nonnull %i.e) ; 0 uses
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcbb.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcbb.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i1 [ %i.m, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.em

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21getMaximumSampleCountEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15getMaxImageSizeERiS1_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15getMaxImageSizeERiS1_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %or.cond.i5 = or i1 %1, %2
  br i1 %or.cond.i5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21setMaximumSampleCountEl(i64 noundef 1048576)
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15setMaxImageSizeEii(i32 noundef 2048, i32 noundef 2048)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink37.i = phi i32 [ 512, %bb.g ], [ 16384, %bb.f ] ; 2 uses
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14setMaxTileSizeEii(i32 noundef %.sink37.i, i32 noundef %.sink37.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.q, align 8, !tbaa !17
  store i8 0, ptr %i.p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.r = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_517globalThreadCountEv()
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileC1EPKcib(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %0, i32 noundef %i.r, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.s)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.l
  %i.u = invoke noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_57isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  br i1 %i.u, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.v = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.w = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.v)
          to label %bb.p unwind label %bb.v       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw i64 %i.ab, %i.y
  %i.ad = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ae = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.ad)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.af = load i64, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i

bb.s:                                             ; preds = %bb.r
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.s
  %i.aj = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !25
  %i.ak = load ptr, ptr %4, align 8, !tbaa !25
  %bcmp.i.i = call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %i.af)
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.s
  %sext81.i = shl i64 %i.ae, 32
  %i.am = ashr exact i64 %sext81.i, 32
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.am, i64 4)
  br label %bb.x

bb.t:                                             ; preds = %bb.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.an

bb.u:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.l, %bb.k, %bb.j
  %.061.i = phi i1 [ %.2.i, %bb.y ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ]
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.v:                                             ; preds = %bb.o, %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.w:                                             ; preds = %bb.q, %bb.p
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.r
  %sext.i = shl i64 %i.ae, 32
  %i.ar = ashr exact i64 %sext.i, 32
  br label %bb.x

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %.pn82.i = phi i64 [ %.sroa.speculated.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %i.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread4.i ]
  %.062.i = mul i64 %i.ac, %.pn82.i
  %i.as = icmp ugt i64 %.062.i, 1000000
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.2.i = phi i1 [ %i.as, %bb.x ], [ false, %bb.m ] ; 2 uses
  %i.at = invoke fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %1, i1 noundef zeroext %2)
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.aw, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !31
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #25, !inline_history !34
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #25, !inline_history !34
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.ad ], [ %i.bj, %bb.ae ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.af, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !35

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #25
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab, %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i1.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.bn, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !31
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #25, !inline_history !36
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #25, !inline_history !36
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_516checkOpenEXRFileEPKcbbb:bb.a

bb.ee:                                            ; preds = %bb.do
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #25
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn88.i = phi { ptr, i32 } [ %i.js, %bb.ee ], [ %i.jr, %bb.ed ]
  %.777.i = extractvalue { ptr, i32 } %.pn88.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.jt = call ptr @__cxa_begin_catch(ptr %.777.i) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.critedge101.i unwind label %bb.ec

.critedge101.i:                                   ; preds = %bb.ef, %_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev.exit.i
  %i.ju = load i64, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %i.jv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.jw = icmp eq i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit142.i

bb.eg:                                            ; preds = %.critedge101.i
  %i.jx = icmp eq i64 %i.ju, 0
  br i1 %i.jx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit142.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.jy = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !25
  %i.jz = load ptr, ptr %4, align 8, !tbaa !25
  %bcmp.i141.i = call i32 @bcmp(ptr %i.jz, ptr %i.jy, i64 %i.ju)
  %i.ka = icmp eq i32 %bcmp.i141.i, 0
  %i.kb = select i1 %i.ka, i1 true, i1 %.7.ph.i
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit142.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit142.i: ; preds = %bb.eh, %bb.eg, %.critedge101.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev.exit.i, %bb.bv
  %.9.i = phi i1 [ %.063.i, %bb.bv ], [ %.7.ph.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFileD2Ev.exit.i ], [ %.7.ph.i, %.critedge101.i ], [ %i.kb, %bb.eh ], [ true, %bb.eg ]
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21setMaximumSampleCountEl(i64 noundef %i.o)
          to label %bb.ei unwind label %bb.at

bb.ei:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit142.i
  %i.kc = load i32, ptr %i.a, align 4, !tbaa !3
  %i.kd = load i32, ptr %i.b, align 4, !tbaa !3
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15setMaxImageSizeEii(i32 noundef %i.kc, i32 noundef %i.kd)
          to label %bb.ej unwind label %bb.at

bb.ej:                                            ; preds = %bb.ei
  %i.ke = load i32, ptr %i.c, align 4, !tbaa !3
  %i.kf = load i32, ptr %i.d, align 4, !tbaa !3
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14setMaxTileSizeEii(i32 noundef %i.ke, i32 noundef %i.kf)
          to label %bb.ek unwind label %bb.at

bb.ek:                                            ; preds = %bb.ej
  %i.kg = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.p
  br i1 %i.kh, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19runChecksIPKcEEbRT_bb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ek
  %i.ki = load i64, ptr %i.p, align 8, !tbaa !19
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #26
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19runChecksIPKcEEbRT_bb.exit

bb.el:                                            ; preds = %bb.ec, %bb.dh, %bb.cl, %bb.bp, %bb.au, %bb.at
  %.pn89.i = phi { ptr, i32 } [ %i.cf, %bb.at ], [ %i.jq, %bb.ec ], [ %i.hu, %bb.dh ], [ %i.fy, %bb.cl ], [ %i.ec, %bb.bp ], [ %i.cg, %bb.au ]
  %i.kk = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.p
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i: ; preds = %bb.el
  %i.km = load i64, ptr %i.p, align 8, !tbaa !19
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn89.i

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19runChecksIPKcEEbRT_bb.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.em

bb.em:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19runChecksIPKcEEbRT_bb.exit, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcbb.exit
  %.0 = phi i1 [ %.0.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcbb.exit ], [ %.9.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19runChecksIPKcEEbRT_bb.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_516checkOpenEXRFileEPKcmbbb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::MultiPartInputFile", align 8 ; 11 uses
  %7 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::RgbaInputFile", align 8 ; 7 uses
  %8 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::InputFile", align 8 ; 8 uses
  %9 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TiledInputFile", align 8 ; 8 uses
  %10 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepScanLineInputFile", align 8 ; 8 uses
  %11 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepTiledInputFile", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %struct._exr_context_initializer_v3, align 8 ; 12 uses
  %13 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::memdata", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::(anonymous namespace)::PtrIStream", align 8 ; 26 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i8 0, i64 88, i1 false)
  store i64 104, ptr %12, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i32 -2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 92
  store float -1.000000e+00, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %0, ptr %13, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %13, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114memstream_readEPK19_priv_exr_context_tPvS4_mmPFiS3_iPKczE, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114memstream_sizeEPK19_priv_exr_context_tPv, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121core_error_handler_cbEPK19_priv_exr_context_tiPKc, ptr %i.m, align 8, !tbaa !7
  %or.cond.i = or i1 %2, %3
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 72
  store <4 x i32> <i32 2048, i32 2048, i32 512, i32 512>, ptr %i.n, align 8, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = call i32 @exr_start_read(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.11, ptr noundef nonnull %12)
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcmbb.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.q = call fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113checkCoreFileEP19_priv_exr_context_tbb(ptr noundef %i.p, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.r = call i32 @exr_finish(ptr noundef nonnull %i.e) ; 0 uses
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcmbb.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113runCoreChecksEPKcmbb.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i1 [ %i.q, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.em

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStreamC2EPKc(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull @.str.12)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStreamE, i64 16), ptr %14, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %0, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %0, ptr %i.t, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %i.v, ptr %i.u, align 8, !tbaa !55
  %i.w = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21getMaximumSampleCountEv()
          to label %.noexc unwind label %bb.el

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15getMaxImageSizeERiS1_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc12 unwind label %bb.el

.noexc12:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15getMaxImageSizeERiS1_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc13 unwind label %bb.el

.noexc13:                                         ; preds = %.noexc12
  %or.cond.i11 = or i1 %2, %3
  br i1 %or.cond.i11, label %bb.g, label %.invoke

bb.g:                                             ; preds = %.noexc13
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21setMaximumSampleCountEl(i64 noundef 1048576)
          to label %.noexc14 unwind label %bb.el

.noexc14:                                         ; preds = %bb.g
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15setMaxImageSizeEii(i32 noundef 2048, i32 noundef 2048)
          to label %.invoke unwind label %bb.el

.invoke:                                          ; preds = %.noexc14, %.noexc13
  %i.x = phi i32 [ 16384, %.noexc13 ], [ 512, %.noexc14 ] ; 2 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14setMaxTileSizeEii(i32 noundef %i.x, i32 noundef %i.x)
          to label %.noexc16 unwind label %bb.el

.noexc16:                                         ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 0, ptr %i.z, align 8, !tbaa !17
  store i8 0, ptr %i.y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.aa = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_517globalThreadCountEv()
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %.noexc16
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileC1ERNS_7IStreamEib(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(64) %14, i32 noundef %i.aa, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.ab)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_57isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  br i1 %i.ad, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.af = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ae)
          to label %bb.o unwind label %bb.u       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw i64 %i.ak, %i.ah
  %i.am = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.an = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.am)
          to label %bb.q unwind label %bb.v       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !17  ; 3 uses
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread153.i

bb.r:                                             ; preds = %bb.q
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.r
  %i.as = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !25
  %i.at = load ptr, ptr %5, align 8, !tbaa !25
  %bcmp.i.i = call i32 @bcmp(ptr %i.at, ptr %i.as, i64 %i.ao)
  %i.au = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread153.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.r
  %sext81.i = shl i64 %i.an, 32
  %i.av = ashr exact i64 %sext81.i, 32
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.av, i64 4)
  br label %bb.w

bb.s:                                             ; preds = %bb.h, %.noexc16
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.t:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.k, %bb.j, %bb.i
  %.061.i = phi i1 [ %.2.i, %bb.x ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ]
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.u:                                             ; preds = %bb.n, %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread153.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.q
  %sext.i = shl i64 %i.an, 32
  %i.ba = ashr exact i64 %sext.i, 32
  br label %bb.w

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread153.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %.pn82.i = phi i64 [ %.sroa.speculated.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %i.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread153.i ]
  %.062.i = mul i64 %i.al, %.pn82.i
  %i.bb = icmp ugt i64 %.062.i, 1000000
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.l
  %.2.i = phi i1 [ %i.bb, %bb.w ], [ false, %bb.l ] ; 2 uses
  %i.bc = invoke fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb(ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %2, i1 noundef zeroext %3)
          to label %bb.y unwind label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bf, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !31
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !56
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !56
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.ac ], [ %i.bs, %bb.ad ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.ae, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !35

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.bw, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !31
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #25, !inline_history !57
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #25, !inline_history !57
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai
end_hunk_1
