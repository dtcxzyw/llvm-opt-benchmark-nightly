Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepImageIO?download=true
inline.NumInlined: 268
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Imf_3_4::Header" = type <{ %"class.std::map.3", i8, [7 x i8] }>
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.Imath_3_2::Vec2.9" = type { float, float }
%"class.Imf_3_4::TileDescription" = type { i32, i32, i32, i32 }
%"class.Imath_3_2::Box" = type { %"class.Imath_3_2::Vec2", %"class.Imath_3_2::Vec2" }
%"class.Imath_3_2::Vec2" = type { i32, i32 }
%"struct.Imf_3_4::Channel" = type <{ i32, i32, i32, i8, [3 x i8] }>
%"class.Imf_3_4::DeepTiledOutputFile" = type { %"class.Imf_3_4::GenericOutputFile", ptr }
%"class.Imf_3_4::GenericOutputFile" = type { ptr }
%"class.Imf_3_4::DeepFrameBuffer" = type { %"class.std::map.18", %"struct.Imf_3_4::Slice" }
%"class.std::map.18" = type { %"class.std::_Rb_tree.19" }
%"class.std::_Rb_tree.19" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::DeepSlice>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::DeepSlice>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::DeepSlice>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::DeepSlice>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.Imf_3_4::Slice" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8, [6 x i8] }>
%"struct.Imf_3_4::DeepSlice" = type { %"struct.Imf_3_4::Slice.base", i32 }
%"struct.Imf_3_4::Slice.base" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8 }>
%"class.Imf_3_4::DeepScanLineOutputFile" = type { %"class.Imf_3_4::GenericOutputFile", ptr }
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
%"class.Imf_3_4::MultiPartInputFile" = type { %"class.Imf_3_4::Context", %"class.std::shared_ptr.10" }
%"class.Imf_3_4::Context" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { ptr, %"class.std::__shared_count" }
%"class.Imf_3_4::DeepTiledInputFile" = type { %"class.Imf_3_4::Context", %"class.std::shared_ptr.33" }
%"class.std::shared_ptr.33" = type { %"class.std::__shared_ptr.34" }
%"class.std::__shared_ptr.34" = type { ptr, %"class.std::__shared_count" }
%"class.Imf_3_4::DeepScanLineInputFile" = type { %"class.Imf_3_4::Context", %"class.std::shared_ptr.29" }
%"class.std::shared_ptr.29" = type { %"class.std::__shared_ptr.30" }
%"class.std::__shared_ptr.30" = type { ptr, %"class.std::__shared_count" }

$_ZN7Imf_3_418MultiPartInputFileD2Ev = comdat any

$_ZN7Imf_3_415DeepFrameBufferD2Ev = comdat any

$_ZN7Imf_3_421DeepScanLineInputFileD2Ev = comdat any

$_ZN7Imf_3_418DeepTiledInputFileD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

@_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"scanlineimage\00", align 1
@__dso_handle = external hidden global i8
@_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tiledimage\00", align 1
@_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"deepscanline\00", align 1
@_ZN7Imf_3_4L8DEEPTILEB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot load image file \00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c".  The file is not an OpenEXR file.\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.9 = private unnamed_addr constant [45 x i8] c".  Multi-part file loading is not supported.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Cannot load flat image file \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" as a deep image.\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dataWindow\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"tiles\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImfDeepImageIO.cpp, ptr null }]

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
define void @_ZN7Imf_3_413saveDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7Imf_3_418saveDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN7Imf_3_421saveDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_418saveDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::Header", align 8   ; 13 uses
  %5 = alloca %"class.Imath_3_2::Vec2.9", align 8 ; 4 uses
  %6 = alloca %"class.Imf_3_4::TileDescription", align 4 ; 8 uses
  %7 = alloca %"class.Imf_3_4::TileDescription", align 4 ; 8 uses
  %8 = alloca %"class.Imath_3_2::Box", align 8    ; 6 uses
  %9 = alloca %"struct.Imf_3_4::Channel", align 8 ; 6 uses
  %10 = alloca %"class.Imf_3_4::DeepTiledOutputFile", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !8
  call void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %4, i32 noundef 64, i32 noundef 64, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.a = invoke ptr @_ZNK7Imf_3_46Header5beginEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %.preheader72 unwind label %.loopexit.split-lp74

.preheader72:                                     ; preds = %bb.a, %bb.i
  %.sroa.058.0 = phi ptr [ %i.k, %bb.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = invoke ptr @_ZNK7Imf_3_46Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.preheader72
  %.not65 = icmp eq ptr %.sroa.058.0, %i.b
  br i1 %.not65, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.j unwind label %bb.q

.loopexit73:                                      ; preds = %bb.h
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp74:                             ; preds = %bb.a
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.d:                                             ; preds = %.preheader72
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.058.0, i64 32 ; 4 uses
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(11) @.str.12) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(6) @.str.13) #16
  %.not48 = icmp eq i32 %i.g, 0
  br i1 %.not48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(9) @.str.14) #16
  %.not49 = icmp eq i32 %i.h, 0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.058.0, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  invoke void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.i unwind label %.loopexit73

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.k = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.058.0) #16
  br label %.preheader72, !llvm.loop !15

bb.j:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.l = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21
  %i.q = invoke noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.r = invoke noundef i32 @_ZNK7Imf_3_45Image17levelRoundingModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  store i32 %i.m, ptr %6, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.p, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.q, ptr %i.t, align 4, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.r, ptr %i.u, align 4, !tbaa !23
  invoke void @_ZN7Imf_3_46Header18setTileDescriptionERKNS_15TileDescriptionE(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.x

bb.q:                                             ; preds = %bb.z, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.bg

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.x = invoke noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.y = invoke noundef i32 @_ZNK7Imf_3_45Image17levelRoundingModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  store i32 64, ptr %7, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 64, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !23
  invoke void @_ZN7Imf_3_46Header18setTileDescriptionERKNS_15TileDescriptionE(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.bg

bb.x:                                             ; preds = %bb.v, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZN7Imf_3_417dataWindowForFileERKNS_6HeaderERKNS_5ImageENS_16DataWindowSourceE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %8, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ad = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.z unwind label %bb.af      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.ae = load <2 x i32>, ptr %8, align 8, !tbaa !24
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load <2 x i32>, ptr %i.ag, align 8, !tbaa !24
  store <2 x i32> %i.ah, ptr %i.af, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ai = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.aa unwind label %bb.q

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr %i.ai, align 4, !tbaa !25
  %i.aj = load ptr, ptr %2, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef nonnull align 8 dereferenceable(192) ptr %i.al(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef 0, i32 noundef 0)
          to label %bb.ab unwind label %bb.ag     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.an = invoke ptr @_ZNK7Imf_3_414DeepImageLevel5beginEv(ptr noundef nonnull align 8 dereferenceable(192) %i.am)
          to label %.preheader70 unwind label %.loopexit.split-lp

.preheader70:                                     ; preds = %bb.ab
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader70, %bb.al
  %.sroa.053.0 = phi ptr [ %i.az, %bb.al ], [ %i.an, %.preheader70 ] ; 4 uses
  %i.ao = invoke ptr @_ZNK7Imf_3_414DeepImageLevel3endEv(ptr noundef nonnull align 8 dereferenceable(192) %i.am)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.not66 = icmp eq ptr %.sroa.053.0, %i.ao
  br i1 %.not66, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ap = load ptr, ptr %0, align 8, !tbaa !29
  %i.aq = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.an unwind label %bb.aq

bb.af:                                            ; preds = %bb.y, %bb.x
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bg

bb.ag:                                            ; preds = %bb.aa
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit71:                                      ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ah:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ai:                                            ; preds = %bb.ad
  %i.au = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.aj unwind label %.loopexit71

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.053.0, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = invoke { i64, i64 } @_ZNK7Imf_3_412ImageChannel7channelEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aw)
          to label %bb.ak unwind label %bb.am     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.053.0, i64 32
  %.fca.0.extract = extractvalue { i64, i64 } %i.ax, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.ax, 1
  store i64 %.fca.0.extract, ptr %9, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i40
  store i40 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN7Imf_3_411ChannelList6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 4 dereferenceable(13) %9)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.az = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.053.0) #16
  br label %bb.ac, !llvm.loop !37

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.bg

bb.an:                                            ; preds = %bb.ae
  invoke void @_ZN7Imf_3_419DeepTiledOutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(49) %4, i32 noundef %i.aq)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.bb = invoke noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.bb, label %.loopexit [
    i32 0, label %bb.as
    i32 1, label %.preheader
    i32 2, label %.preheader68
  ]

bb.aq:                                            ; preds = %bb.an, %bb.ae
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ar:                                            ; preds = %bb.as, %bb.ao
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_19saveLevelERNS_19DeepTiledOutputFileERKNS_9DeepImageEii(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef 0, i32 noundef 0)
          to label %.loopexit unwind label %bb.ar

.preheader:                                       ; preds = %bb.ap, %bb.aw
  %.032 = phi i32 [ %i.bh, %bb.aw ], [ 0, %bb.ap ] ; 4 uses
  %i.be = invoke noundef i32 @_ZNK7Imf_3_419DeepTiledOutputFile9numLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.preheader
  %i.bf = icmp slt i32 %.032, %i.be
  br i1 %i.bf, label %bb.av, label %.loopexit

bb.au:                                            ; preds = %bb.av, %.preheader
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.av:                                            ; preds = %bb.at
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_19saveLevelERNS_19DeepTiledOutputFileERKNS_9DeepImageEii(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.032, i32 noundef %.032)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.bh = add nuw nsw i32 %.032, 1
  br label %.preheader, !llvm.loop !38

.preheader68:                                     ; preds = %bb.ap, %bb.ba
  %.031 = phi i32 [ %i.bn, %bb.ba ], [ 0, %bb.ap ] ; 3 uses
  %i.bi = invoke noundef i32 @_ZNK7Imf_3_419DeepTiledOutputFile10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.preheader68
  %i.bj = icmp slt i32 %.031, %i.bi
  br i1 %i.bj, label %.preheader67, label %.loopexit

bb.ay:                                            ; preds = %.preheader68
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.preheader67:                                     ; preds = %bb.ax, %bb.bd
  %.0 = phi i32 [ %i.bp, %bb.bd ], [ 0, %bb.ax ]  ; 3 uses
  %i.bl = invoke noundef i32 @_ZNK7Imf_3_419DeepTiledOutputFile10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.preheader67
  %i.bm = icmp slt i32 %.0, %i.bl
  br i1 %i.bm, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bn = add nuw nsw i32 %.031, 1
  br label %.preheader68, !llvm.loop !39

bb.bb:                                            ; preds = %bb.bc, %.preheader67
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bc:                                            ; preds = %bb.az
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_19saveLevelERNS_19DeepTiledOutputFileERKNS_9DeepImageEii(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.0, i32 noundef %.031)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  %i.bp = add nuw nsw i32 %.0, 1
  br label %.preheader67, !llvm.loop !40

.loopexit:                                        ; preds = %bb.ax, %bb.at, %bb.ap, %bb.as
  call void @_ZN7Imf_3_419DeepTiledOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.be:                                            ; preds = %bb.ay, %bb.bb, %bb.au, %bb.ar
  %.pn42 = phi { ptr, i32 } [ %i.bd, %bb.ar ], [ %i.bg, %bb.au ], [ %i.bo, %bb.bb ], [ %i.bk, %bb.ay ]
  call void @_ZN7Imf_3_419DeepTiledOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aq
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.be ], [ %i.bc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit71, %.loopexit.split-lp, %.loopexit73, %.loopexit.split-lp74, %bb.ah, %bb.am, %bb.d, %bb.ag, %bb.bf, %bb.af, %bb.w, %bb.r, %bb.q
  %.pn50.pn = phi { ptr, i32 } [ %i.as, %bb.ag ], [ %i.ac, %bb.w ], [ %i.v, %bb.q ], [ %i.ar, %bb.af ], [ %i.w, %bb.r ], [ %i.d, %bb.d ], [ %.pn42.pn, %bb.bf ], [ %i.at, %bb.ah ], [ %i.ba, %bb.am ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp74 ], [ %lpad.loopexit75, %.loopexit73 ], [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn50.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421saveDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::Header", align 8   ; 13 uses
  %5 = alloca %"class.Imath_3_2::Vec2.9", align 8 ; 4 uses
  %6 = alloca %"class.Imath_3_2::Box", align 8    ; 6 uses
  %7 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 15 uses
  %8 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_4::Channel", align 8 ; 6 uses
  %10 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %11 = alloca %"class.Imf_3_4::DeepScanLineOutputFile", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !8
  call void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %4, i32 noundef 64, i32 noundef 64, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.a = invoke ptr @_ZNK7Imf_3_46Header5beginEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %.preheader45 unwind label %.loopexit.split-lp47

.preheader45:                                     ; preds = %bb.a, %bb.i
  %.sroa.036.0 = phi ptr [ %i.j, %bb.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = invoke ptr @_ZNK7Imf_3_46Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.preheader45
  %.not43 = icmp eq ptr %.sroa.036.0, %i.b
  br i1 %.not43, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZN7Imf_3_417dataWindowForFileERKNS_6HeaderERKNS_5ImageENS_16DataWindowSourceE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %3)
          to label %bb.j unwind label %bb.t

.loopexit46:                                      ; preds = %bb.h
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp47:                             ; preds = %bb.a
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.d:                                             ; preds = %.preheader45
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 32 ; 4 uses
  %i.e = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(11) @.str.12) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str.13) #16
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(9) @.str.14) #16
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  invoke void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.i unwind label %.loopexit46

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.j = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.036.0) #16
  br label %.preheader45, !llvm.loop !41

bb.j:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.k unwind label %bb.t       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.l = load <2 x i32>, ptr %6, align 8, !tbaa !24
  store <2 x i32> %i.l, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load <2 x i32>, ptr %i.n, align 8, !tbaa !24
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.p = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.p, align 4, !tbaa !25
  %i.q = load ptr, ptr %2, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(192) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef 0)
          to label %bb.m unwind label %bb.v       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.u, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.z, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %7) #15
  br label %.body

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  invoke void @_ZNK7Imf_3_418SampleCountChannel5sliceEv(ptr dead_on_unwind nonnull writable sret(%"struct.Imf_3_4::Slice") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %i.ab)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ac = invoke ptr @_ZNK7Imf_3_414DeepImageLevel5beginEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.p
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.ad
  %.sroa.029.0 = phi ptr [ %i.au, %bb.ad ], [ %i.ac, %.preheader ] ; 4 uses
  %i.ad = invoke ptr @_ZNK7Imf_3_414DeepImageLevel3endEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %.not44 = icmp eq ptr %.sroa.029.0, %i.ad
  br i1 %.not44, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.ae = load ptr, ptr %0, align 8, !tbaa !29
  %i.af = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.ag unwind label %bb.an

bb.t:                                             ; preds = %bb.j, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ar

bb.u:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.w:                                             ; preds = %bb.o, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.aq

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.y:                                             ; preds = %bb.r
  %i.al = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 64 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = invoke { i64, i64 } @_ZNK7Imf_3_412ImageChannel7channelEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.fca.0.extract = extractvalue { i64, i64 } %i.ap, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.ap, 1
  store i64 %.fca.0.extract, ptr %9, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i40
  store i40 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN7Imf_3_411ChannelList6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 4 dereferenceable(13) %9)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !34 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"struct.Imf_3_4::DeepSlice") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.au = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.029.0) #16
  br label %bb.q, !llvm.loop !51

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.aq

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.aq

bb.ag:                                            ; preds = %bb.s
  invoke void @_ZN7Imf_3_422DeepScanLineOutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(49) %4, i32 noundef %i.af)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7Imf_3_422DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.ax = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !52
  %i.ba = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %i.bd = add i32 %i.az, 1
  %i.be = sub i32 %i.bd, %i.bc
  invoke void @_ZN7Imf_3_422DeepScanLineOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.be)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7Imf_3_422DeepScanLineOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %i.bf)
          to label %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #17
  unreachable

_ZN7Imf_3_415DeepFrameBufferD2Ev.exit:            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.an:                                            ; preds = %bb.ag, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_422DeepScanLineOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ao ], [ %i.bi, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.ae, %bb.af, %bb.ap, %bb.w
  %.pn19.pn = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %.pn, %bb.ap ], [ %i.aw, %bb.af ], [ %i.av, %bb.ae ], [ %i.ak, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #15
  br label %.body

.body:                                            ; preds = %bb.n, %bb.aq
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.aq ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit46, %.loopexit.split-lp47, %bb.d, %bb.v, %.body, %bb.u, %bb.t
  %.pn26.pn = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %i.ag, %bb.t ], [ %i.ah, %bb.u ], [ %.pn19.pn.pn, %.body ], [ %i.c, %bb.d ], [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413saveDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9DeepImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imf_3_4::Header", align 8   ; 10 uses
  %3 = alloca %"class.Imath_3_2::Vec2.9", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !8
  call void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 64, i32 noundef 64, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.a = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !24
  store <2 x i32> %i.f, ptr %i.d, align 4, !tbaa !24
  %i.g = invoke noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.h = invoke noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.d
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc4, %.noexc
  invoke void @_ZN7Imf_3_418saveDeepTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 0)
          to label %_ZN7Imf_3_413saveDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE.exit unwind label %bb.g

bb.f:                                             ; preds = %.noexc4
  invoke void @_ZN7Imf_3_421saveDeepScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 0)
          to label %_ZN7Imf_3_413saveDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE.exit unwind label %bb.g

_ZN7Imf_3_413saveDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6HeaderERKNS_9DeepImageENS_16DataWindowSourceE.exit: ; preds = %bb.e, %bb.f
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.i
}

declare void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_413loadDeepImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9DeepImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.Imf_3_4::MultiPartInputFile", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = call noundef zeroext i1 @_ZN7Imf_3_413isOpenExrFileEPKcRbS2_S2_(ptr noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z13iex_debugTrapv()
end_hunk_0
