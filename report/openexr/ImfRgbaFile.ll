Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfRgbaFile?download=true
inline.NumInlined: 465
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_2::Vec3" = type { float, float, float }
%"struct.Imf_3_4::Chromaticities" = type { %"class.Imath_3_2::Vec2.8", %"class.Imath_3_2::Vec2.8", %"class.Imath_3_2::Vec2.8", %"class.Imath_3_2::Vec2.8" }
%"class.Imath_3_2::Vec2.8" = type { float, float }
%"class.Imf_3_4::FrameBuffer" = type { %"class.std::map.0" }
%"class.std::map.0" = type { %"class.std::_Rb_tree.1" }
%"class.std::_Rb_tree.1" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Slice>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Slice>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Slice>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Slice>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.Imf_3_4::Slice" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8, [6 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Imf_3_4::Header" = type <{ %"class.std::map", i8, [7 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Attribute *>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.Imf_3_4::ChannelList" = type { %"class.std::map.9" }
%"class.std::map.9" = type { %"class.std::_Rb_tree.10" }
%"class.std::_Rb_tree.10" = type { %"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Channel>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Channel>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Channel>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Channel>>, std::less<Imf_3_4::Name>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.Imf_3_4::Channel" = type <{ i32, i32, i32, i8, [3 x i8] }>
%"struct.std::_Rb_tree<Imf_3_4::Name, std::pair<const Imf_3_4::Name, Imf_3_4::Channel>, std::_Select1st<std::pair<const Imf_3_4::Name, Imf_3_4::Channel>>, std::less<Imf_3_4::Name>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }

$_ZN7Imf_3_411FrameBufferD2Ev = comdat any

$_ZN7Imf_3_418MultiPartInputFileD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZN7Imf_3_411ChannelListD2Ev = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_ = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RY\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"No frame buffer was specified as the pixel data source for image file \22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@_ZTVN7Imf_3_414RgbaOutputFileE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7Imf_3_414RgbaOutputFileE, ptr @_ZN7Imf_3_414RgbaOutputFileD1Ev, ptr @_ZN7Imf_3_414RgbaOutputFileD0Ev] }, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"No frame buffer was specified as the pixel data destination for image file \22\00", align 1
@_ZTVN7Imf_3_413RgbaInputFileE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7Imf_3_413RgbaInputFileE, ptr @_ZN7Imf_3_413RgbaInputFileD1Ev, ptr @_ZN7Imf_3_413RgbaInputFileD0Ev] }, align 8
@_ZTIN7Imf_3_414RgbaOutputFileE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_414RgbaOutputFileE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_414RgbaOutputFileE = constant [27 x i8] c"N7Imf_3_414RgbaOutputFileE\00", align 1
@_ZTIN7Imf_3_413RgbaInputFileE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_413RgbaInputFileE }, align 8
@_ZTSN7Imf_3_413RgbaInputFileE = constant [26 x i8] c"N7Imf_3_413RgbaInputFileE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN7Imf_3_414RgbaOutputFile5ToYcaC1ERNS_10OutputFileENS_12RgbaChannelsE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN7Imf_3_414RgbaOutputFile5ToYcaC2ERNS_10OutputFileENS_12RgbaChannelsE
@_ZN7Imf_3_414RgbaOutputFile5ToYcaD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_414RgbaOutputFile5ToYcaD2Ev
@_ZN7Imf_3_414RgbaOutputFileC1EPKcRKNS_6HeaderENS_12RgbaChannelsEi = unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN7Imf_3_414RgbaOutputFileC2EPKcRKNS_6HeaderENS_12RgbaChannelsEi
@_ZN7Imf_3_414RgbaOutputFileC1ERNS_7OStreamERKNS_6HeaderENS_12RgbaChannelsEi = unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN7Imf_3_414RgbaOutputFileC2ERNS_7OStreamERKNS_6HeaderENS_12RgbaChannelsEi
@_ZN7Imf_3_414RgbaOutputFileC1EPKcRKN9Imath_3_23BoxINS3_4Vec2IiEEEES9_NS_12RgbaChannelsEfNS5_IfEEfNS_9LineOrderENS_11CompressionEi = unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, float, ptr, float, i32, i32, i32), ptr @_ZN7Imf_3_414RgbaOutputFileC2EPKcRKN9Imath_3_23BoxINS3_4Vec2IiEEEES9_NS_12RgbaChannelsEfNS5_IfEEfNS_9LineOrderENS_11CompressionEi
@_ZN7Imf_3_414RgbaOutputFileC1EPKciiNS_12RgbaChannelsEfN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionEi = unnamed_addr alias void (ptr, ptr, i32, i32, i32, float, ptr, float, i32, i32, i32), ptr @_ZN7Imf_3_414RgbaOutputFileC2EPKciiNS_12RgbaChannelsEfN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionEi
@_ZN7Imf_3_414RgbaOutputFileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_414RgbaOutputFileD2Ev
@_ZN7Imf_3_413RgbaInputFile7FromYcaC1ERNS_9InputPartENS_12RgbaChannelsE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFile7FromYcaC2ERNS_9InputPartENS_12RgbaChannelsE
@_ZN7Imf_3_413RgbaInputFile7FromYcaD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_413RgbaInputFile7FromYcaD2Ev
@_ZN7Imf_3_413RgbaInputFileC1EPKci = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EPKci
@_ZN7Imf_3_413RgbaInputFileC1ERNS_7IStreamEi = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2ERNS_7IStreamEi
@_ZN7Imf_3_413RgbaInputFileC1EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
@_ZN7Imf_3_413RgbaInputFileC1ERNS_7IStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2ERNS_7IStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
@_ZN7Imf_3_413RgbaInputFileC1EiPKci = unnamed_addr alias void (ptr, i32, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EiPKci
@_ZN7Imf_3_413RgbaInputFileC1EiRNS_7IStreamEi = unnamed_addr alias void (ptr, i32, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EiRNS_7IStreamEi
@_ZN7Imf_3_413RgbaInputFileC1EiPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = unnamed_addr alias void (ptr, i32, ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EiPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
@_ZN7Imf_3_413RgbaInputFileC1EiRNS_7IStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = unnamed_addr alias void (ptr, i32, ptr, ptr, i32), ptr @_ZN7Imf_3_413RgbaInputFileC2EiRNS_7IStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
@_ZN7Imf_3_413RgbaInputFileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_413RgbaInputFileD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_414RgbaOutputFile5ToYcaC2ERNS_10OutputFileENS_12RgbaChannelsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((0, 51), (52, 88)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imath_3_2::Vec3", align 8   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = trunc i32 %2 to i8                         ; 3 uses
  %5 = lshr i8 %4, 4
  %i.d = and i8 %5, 1
  store i8 %i.d, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  %6 = lshr i8 %4, 5
  %i.f = and i8 %6, 1
  store i8 %i.f, ptr %i.e, align 1, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 50
  %7 = lshr i8 %4, 3
  %i.h = and i8 %7, 1
  store i8 %i.h, ptr %i.g, align 2, !tbaa !27
  %i.i = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_410OutputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = load <2 x i32>, ptr %i.j, align 4, !tbaa !28 ; 3 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !30
  %i.q = load <2 x i32>, ptr %i.k, align 4, !tbaa !28
  %i.r = extractelement <2 x i32> %i.o, i64 0
  store i32 %i.r, ptr %i.m, align 4, !tbaa !31
  %i.s = sub <2 x i32> %i.q, %i.o
  %i.t = add <2 x i32> %i.s, splat (i32 1)
  store <2 x i32> %i.t, ptr %i.n, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.u, align 8, !tbaa !32
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !33, !nonnull !34, !align !35
  %i.w = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_410OutputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.x = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.w)
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.y, ptr %i.z, align 4, !tbaa !37
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = extractelement <2 x i32> %i.o, i64 1
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %spec.select, ptr %i.ac, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !33, !nonnull !34, !align !35
  %i.ae = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_410OutputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  call fastcc void @_ZN7Imf_3_412_GLOBAL__N_112ywFromHeaderERKNS_6HeaderE(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull align 8 dereferenceable(49) %i.ae)
  %i.af = load <2 x float>, ptr %3, align 8, !tbaa !39
  store <2 x float> %i.af, ptr %i.b, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.ah, ptr %i.ai, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !41
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nsw i64 %i.ak, 3                    ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 10, %bb.a ], [ %i.ao, %bb.b ] ; 3 uses
  %i.am = ashr i64 %i.al, %.0.i
  %i.an = icmp sgt i64 %i.am, 1
  %i.ao = add i64 %.0.i, 1                        ; 2 uses
  br i1 %i.an, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.ap = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, -64
  %i.ar = icmp sgt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %reass.sub20 = sub nsw i64 %i.ap, %i.al
  %i.as = add nsw i64 %reass.sub20, 64
  br label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

bb.e:                                             ; preds = %bb.c
  %i.at = shl nuw i64 1, %.0.i                    ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 64
  %i.av = icmp slt i64 %i.al, %i.au
  br i1 %i.av, label %bb.f, label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

bb.f:                                             ; preds = %bb.e
  %reass.sub19 = sub i64 %i.at, %i.al
  %i.aw = add i64 %reass.sub19, 64
  br label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %.012.i = phi i64 [ %i.as, %bb.d ], [ %i.aw, %bb.f ], [ 0, %bb.e ]
  %i.ax = lshr i64 %.012.i, 3                     ; 2 uses
  %i.ay = add nsw i64 %i.ax, %i.ak                ; 2 uses
  %i.az = mul nsw i64 %i.ay, 27
  %i.ba = icmp ugt i64 %i.az, 2305843009213693951
  %i.bb = mul i64 %i.ay, 216
  %i.bc = select i1 %i.ba, i64 -1, i64 %i.bb
  %i.bd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #25 ; 28 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !43
  %i.bf = load i32, ptr %i.n, align 8, !tbaa !41
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.ax, %i.bg                ; 26 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !44
  %.idx = shl nsw i64 %i.bh, 4
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !44
  %.idx22 = mul nsw i64 %i.bh, 24
  %i.bn = getelementptr inbounds i8, ptr %i.bd, i64 %.idx22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !44
  %.idx23 = shl nsw i64 %i.bh, 5
  %i.bp = getelementptr inbounds i8, ptr %i.bd, i64 %.idx23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !44
  %.idx24 = mul nsw i64 %i.bh, 40
  %i.br = getelementptr inbounds i8, ptr %i.bd, i64 %.idx24
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !44
  %.idx25 = mul nsw i64 %i.bh, 48
  %i.bt = getelementptr inbounds i8, ptr %i.bd, i64 %.idx25
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !44
  %.idx26 = mul nsw i64 %i.bh, 56
  %i.bv = getelementptr inbounds i8, ptr %i.bd, i64 %.idx26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !44
  %.idx27 = shl nsw i64 %i.bh, 6
  %i.bx = getelementptr inbounds i8, ptr %i.bd, i64 %.idx27
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !44
  %.idx28 = mul nsw i64 %i.bh, 72
  %i.bz = getelementptr inbounds i8, ptr %i.bd, i64 %.idx28
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !44
  %.idx29 = mul nsw i64 %i.bh, 80
  %i.cb = getelementptr inbounds i8, ptr %i.bd, i64 %.idx29
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !44
  %.idx30 = mul nsw i64 %i.bh, 88
  %i.cd = getelementptr inbounds i8, ptr %i.bd, i64 %.idx30
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !44
  %.idx31 = mul nsw i64 %i.bh, 96
  %i.cf = getelementptr inbounds i8, ptr %i.bd, i64 %.idx31
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !44
  %.idx32 = mul nsw i64 %i.bh, 104
  %i.ch = getelementptr inbounds i8, ptr %i.bd, i64 %.idx32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !44
  %.idx33 = mul nsw i64 %i.bh, 112
  %i.cj = getelementptr inbounds i8, ptr %i.bd, i64 %.idx33
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !44
  %.idx34 = mul nsw i64 %i.bh, 120
  %i.cl = getelementptr inbounds i8, ptr %i.bd, i64 %.idx34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !44
  %.idx35 = shl nsw i64 %i.bh, 7
  %i.cn = getelementptr inbounds i8, ptr %i.bd, i64 %.idx35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !44
  %.idx36 = mul nsw i64 %i.bh, 136
  %i.cp = getelementptr inbounds i8, ptr %i.bd, i64 %.idx36
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !44
  %.idx37 = mul nsw i64 %i.bh, 144
  %i.cr = getelementptr inbounds i8, ptr %i.bd, i64 %.idx37
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !44
  %.idx38 = mul nsw i64 %i.bh, 152
  %i.ct = getelementptr inbounds i8, ptr %i.bd, i64 %.idx38
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !44
  %.idx39 = mul nsw i64 %i.bh, 160
  %i.cv = getelementptr inbounds i8, ptr %i.bd, i64 %.idx39
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !44
  %.idx40 = mul nsw i64 %i.bh, 168
  %i.cx = getelementptr inbounds i8, ptr %i.bd, i64 %.idx40
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !44
  %.idx41 = mul nsw i64 %i.bh, 176
  %i.cz = getelementptr inbounds i8, ptr %i.bd, i64 %.idx41
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !44
  %.idx42 = mul nsw i64 %i.bh, 184
  %i.db = getelementptr inbounds i8, ptr %i.bd, i64 %.idx42
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !44
  %.idx43 = mul nsw i64 %i.bh, 192
  %i.dd = getelementptr inbounds i8, ptr %i.bd, i64 %.idx43
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !44
  %.idx44 = mul nsw i64 %i.bh, 200
  %i.df = getelementptr inbounds i8, ptr %i.bd, i64 %.idx44
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !44
  %.idx45 = mul nsw i64 %i.bh, 208
  %i.dh = getelementptr inbounds i8, ptr %i.bd, i64 %.idx45
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !44
  %i.dj = load i32, ptr %i.n, align 8, !tbaa !41  ; 2 uses
  %i.dk = add nsw i32 %i.dj, 26
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i32 %i.dj, -26
  %i.dn = shl nsw i64 %i.dl, 3
  %i.do = select i1 %i.dm, i64 -1, i64 %i.dn
  %i.dp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #25
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 312
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_412_GLOBAL__N_112rgbaChannelsERKNS_11ChannelListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.fb, ptr %8, align 8, !tbaa !71, !alias.scope !163
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.fc, align 8, !tbaa !73, !alias.scope !163
  store i8 0, ptr %i.fb, align 8, !tbaa !74, !alias.scope !163
  %i.fd = add i64 %i.fa, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.fd)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !73, !alias.scope !163
  %i.ff = sub i64 4611686018427387903, %i.fe
  %i.fg = icmp ult i64 %i.ff, %i.fa
  br i1 %i.fg, label %.invoke.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i122: ; preds = %bb.z
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ez, i64 noundef %i.fa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i123 unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i122
  %i.fi = load i64, ptr %i.fc, align 8, !tbaa !73, !alias.scope !163
  %i.fj = and i64 %i.fi, -2
  %i.fk = icmp eq i64 %i.fj, 4611686018427387902
  br i1 %i.fk, label %.invoke.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i124

.invoke.i.i125:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i123, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #28
          to label %.cont.i.i126 unwind label %bb.aa

.cont.i.i126:                                     ; preds = %.invoke.i.i125
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i123
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit127 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i124, %.invoke.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i122, %bb.y
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %8, align 8, !tbaa !75, !alias.scope !163 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fb
  br i1 %i.fo, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit127: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i124
  %i.fp = invoke noundef ptr @_ZNK7Imf_3_411ChannelList11findChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit127
  %i.fq = icmp ne ptr %i.fp, null
  %i.fr = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fb
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.ab
  %i.ft = load i64, ptr %i.fb, align 8, !tbaa !74
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.fv = phi i1 [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ true, %bb.x ]
  %i.fw = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ed
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.critedge
  %i.fy = load i64, ptr %i.ed, align 8, !tbaa !74
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  %.not37 = icmp eq ptr %i.dr, null
  %.not36 = icmp eq ptr %i.cq, null
  %.not35 = icmp eq ptr %i.bp, null
  %.not34 = icmp eq ptr %i.ao, null
  %.not = icmp ne ptr %i.s, null
  %spec.select = zext i1 %.not to i32             ; 2 uses
  %i.ga = or disjoint i32 %spec.select, 2
  %spec.select42 = select i1 %.not34, i32 %spec.select, i32 %i.ga ; 2 uses
  %i.gb = or disjoint i32 %spec.select42, 4
  %spec.select43 = select i1 %.not35, i32 %spec.select42, i32 %i.gb ; 2 uses
  %i.gc = or disjoint i32 %spec.select43, 8
  %spec.select44 = select i1 %.not36, i32 %spec.select43, i32 %i.gc ; 2 uses
  %i.gd = or i32 %spec.select44, 16
  %spec.select45 = select i1 %.not37, i32 %spec.select44, i32 %i.gd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ge = or i32 %spec.select45, 32
  %spec.select46 = select i1 %i.fv, i32 %i.ge, i32 %spec.select45
  ret i32 %spec.select46

bb.ac:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit115
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit127
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fb
  br i1 %i.gi, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ad, %bb.aa
  %.sink = phi ptr [ %i.fn, %bb.aa ], [ %i.gh, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.fm, %bb.aa ], [ %i.gg, %bb.ad ]
  %i.gj = load i64, ptr %i.fb, align 8, !tbaa !74
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gk) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ad, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.aa ], [ %i.gg, %bb.ad ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.gf, %bb.ac ]
  %i.gl = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ed
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ae
  %i.gn = load i64, ptr %i.ed, align 8, !tbaa !74
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void @_ZN7Imf_3_410OutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
  ret void
}

declare void @_ZN7Imf_3_410OutputFile18updatePreviewImageEPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFile13setYCRoundingEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store i32 %1, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  store i32 %2, ptr %i.f, align 4, !tbaa !47
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFile13breakScanLineEiiic(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void @_ZN7Imf_3_410OutputFile13breakScanLineEiiic(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4)
  ret void
}

declare void @_ZN7Imf_3_410OutputFile13breakScanLineEiiic(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_413RgbaInputFile7FromYcaC2ERNS_9InputPartENS_12RgbaChannelsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) initializes((0, 49), (52, 92)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imath_3_2::Vec3", align 8   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = trunc i32 %2 to i8
  %5 = lshr i8 %4, 5
  %i.d = and i8 %5, 1
  store i8 %i.d, ptr %i.c, align 8, !tbaa !78
  %i.e = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.m = load <2 x i32>, ptr %i.f, align 4, !tbaa !28 ; 3 uses
  %i.n = load i32, ptr %i.h, align 4, !tbaa !30
  %i.o = load <2 x i32>, ptr %i.g, align 4, !tbaa !28
  %i.p = extractelement <2 x i32> %i.m, i64 0
  store i32 %i.p, ptr %i.i, align 4, !tbaa !79
  %i.q = extractelement <2 x i32> %i.m, i64 1     ; 2 uses
  store i32 %i.q, ptr %i.j, align 8, !tbaa !80
  store i32 %i.n, ptr %i.k, align 4, !tbaa !165
  %i.r = sub <2 x i32> %i.o, %i.m
  %i.s = add <2 x i32> %i.r, splat (i32 1)
  store <2 x i32> %i.s, ptr %i.l, align 8, !tbaa !28
  %i.t = add nsw i32 %i.q, -29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.t, ptr %i.u, align 8, !tbaa !81
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !82, !nonnull !34, !align !35
  %i.w = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(49) %i.w)
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.y, ptr %i.z, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !82, !nonnull !34, !align !35
  %i.ab = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  call fastcc void @_ZN7Imf_3_412_GLOBAL__N_112ywFromHeaderERKNS_6HeaderE(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull align 8 dereferenceable(49) %i.ab)
  %i.ac = load <2 x float>, ptr %3, align 8, !tbaa !39
  store <2 x float> %i.ac, ptr %i.b, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.ae, ptr %i.af, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !84
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 3                    ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 10, %bb.a ], [ %i.al, %bb.b ] ; 3 uses
  %i.aj = ashr i64 %i.ai, %.0.i
  %i.ak = icmp sgt i64 %i.aj, 1
  %i.al = add i64 %.0.i, 1                        ; 2 uses
  br i1 %i.ak, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = add nsw i64 %i.am, -64
  %i.ao = icmp sgt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %reass.sub26 = sub nsw i64 %i.am, %i.ai
  %i.ap = add nsw i64 %reass.sub26, 64
  br label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = shl nuw i64 1, %.0.i                    ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 64
  %i.as = icmp slt i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.f, label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

bb.f:                                             ; preds = %bb.e
  %reass.sub25 = sub i64 %i.aq, %i.ai
  %i.at = add i64 %reass.sub25, 64
  br label %_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit

_ZN7Imf_3_412_GLOBAL__N_112cachePaddingEl.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %.012.i = phi i64 [ %i.ap, %bb.d ], [ %i.at, %bb.f ], [ 0, %bb.e ]
  %i.au = lshr i64 %.012.i, 3                     ; 3 uses
  %i.av = add nsw i64 %i.au, %i.ah                ; 2 uses
  %i.aw = and i64 %i.av, 504403158265495552
  %.not = icmp eq i64 %i.aw, 0
  %i.ax = shl i64 %i.av, 8
  %i.ay = select i1 %.not, i64 %i.ax, i64 -1
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #25 ; 33 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !85
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !84
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add nsw i64 %i.au, %i.bc                ; 28 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.az, ptr %i.be, align 8, !tbaa !44
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !44
  %.idx = shl nsw i64 %i.bd, 4
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %.idx
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !44
  %.idx29 = mul nsw i64 %i.bd, 24
  %i.bj = getelementptr inbounds i8, ptr %i.az, i64 %.idx29
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !44
  %.idx30 = shl nsw i64 %i.bd, 5
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %.idx30
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !44
  %.idx31 = mul nsw i64 %i.bd, 40
  %i.bn = getelementptr inbounds i8, ptr %i.az, i64 %.idx31
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !44
  %.idx32 = mul nsw i64 %i.bd, 48
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %.idx32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !44
  %.idx33 = mul nsw i64 %i.bd, 56
  %i.br = getelementptr inbounds i8, ptr %i.az, i64 %.idx33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !44
  %.idx34 = shl nsw i64 %i.bd, 6
  %i.bt = getelementptr inbounds i8, ptr %i.az, i64 %.idx34
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !44
  %.idx35 = mul nsw i64 %i.bd, 72
  %i.bv = getelementptr inbounds i8, ptr %i.az, i64 %.idx35
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !44
  %.idx36 = mul nsw i64 %i.bd, 80
  %i.bx = getelementptr inbounds i8, ptr %i.az, i64 %.idx36
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !44
  %.idx37 = mul nsw i64 %i.bd, 88
  %i.bz = getelementptr inbounds i8, ptr %i.az, i64 %.idx37
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !44
  %.idx38 = mul nsw i64 %i.bd, 96
  %i.cb = getelementptr inbounds i8, ptr %i.az, i64 %.idx38
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !44
  %.idx39 = mul nsw i64 %i.bd, 104
  %i.cd = getelementptr inbounds i8, ptr %i.az, i64 %.idx39
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !44
  %.idx40 = mul nsw i64 %i.bd, 112
  %i.cf = getelementptr inbounds i8, ptr %i.az, i64 %.idx40
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !44
  %.idx41 = mul nsw i64 %i.bd, 120
  %i.ch = getelementptr inbounds i8, ptr %i.az, i64 %.idx41
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !44
  %.idx42 = shl nsw i64 %i.bd, 7
  %i.cj = getelementptr inbounds i8, ptr %i.az, i64 %.idx42
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !44
  %.idx43 = mul nsw i64 %i.bd, 136
  %i.cl = getelementptr inbounds i8, ptr %i.az, i64 %.idx43
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !44
  %.idx44 = mul nsw i64 %i.bd, 144
  %i.cn = getelementptr inbounds i8, ptr %i.az, i64 %.idx44
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !44
  %.idx45 = mul nsw i64 %i.bd, 152
  %i.cp = getelementptr inbounds i8, ptr %i.az, i64 %.idx45
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !44
  %.idx46 = mul nsw i64 %i.bd, 160
  %i.cr = getelementptr inbounds i8, ptr %i.az, i64 %.idx46
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !44
  %.idx47 = mul nsw i64 %i.bd, 168
  %i.ct = getelementptr inbounds i8, ptr %i.az, i64 %.idx47
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !44
  %.idx48 = mul nsw i64 %i.bd, 176
  %i.cv = getelementptr inbounds i8, ptr %i.az, i64 %.idx48
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !44
  %.idx49 = mul nsw i64 %i.bd, 184
  %i.cx = getelementptr inbounds i8, ptr %i.az, i64 %.idx49
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !44
  %.idx50 = mul nsw i64 %i.bd, 192
  %i.cz = getelementptr inbounds i8, ptr %i.az, i64 %.idx50
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !44
  %.idx51 = mul nsw i64 %i.bd, 200
  %i.db = getelementptr inbounds i8, ptr %i.az, i64 %.idx51
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !44
  %.idx52 = mul nsw i64 %i.bd, 208
  %i.dd = getelementptr inbounds i8, ptr %i.az, i64 %.idx52
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !44
  %.idx53 = mul nsw i64 %i.bd, 216
  %i.df = getelementptr inbounds i8, ptr %i.az, i64 %.idx53
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !44
  %.idx54 = mul nsw i64 %i.bd, 224
  %i.dh = getelementptr inbounds i8, ptr %i.az, i64 %.idx54
end_hunk_1
