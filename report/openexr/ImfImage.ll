Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfImage?download=true
inline.NumInlined: 584
inline.NumDeleted: 241
begin_hunk_0
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Imath_3_2::Box" = type { %"class.Imath_3_2::Vec2", %"class.Imath_3_2::Vec2" }
%"class.Imath_3_2::Vec2" = type { i32, i32 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.22" = type { i8 }
%"class.std::set" = type { %"class.std::_Rb_tree.5" }
%"class.std::_Rb_tree.5" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Imf_3_4::Image::ChannelInfo>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_ = comdat any

$_ZN7Imf_3_419renameChannelsInMapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5Image11ChannelInfoESt4lessIS7_ESaISt4pairIKS7_S9_EEEEEvRKS1_IS7_S7_SB_SaISC_ISD_S7_EEERT_ = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EEaSERKSH_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_M_copyILb0ENSH_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISB_ESM_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_nodeclIRKSB_EEPSt13_Rb_tree_nodeISB_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTVN7Imf_3_45ImageE = constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN7Imf_3_45ImageE, ptr @_ZN7Imf_3_45ImageD1Ev, ptr @_ZN7Imf_3_45ImageD0Ev, ptr @_ZN7Imf_3_45Image6resizeERKN9Imath_3_23BoxINS1_4Vec2IiEEEENS_9LevelModeENS_17LevelRoundingModeE, ptr @_ZN7Imf_3_45Image5levelEi, ptr @_ZNK7Imf_3_45Image5levelEi, ptr @_ZN7Imf_3_45Image5levelEii, ptr @_ZNK7Imf_3_45Image5levelEii, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [64 x i8] c"Number of levels query for image must specify x or y direction.\00", align 1
@_ZTIN7Iex_3_48LogicExcE = external constant ptr
@.str.1 = private unnamed_addr constant [49 x i8] c"Cannot get data window for invalid image level (\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c").\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.4 = private unnamed_addr constant [55 x i8] c"Cannot get level width for invalid image level number \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Cannot get level height for invalid image level number \00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Cannot shift image horizontally by \00", align 1
@.str.8 = private unnamed_addr constant [121 x i8] c" pixels.  The shift distance must be a multiple of the x sampling rate of all channels, but the x sampling rate channel \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Cannot shift image vertically by \00", align 1
@.str.11 = private unnamed_addr constant [121 x i8] c" pixels.  The shift distance must be a multiple of the y sampling rate of all channels, but the y sampling rate channel \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Cannot rename image channel \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c".  The image does not have a channel called \00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c".  The image already has a channel called \00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Cannot rename image channels.  More than one channel would be named \22\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"Cannot access image level with invalid level number (\00", align 1
@_ZTIN7Imf_3_45ImageE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_45ImageE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_45ImageE = constant [17 x i8] c"N7Imf_3_45ImageE\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Invalid level size for image resize.\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Invalid data window for image resize.\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN7Imf_3_45ImageD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_45ImageD2Ev
@_ZN7Imf_3_45Image11ChannelInfoC1ENS_9PixelTypeEiib = hidden unnamed_addr alias void (ptr, i32, i32, i32, i1), ptr @_ZN7Imf_3_45Image11ChannelInfoC2ENS_9PixelTypeEiib

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7Imf_3_45ImageC2Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 56)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7Imf_3_45ImageE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_45ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 24)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7Imf_3_45ImageE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph.i, label %._crit_edge16.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i, label %._crit_edge16.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %i.i = phi i64 [ %i.q, %._crit_edge.i ], [ %i.c, %.preheader.lr.ph.i ]
  %i.j = phi i64 [ %i.r, %._crit_edge.i ], [ %i.g, %.preheader.lr.ph.i ] ; 2 uses
  %i.k = phi i64 [ %i.s, %._crit_edge.i ], [ %i.g, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge16.i:                                  ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.a
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef 0) #23
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %._crit_edge16.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._crit_edge13.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %._crit_edge13.i

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.pre23.i = load i64, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.q = phi i64 [ %.pre23.i, %._crit_edge.loopexit.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.r = phi i64 [ %i.af, %._crit_edge.loopexit.i ], [ %i.j, %.preheader.i ]
  %i.s = phi i64 [ %i.af, %._crit_edge.loopexit.i ], [ %i.k, %.preheader.i ]
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %i.t = icmp sgt i64 %i.q, %indvars.iv.next21.i
  br i1 %i.t, label %.preheader.i, label %._crit_edge16.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.u = phi i64 [ %i.af, %bb.d ], [ %i.j, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.v = phi i64 [ %i.af, %bb.d ], [ %i.k, %.preheader.i ]
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.x = mul nsw i64 %i.v, %indvars.iv20.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #25, !inline_history !31
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.af = phi i64 [ %i.u, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, %indvars.iv.next.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !32

._crit_edge13.i:                                  ; preds = %bb.b, %.noexc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.aj)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge13.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #22
  unreachable

bb.f:                                             ; preds = %._crit_edge13.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.ap, align 8, !tbaa !33
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #24
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !19
  br label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEED2Ev.exit

_ZN7Imf_3_47Array2DIPNS_10ImageLevelEED2Ev.exit:  ; preds = %bb.f, %bb.g
  %i.as = phi ptr [ null, %bb.f ], [ %.pre, %bb.g ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.as)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #22
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEED2Ev.exit
  ret void

bb.i:                                             ; preds = %._crit_edge16.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_45Image11clearLevelsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((8, 24)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader, label %._crit_edge16

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.i = phi i64 [ %i.q, %._crit_edge ], [ %i.c, %.preheader.lr.ph ]
  %i.j = phi i64 [ %i.r, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %i.k = phi i64 [ %i.s, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge16:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge16
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit

_ZN7Imf_3_47Array2DIPNS_10ImageLevelEE11resizeEraseEll.exit: ; preds = %._crit_edge16, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  ret void

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre23 = load i64, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.q = phi i64 [ %.pre23, %._crit_edge.loopexit ], [ %i.i, %.preheader ] ; 2 uses
  %i.r = phi i64 [ %i.af, %._crit_edge.loopexit ], [ %i.j, %.preheader ]
  %i.s = phi i64 [ %i.af, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.t = icmp sgt i64 %i.q, %indvars.iv.next21
  br i1 %i.t, label %.preheader, label %._crit_edge16, !llvm.loop !26

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.u = phi i64 [ %i.af, %bb.d ], [ %i.j, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.v = phi i64 [ %i.af, %bb.d ], [ %i.k, %.preheader ]
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.x = mul nsw i64 %i.v, %indvars.iv20
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #25
  %.pre = load i64, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.af = phi i64 [ %i.u, %.lr.ph ], [ %.pre, %bb.c ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, %indvars.iv.next
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !32
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image13clearChannelsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge13

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.preheader, label %._crit_edge13

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i64 [ %i.u, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i64 [ %i.v, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.j = phi i64 [ %i.w, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge13:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.n)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge13
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #22
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit: ; preds = %._crit_edge13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.q, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.q, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.t, align 8, !tbaa !33
  ret void

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre20 = load i64, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.u = phi i64 [ %.pre20, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.v = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ %i.i, %.preheader ]
  %i.w = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ %i.j, %.preheader ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.x = icmp sgt i64 %i.u, %indvars.iv.next18
  br i1 %i.x, label %.preheader, label %._crit_edge13, !llvm.loop !34

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.y = phi i64 [ %i.ai, %bb.d ], [ %i.i, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.z = phi i64 [ %i.ai, %bb.d ], [ %i.j, %.preheader ]
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.ab = mul nsw i64 %i.z, %indvars.iv17
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi i64 [ %i.y, %.lr.ph ], [ %.pre, %bb.c ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, %indvars.iv.next
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !35
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7Imf_3_45ImageD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7Imf_3_45Image9levelModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7Imf_3_45Image17levelRoundingModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7Imf_3_45Image9numLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #25
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7Imf_3_45Image10numXLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48LogicExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7Imf_3_45Image10numYLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image10dataWindowEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image18dataWindowForLevelEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image18dataWindowForLevelEii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_45Image18dataWindowForLevelEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp sgt i64 %i.d, %i.b
  %i.f = icmp sgt i32 %2, -1
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !20
  %i.j = icmp sgt i64 %i.i, %i.h
  br i1 %i.j, label %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit, label %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread

_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit:   ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = mul nsw i64 %i.d, %i.h
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread, label %bb.j

_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %1)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.e
  %i.w = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit.thread, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %_ZNK7Imf_3_45Image18levelNumberIsValidEii.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  ret ptr %i.z

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK7Imf_3_45Image18levelNumberIsValidEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = icmp sgt i64 %i.d, %i.b
  %i.f = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !20
  %i.j = icmp sgt i64 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = mul nsw i64 %i.d, %i.h
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp ne ptr %i.p, null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.c ], [ %i.q, %bb.d ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.r
}

declare void @_Z13iex_debugTrapv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

declare void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN7Iex_3_46ArgExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -2147483648) i32 @_ZNK7Imf_3_45Image10levelWidthEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %.not = icmp slt i32 %1, %i.d
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.4, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.c
  %i.i = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !48
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = tail call fastcc noundef i32 @_ZN7Imf_3_412_GLOBAL__N_19levelSizeElliNS_17LevelRoundingModeE(i64 noundef %i.n, i64 noundef %i.q, i32 noundef %1, i32 noundef %i.s)
  ret i32 %i.t

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZN7Imf_3_412_GLOBAL__N_19levelSizeElliNS_17LevelRoundingModeE(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = icmp slt i64 %1, %0
  %reass.sub.i = sub i64 %1, %0
  %i.b = add i64 %reass.sub.i, 1                  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.b, 2147483647
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.19, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.h = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.q unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  %i.l = shl nuw i64 1, %i.k
  %i.m = sdiv i64 %i.b, %i.l                      ; 2 uses
  %i.n = icmp eq i32 %3, 1
  %i.o = shl i64 %i.m, %i.k
  %i.p = icmp slt i64 %i.o, %i.b
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  %i.q = zext i1 %or.cond to i64
  %spec.select = add nsw i64 %i.m, %i.q           ; 2 uses
  %i.r = icmp sgt i64 %spec.select, 2147483647
  br i1 %i.r, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.19, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.i
  %i.u = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.q unwind label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.w, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 1)
  %i.x = trunc nuw nsw i64 %.sroa.speculated to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.015 = phi i32 [ %i.x, %bb.n ], [ 0, %bb.a ]
  ret i32 %.015

bb.p:                                             ; preds = %bb.m, %bb.g
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.g ], [ %.pn, %bb.m ]
  resume { ptr, i32 } %.pn19.pn

bb.q:                                             ; preds = %bb.j, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -2147483648) i32 @_ZNK7Imf_3_45Image11levelHeightEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %.not = icmp slt i32 %1, %i.d
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.6, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.c
  %i.i = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
  %i.t = tail call fastcc noundef i32 @_ZN7Imf_3_412_GLOBAL__N_19levelSizeElliNS_17LevelRoundingModeE(i64 noundef %i.n, i64 noundef %i.q, i32 noundef %1, i32 noundef %i.s)
  ret i32 %i.t

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image6resizeERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.b, i32 noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image6resizeERKN9Imath_3_23BoxINS1_4Vec2IiEEEENS_9LevelModeENS_17LevelRoundingModeE(ptr noundef nonnull align 8 dereferenceable(104) initializes((8, 24)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %7 = alloca %"class.Imath_3_2::Box", align 4    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph.i, label %._crit_edge16.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i, label %._crit_edge16.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %i.i = phi i64 [ %i.q, %._crit_edge.i ], [ %i.c, %.preheader.lr.ph.i ]
  %i.j = phi i64 [ %i.r, %._crit_edge.i ], [ %i.g, %.preheader.lr.ph.i ] ; 2 uses
  %i.k = phi i64 [ %i.s, %._crit_edge.i ], [ %i.g, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

._crit_edge16.i:                                  ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.a
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef 0) #23
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %._crit_edge16.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %bb.e

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.pre23.i = load i64, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.q = phi i64 [ %.pre23.i, %._crit_edge.loopexit.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.r = phi i64 [ %i.af, %._crit_edge.loopexit.i ], [ %i.j, %.preheader.i ]
  %i.s = phi i64 [ %i.af, %._crit_edge.loopexit.i ], [ %i.k, %.preheader.i ]
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %i.t = icmp sgt i64 %i.q, %indvars.iv.next21.i
  br i1 %i.t, label %.preheader.i, label %._crit_edge16.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.u = phi i64 [ %i.af, %bb.d ], [ %i.j, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.v = phi i64 [ %i.af, %bb.d ], [ %i.k, %.preheader.i ]
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.x = mul nsw i64 %i.v, %indvars.iv20.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #25, !inline_history !31
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.af = phi i64 [ %i.u, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, %indvars.iv.next.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !32

bb.e:                                             ; preds = %bb.b, %.noexc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  %i.ah = load i32, ptr %1, align 4, !tbaa !52    ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !53 ; 3 uses
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52 ; 3 uses
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !53 ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = add nsw i64 %i.ao, 1                    ; 2 uses
  %i.at = icmp slt i64 %i.as, %i.ai
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add nsw i64 %i.ar, 1                    ; 2 uses
  %i.av = icmp slt i64 %i.au, %i.al
  br i1 %i.av, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc50 unwind label %bb.ao

.noexc50:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %.noexc51 unwind label %bb.ao

.noexc51:                                         ; preds = %.noexc50
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.20, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc51
  %i.ay = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.x unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc51
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ay) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn32.i = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ba, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.l:                                             ; preds = %bb.f
  %i.bb = icmp slt i32 %i.ah, -1073741822
  %i.bc = icmp slt i32 %i.ak, -1073741822
  %or.cond35.i = or i1 %i.bb, %i.bc
  %i.bd = icmp sgt i32 %i.an, 1073741822
  %or.cond36.i = or i1 %i.bd, %or.cond35.i
  %i.be = icmp sgt i32 %i.aq, 1073741822
  %or.cond37.i = or i1 %i.be, %or.cond36.i
  br i1 %or.cond37.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc52 unwind label %bb.ao

.noexc52:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc53 unwind label %bb.ao

.noexc53:                                         ; preds = %.noexc52
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.20, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38.i unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38.i: ; preds = %.noexc53
  %i.bh = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38.i
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.x unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc53
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.bh) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn30.i = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bj, %bb.p ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

bb.r:                                             ; preds = %bb.l
  %i.bk = icmp slt i32 %i.an, %i.ah               ; 2 uses
  %reass.sub.i = sub nsw i64 %i.ao, %i.ai
  %i.bl = add nsw i64 %reass.sub.i, 1             ; 3 uses
  %.0.i.i = select i1 %i.bk, i64 0, i64 %i.bl     ; 4 uses
  %i.bm = icmp slt i32 %i.aq, %i.ak               ; 2 uses
  %reass.sub43.i = sub nsw i64 %i.ar, %i.al
  %i.bn = add nsw i64 %reass.sub43.i, 1           ; 3 uses
  %.0.i40.i = select i1 %i.bm, i64 0, i64 %i.bn   ; 4 uses
  %i.bo = or i64 %.0.i40.i, %.0.i.i
  %or.cond.i = icmp slt i64 %i.bo, 0
  br i1 %or.cond.i, label %bb.s, label %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_Z13iex_debugTrapv()
          to label %.noexc54 unwind label %bb.ao

.noexc54:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %.noexc55 unwind label %bb.ao

.noexc55:                                         ; preds = %.noexc54
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.20, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i: ; preds = %.noexc55
  %i.br = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc55
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.br) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.bs, %bb.u ], [ %i.bt, %bb.v ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

bb.x:                                             ; preds = %bb.t, %bb.n, %bb.h
  unreachable

_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit: ; preds = %bb.r
  switch i32 %2, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumXLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit [
    i32 0, label %_ZN7Imf_3_412_GLOBAL__N_117computeNumYLevelsERKN9Imath_3_23BoxINS1_4Vec2IlEEEENS_9LevelModeENS_17LevelRoundingModeE.exit
    i32 1, label %bb.y
    i32 2, label %bb.ac
  ]

bb.y:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_118validateDataWindowERKN9Imath_3_23BoxINS1_4Vec2IlEEEE.exit
  %i.bu = sub nsw i64 %i.au, %i.al
  %.0.i8.i = select i1 %i.bm, i64 0, i64 %i.bu
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %.0.i.i, i64 %.0.i8.i) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_45Image11shiftPixelsEii:bb.a
._crit_edge:                                      ; preds = %bb.q, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load <4 x i32>, ptr %i.d, align 8, !tbaa !10
  %i.f = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %2, i64 1
  %i.h = shufflevector <4 x i32> %i.g, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = add nsw <4 x i32> %i.e, %i.h
  store <4 x i32> %i.i, ptr %i.d, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge65

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i64, ptr %i.m, align 8, !tbaa !24   ; 3 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.preheader, label %._crit_edge65

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %.sroa.041.060 = phi ptr [ %i.be, %bb.q ], [ %i.b, %bb.a ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !68
  %i.s = srem i32 %1, %i.r
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 32
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.7, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef %1)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.8, i64 noundef 120)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.c
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !76
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.9, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ae = load i32, ptr %i.t, align 4, !tbaa !68
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ae)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.d
  %i.ah = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.u unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.c, %bb.b, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ah) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn30 = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !69
  %i.am = srem i32 %2, %i.al
  %.not28 = icmp eq i32 %i.am, 0
  br i1 %.not28, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 32
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.10, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.j
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef %2)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.11, i64 noundef 120)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.k
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !76
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.at, i64 noundef %i.av)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38 unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.9, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38
  %i.ay = load i32, ptr %i.an, align 8, !tbaa !69
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.ay)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.l
  %i.bb = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.u unwind label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %bb.k, %bb.j, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.bd, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.041.060) #27 ; 2 uses
  %.not49 = icmp eq ptr %i.be, %i.c
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !77

bb.r:                                             ; preds = %bb.p, %bb.h
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.h ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %.pn30.pn

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge63
  %i.bf = phi i64 [ %i.bj, %._crit_edge63 ], [ %i.k, %.preheader.lr.ph ]
  %i.bg = phi i64 [ %i.bk, %._crit_edge63 ], [ %i.o, %.preheader.lr.ph ] ; 2 uses
  %i.bh = phi i64 [ %i.bl, %._crit_edge63 ], [ %i.o, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge63 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph62, label %._crit_edge63

._crit_edge65:                                    ; preds = %._crit_edge63, %.preheader.lr.ph, %._crit_edge
  ret void

._crit_edge63.loopexit:                           ; preds = %bb.t
  %.pre74 = load i64, ptr %i.j, align 8, !tbaa !20
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %.preheader
  %i.bj = phi i64 [ %.pre74, %._crit_edge63.loopexit ], [ %i.bf, %.preheader ] ; 2 uses
  %i.bk = phi i64 [ %i.bx, %._crit_edge63.loopexit ], [ %i.bg, %.preheader ]
  %i.bl = phi i64 [ %i.bx, %._crit_edge63.loopexit ], [ %i.bh, %.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bm = icmp sgt i64 %i.bj, %indvars.iv.next72
  br i1 %i.bm, label %.preheader, label %._crit_edge65, !llvm.loop !78

.lr.ph62:                                         ; preds = %.preheader, %bb.t
  %i.bn = phi i64 [ %i.bx, %bb.t ], [ %i.bg, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %i.bo = phi i64 [ %i.bx, %bb.t ], [ %i.bh, %.preheader ]
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.bq = mul nsw i64 %i.bo, %indvars.iv71
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph62
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i32 noundef %1, i32 noundef %2)
  %.pre = load i64, ptr %i.m, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph62, %bb.s
  %i.bx = phi i64 [ %i.bn, %.lr.ph62 ], [ %.pre, %bb.s ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, %indvars.iv.next
  br i1 %i.by, label %.lr.ph62, label %._crit_edge63.loopexit, !llvm.loop !79

bb.u:                                             ; preds = %bb.m, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image13insertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9PixelTypeEiib(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = invoke noundef nonnull align 4 dereferenceable(13) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = zext i1 %5 to i8
  store i32 %2, ptr %i.b, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %4, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.c, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge28

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.preheader, label %._crit_edge28

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.k = phi i64 [ %i.p, %._crit_edge ], [ %i.e, %.preheader.lr.ph ]
  %i.l = phi i64 [ %i.q, %._crit_edge ], [ %i.i, %.preheader.lr.ph ] ; 2 uses
  %i.m = phi i64 [ %i.r, %._crit_edge ], [ %i.i, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge28:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre36 = load i64, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.p = phi i64 [ %.pre36, %._crit_edge.loopexit ], [ %i.k, %.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ %i.l, %.preheader ]
  %i.r = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ %i.m, %.preheader ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.s = icmp sgt i64 %i.p, %indvars.iv.next33
  br i1 %i.s, label %.preheader, label %._crit_edge28, !llvm.loop !82

bb.d:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.u = phi i64 [ %i.ae, %bb.f ], [ %i.l, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.v = phi i64 [ %i.ae, %bb.f ], [ %i.m, %.preheader ]
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.x = mul nsw i64 %i.v, %indvars.iv32
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5)
          to label %._crit_edge35 unwind label %bb.d

._crit_edge35:                                    ; preds = %bb.e
  %.pre = load i64, ptr %i.g, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge35, %.lr.ph
  %i.ae = phi i64 [ %.pre, %._crit_edge35 ], [ %i.u, %.lr.ph ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, %indvars.iv.next
  br i1 %i.af, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !83

bb.g:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.o, %bb.c ]
  %.023 = extractvalue { ptr, i32 } %.pn, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.023) #25 ; 0 uses
  invoke void @_ZN7Imf_3_45Image12eraseChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #26
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ah

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(13) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.22", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !85

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %1, ptr %2, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image12eraseChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.preheader, label %._crit_edge19

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i64 [ %i.ai, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i64 [ %i.aj, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.j = phi i64 [ %i.ak, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge19:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !76   ; 4 uses
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.x = sub i64 %i.s, %i.p
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !85

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.p) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.ag = sub i64 %i.p, %i.ab
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre26 = load i64, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi i64 [ %.pre26, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.aj = phi i64 [ %i.aw, %._crit_edge.loopexit ], [ %i.i, %.preheader ]
  %i.ak = phi i64 [ %i.aw, %._crit_edge.loopexit ], [ %i.j, %.preheader ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.al = icmp sgt i64 %i.ai, %indvars.iv.next24
  br i1 %i.al, label %.preheader, label %._crit_edge19, !llvm.loop !88

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.am = phi i64 [ %i.aw, %bb.e ], [ %i.i, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.an = phi i64 [ %i.aw, %bb.e ], [ %i.j, %.preheader ]
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.ap = mul nsw i64 %i.an, %indvars.iv23
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.aw = phi i64 [ %i.am, %.lr.ph ], [ %.pre, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %indvars.iv.next
  br i1 %i.ax, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !89

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.ay = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #25 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !90
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #24
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISD_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISD_E.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 80) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !33
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !33
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %._crit_edge19, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISD_E.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image13insertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(13) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !95, !range !71, !noundef !72
  %i.h = trunc nuw i8 %i.g to i1
  tail call void @_ZN7Imf_3_45Image13insertChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9PixelTypeEiib(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i1 noundef zeroext %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image13renameChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76   ; 5 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread86

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !75
  %i.h = load ptr, ptr %1, align 8, !tbaa !75
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread86

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread86: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread86
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.u = sub i64 %i.p, %i.b
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !85

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.b) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ac = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ad = sub i64 %i.b, %i.y
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0           ; 2 uses
  %spec.select.i.i = select i1 %i.ae, ptr %i.m, ptr %.19.i.i.i ; 2 uses
  br i1 %i.ae, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i45

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread86, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.ah = load ptr, ptr %1, align 8, !tbaa !75
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !76
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.al = load ptr, ptr %2, align 8, !tbaa !75
  %i.am = load i64, ptr %i.c, align 8, !tbaa !76
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.al, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40 unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.14, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40
  %i.ap = load ptr, ptr %1, align 8, !tbaa !75
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !76
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.aq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42 unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42
  %i.at = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7Imf_3_45Image13renameChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.aa unwind label %bb.f

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.at) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn36 = phi { ptr, i32 } [ %i.au, %bb.f ], [ %i.av, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.y

.lr.ph.i.i.i45:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51, %.lr.ph.i.i.i45
  %.012.i.i.i46 = phi ptr [ %i.l, %.lr.ph.i.i.i45 ], [ %.1.i.i.i56, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51 ] ; 4 uses
  %.0811.i.i.i47 = phi ptr [ %i.m, %.lr.ph.i.i.i45 ], [ %.19.i.i.i53, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i46, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i48 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.ay) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i48, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i70, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i49

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i49: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i46, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bc = tail call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i.i48) #25 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i50, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i70, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i70: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i49, %bb.i
  %i.bd = sub i64 %i.ay, %i.d
  %spec.select7.i.i.i.i.i.i.i71 = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i72 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i71, i64 2147483647)
  %.0.i6.i.i.i.i.i.i73 = trunc nsw i64 %.08.i.i.i.i.i.i.i72 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i70, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i49
  %.0.i.i.i.i.i.i52 = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i49 ], [ %.0.i6.i.i.i.i.i.i73, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i70 ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.i52, 0       ; 2 uses
  %.19.i.i.i53 = select i1 %i.be, ptr %.0811.i.i.i47, ptr %.012.i.i.i46 ; 4 uses
  %.1.in.v.i.i.i54 = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i55 = getelementptr inbounds nuw i8, ptr %.012.i.i.i46, i64 %.1.in.v.i.i.i54
  %.1.i.i.i56 = load ptr, ptr %.1.in.i.i.i55, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.1.i.i.i56, null
  br i1 %.not.i.i.i57, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i58, label %bb.i, !llvm.loop !85

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i58: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i51
  %i.bf = icmp eq ptr %.19.i.i.i53, %i.m
  br i1 %i.bf, label %.critedge.preheader, label %bb.j

.critedge.preheader:                              ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i62, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i58
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.preheader.lr.ph, label %.critedge._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !24 ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.preheader, label %.critedge._crit_edge

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i58
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i53, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i59 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.d) ; 2 uses
  %i.bp = icmp eq i64 %.sroa.speculated.i.i.i.i.i59, 0
  br i1 %i.bp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i60

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.19.i.i.i53, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75
  %i.bs = tail call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.br, i64 noundef %.sroa.speculated.i.i.i.i.i59) #25 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i.i61, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i62

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i60, %bb.j
  %i.bt = sub i64 %i.d, %i.bo
  %spec.select7.i.i.i.i.i.i67 = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 -2147483648)
  %.08.i.i.i.i.i.i68 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i67, i64 2147483647)
  %.0.i6.i.i.i.i.i69 = trunc nsw i64 %.08.i.i.i.i.i.i68 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i62

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i62: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i60
  %.0.i.i.i.i.i63 = phi i32 [ %i.bs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i60 ], [ %.0.i6.i.i.i.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66 ]
  %i.bu = icmp slt i32 %.0.i.i.i.i.i63, 0
  br i1 %i.bu, label %.critedge.preheader, label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i62
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %bb.k
  %i.bx = load ptr, ptr %1, align 8, !tbaa !75
  %i.by = load i64, ptr %i.a, align 8, !tbaa !76
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76 unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76
  %i.cb = load ptr, ptr %2, align 8, !tbaa !75
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !76
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.cb, i64 noundef %i.cc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78 unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.15, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78
  %i.cf = load ptr, ptr %2, align 8, !tbaa !75
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !76
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  %i.cj = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.aa unwind label %bb.m

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75, %bb.k, %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cj) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.ck, %bb.m ], [ %i.cl, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.y

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.cm = phi i64 [ %i.cr, %.critedge ], [ %i.bh, %.preheader.lr.ph ]
  %i.cn = phi i64 [ %i.cs, %.critedge ], [ %i.bl, %.preheader.lr.ph ] ; 2 uses
  %i.co = phi i64 [ %i.ct, %.critedge ], [ %i.bl, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.critedge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %.critedge

.critedge._crit_edge:                             ; preds = %.critedge, %.preheader.lr.ph, %.critedge.preheader
  %i.cq = invoke noundef nonnull align 4 dereferenceable(13) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.t

.critedge.loopexit:                               ; preds = %bb.r
  %.pre97 = load i64, ptr %i.bg, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.cr = phi i64 [ %.pre97, %.critedge.loopexit ], [ %i.cm, %.preheader ] ; 2 uses
  %i.cs = phi i64 [ %i.dg, %.critedge.loopexit ], [ %i.cn, %.preheader ]
  %i.ct = phi i64 [ %i.dg, %.critedge.loopexit ], [ %i.co, %.preheader ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.cu = icmp sgt i64 %i.cr, %indvars.iv.next95
  br i1 %i.cu, label %.preheader, label %.critedge._crit_edge, !llvm.loop !96

bb.p:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.cw = phi i64 [ %i.dg, %bb.r ], [ %i.cn, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.cx = phi i64 [ %i.dg, %bb.r ], [ %i.co, %.preheader ]
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.cz = mul nsw i64 %i.cx, %indvars.iv94
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %._crit_edge unwind label %bb.p

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %i.bj, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %.lr.ph
  %i.dg = phi i64 [ %.pre, %._crit_edge ], [ %i.cw, %.lr.ph ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, %indvars.iv.next
  br i1 %i.dh, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !97

bb.s:                                             ; preds = %.critedge._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.cq, ptr noundef nonnull align 8 dereferenceable(13) %i.di, i64 13, i1 false), !tbaa.struct !98
  %i.dj = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %spec.select.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #25 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !75 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !90
  %i.dp = add i64 %i.do, 1
  tail call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 80) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !33
  %i.ds = add i64 %i.dr, -1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !33
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.t:                                             ; preds = %.critedge._crit_edge
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.p ], [ %i.dt, %bb.t ]
  %.2 = extractvalue { ptr, i32 } %.pn, 0
  %i.du = tail call ptr @__cxa_begin_catch(ptr %.2) #25 ; 0 uses
  invoke void @_ZN7Imf_3_45Image12eraseChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7Imf_3_45Image12eraseChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #26
          to label %bb.aa unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  ret void

bb.y:                                             ; preds = %bb.x, %bb.o, %bb.h
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.h ], [ %.pn34, %bb.o ], [ %i.dv, %bb.x ]
  resume { ptr, i32 } %.pn36.pn

bb.z:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #22
  unreachable

bb.aa:                                            ; preds = %bb.w, %bb.l, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_45Image14renameChannelsERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::set", align 8          ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not8595 = icmp eq ptr %i.i, %i.j
  br i1 %.not8595, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  invoke void @_ZN7Imf_3_419renameChannelsInMapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5Image11ChannelInfoESt4lessIS7_ESaISt4pairIKS7_S9_EEEEEvRKS1_IS7_S7_SB_SaISC_ISD_S7_EEERT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.preheader87 unwind label %bb.w

.preheader87:                                     ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge102

.preheader.lr.ph:                                 ; preds = %.preheader87
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.preheader, label %._crit_edge102

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.076.096 = phi ptr [ %i.i, %.lr.ph ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.076.096, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.076.096, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76   ; 4 uses
  %i.z = load ptr, ptr %i.v, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.ag = sub i64 %i.ab, %i.y
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ah, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ah, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !100

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ai = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.ai, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.y) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
end_hunk_2
begin_hunk_3_@_ZN7Imf_3_45Image14renameChannelsERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEE:bb.a
  %.1.in.i.i.i43 = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.1.in.v.i.i.i42
  %.1.i.i.i44 = load ptr, ptr %.1.in.i.i.i43, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.1.i.i.i44, null
  br i1 %.not.i.i.i45, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.i, !llvm.loop !103

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39
  %i.bp = icmp eq ptr %.19.i.i.i41, %i.b
  br i1 %i.bp, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i41.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %.0811.i.i.i35, ptr %.012.i.i.i34
  %.19.i.i.i41.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i41.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.bq = load i64, ptr %.19.i.i.i41.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i46 = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bf) ; 2 uses
  %i.br = icmp eq i64 %.sroa.speculated.i.i.i.i.i46, 0
  br i1 %i.br, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i53, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i47: ; preds = %bb.j
  %.19.i.i.i41.sroa.sel82.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %.0811.i.i.i35, ptr %.012.i.i.i34
  %.19.i.i.i41.sroa.sel82.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i41.sroa.sel82.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bs = load ptr, ptr %.19.i.i.i41.sroa.sel82.v.sroa.sel.v.sroa.sel, align 8, !tbaa !75
  %i.bt = call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bs, i64 noundef %.sroa.speculated.i.i.i.i.i46) #25 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i53, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i47, %bb.j
  %i.bu = sub i64 %i.bf, %i.bq
  %spec.select7.i.i.i.i.i.i54 = call i64 @llvm.smax.i64(i64 %i.bu, i64 -2147483648)
  %.08.i.i.i.i.i.i55 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i54, i64 2147483647)
  %.0.i6.i.i.i.i.i56 = trunc nsw i64 %.08.i.i.i.i.i.i55 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i53
  %.0.i.i.i.i.i50 = phi i32 [ %i.bt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i47 ], [ %.0.i6.i.i.i.i.i56, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i53 ]
  %i.bv = icmp slt i32 %.0.i.i.i.i.i50, 0
  br i1 %i.bv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  invoke void @_Z13iex_debugTrapv()
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.16, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  %i.by = load ptr, ptr %3, align 8, !tbaa !75
  %i.bz = load i64, ptr %i.n, align 8, !tbaa !76
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.by, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cc = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
          to label %bb.af unwind label %bb.q

bb.o:                                             ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

.loopexit:                                        ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.m, %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cc) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn25 = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %i.cg, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.s ], [ %i.ce, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.u

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.h, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.ch = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %.loopexit ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ci = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.m
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.ck = load i64, ptr %i.m, align 8, !tbaa !90
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.076.096) #27 ; 2 uses
  %.not85 = icmp eq ptr %i.cm, %i.j
  br i1 %.not85, label %._crit_edge, label %bb.b, !llvm.loop !104

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cn = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.m
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.u
  %i.cp = load i64, ptr %i.m, align 8, !tbaa !90
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.o
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.o ], [ %.pn25.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn25.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ad

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge100
  %i.cr = phi i64 [ %i.cz, %._crit_edge100 ], [ %i.p, %.preheader.lr.ph ]
  %i.cs = phi i64 [ %i.da, %._crit_edge100 ], [ %i.t, %.preheader.lr.ph ] ; 2 uses
  %i.ct = phi i64 [ %i.db, %._crit_edge100 ], [ %i.t, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge100 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph99, label %._crit_edge100

._crit_edge102:                                   ; preds = %._crit_edge100, %.preheader.lr.ph, %.preheader87
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.cv)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %._crit_edge102
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #22
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.w:                                             ; preds = %._crit_edge
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

._crit_edge100.loopexit:                          ; preds = %bb.z
  %.pre112 = load i64, ptr %i.o, align 8, !tbaa !20
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %.preheader
  %i.cz = phi i64 [ %.pre112, %._crit_edge100.loopexit ], [ %i.cr, %.preheader ] ; 2 uses
  %i.da = phi i64 [ %i.do, %._crit_edge100.loopexit ], [ %i.cs, %.preheader ]
  %i.db = phi i64 [ %i.do, %._crit_edge100.loopexit ], [ %i.ct, %.preheader ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.dc = icmp sgt i64 %i.cz, %indvars.iv.next107
  br i1 %i.dc, label %.preheader, label %._crit_edge102, !llvm.loop !105

bb.x:                                             ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

.lr.ph99:                                         ; preds = %.preheader, %bb.z
  %i.de = phi i64 [ %i.do, %bb.z ], [ %i.cs, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %.preheader ] ; 2 uses
  %i.df = phi i64 [ %i.do, %bb.z ], [ %i.ct, %.preheader ]
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.dh = mul nsw i64 %i.df, %indvars.iv106
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !29 ; 3 uses
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph99
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %._crit_edge111 unwind label %bb.x

._crit_edge111:                                   ; preds = %bb.y
  %.pre = load i64, ptr %i.r, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge111, %.lr.ph99
  %i.do = phi i64 [ %.pre, %._crit_edge111 ], [ %i.de, %.lr.ph99 ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, %indvars.iv.next
  br i1 %i.dp, label %.lr.ph99, label %._crit_edge100.loopexit, !llvm.loop !106

bb.aa:                                            ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.x ], [ %i.cy, %bb.w ]
  %.5 = extractvalue { ptr, i32 } %.pn, 0
  %i.dq = call ptr @__cxa_begin_catch(ptr %.5) #25 ; 0 uses
  invoke void @_ZN7Imf_3_45Image13clearChannelsEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #26
          to label %bb.af unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.ac
  %.pn25.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ac ], [ %.pn25.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn.pn

bb.ae:                                            ; preds = %bb.ac
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22
  unreachable

bb.af:                                            ; preds = %bb.ab, %bb.n
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN7Imf_3_419renameChannelsInMapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5Image11ChannelInfoESt4lessIS7_ESaISt4pairIKS7_S9_EEEEEvRKS1_IS7_S7_SB_SaISC_ISD_S7_EEERT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::map", align 8          ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not28 = icmp eq ptr %i.h, %i.i
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.n = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7Imf_3_45Image11ChannelInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7Imf_3_45Image11ChannelInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEEaSERKSF_.exit unwind label %bb.m ; 0 uses

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.020.029 = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !76   ; 4 uses
  %i.s = load ptr, ptr %i.o, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !76   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.u) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = call i32 @memcmp(ptr noundef %i.x, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.z = sub i64 %i.u, %i.r
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !100

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.ab, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.r) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ai = sub i64 %i.r, %i.ad
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %bb.b, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  br label %bb.e

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %spec.select = select i1 %i.aj, ptr %i.o, ptr %i.ak
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  %i.al = phi ptr [ %spec.select, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit ], [ %i.o, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread ] ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !101
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !76 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !102
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aq, ptr %3, align 8, !tbaa !75
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.ar, ptr %i.l, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.e
  %i.as = phi ptr [ %i.aq, %.noexc ], [ %i.l, %bb.e ] ; 2 uses
  switch i64 %i.ao, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
end_hunk_3
