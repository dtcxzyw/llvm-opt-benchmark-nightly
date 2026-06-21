inline.NumInlined: 2191
inline.NumDeleted: 816
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node" = type { ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair.23" = type { i64, %"class.std::vector.3" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.66" = type { i8 }
%"class.std::map.27" = type { %"class.std::_Rb_tree.28" }
%"class.std::_Rb_tree.28" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
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
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::tuple.79" = type { %"struct.std::_Tuple_impl.80" }
%"struct.std::_Tuple_impl.80" = type { %"struct.std::_Head_base.81" }
%"struct.std::_Head_base.81" = type { ptr }
%"class.OpenImageIO_v3_1_Imf__3_3_5::IDManifest::ChannelGroupManifest" = type <{ %"class.std::set", %"class.std::vector.3", i32, [4 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::map", %"struct.std::_Rb_tree_iterator", i8, [7 x i8] }>
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::map" = type { %"class.std::_Rb_tree.18" }
%"class.std::_Rb_tree.18" = type { %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__dso_handle = external hidden global i8
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"MurmurHash3_32\00", align 1
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"MurmurHash3_64\00", align 1
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E = global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"id2\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Unrecognized IDmanifest version\00", align 1
@_ZTIN7Iex_3_38InputExcE = external constant ptr
@.str.14 = private unnamed_addr constant [52 x i8] c"Bad common string length in IDmanifest string table\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"IDManifest too small\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Bad mapping table entry in IDManifest\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"ID manifest contains multiple entries for the same ID\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Bad string index in IDManifest\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"IDManifest decompression (zlib) failed.\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"IDManifest decompression (zlib) failed: mismatch in decompressed data size\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Error - IDManifest size error\00", align 1
@_ZTIN7Iex_3_36ArgExcE = external constant ptr
@.str.22 = private unnamed_addr constant [31 x i8] c"ID manifest compression failed\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"attempt to change number of components in manifest once entries have been added\00", align 1
@.str.24 = private unnamed_addr constant [80 x i8] c"Cannot insert single component attribute into manifest with multiple components\00", align 1
@.str.25 = private unnamed_addr constant [93 x i8] c"mismatch between number of components in manifest and number of components in inserted entry\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Cannot compute hash: unknown hashing scheme\00", align 1
@.str.27 = private unnamed_addr constant [90 x i8] c"not enough components inserted into previous entry in ID table before inserting new entry\00", align 1
@.str.28 = private unnamed_addr constant [91 x i8] c"attempt to insert too many strings into entry, or attempt to insert text before ID integer\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Internal error: too many strings in component\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"IDManifest too small for string size\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"IDManifest too small for string\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"IDManifest too small for variable length integer\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"IDManifest too small for string list size\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImfIDManifest.cpp, ptr null }]

@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC2Ev
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC1EPKcS2_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC2EPKcS2_
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC1ERKNS_20CompressedIDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC2ERKNS_20CompressedIDManifestE
@_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC2Ev
@_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC2ERKS0_
@_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestD1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestD2Ev
@_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC1ERKNS_10IDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestC2ERKNS_10IDManifestE
@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestC2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifestC2EPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 29 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.std::pair.23", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.3", align 8    ; 6 uses
  %i.f = load i32, ptr %1, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.g, ptr %i.e, align 8, !tbaa !7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #32
  br label %bb.eq

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader413 unwind label %bb.h

.preheader413:                                    ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !13     ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 5                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph:                                           ; preds = %.preheader413
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.x = icmp ugt i64 %i.ex, 2305843009213693951
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader413, %._crit_edge
  %.lcssa447761 = phi i64 [ %i.ex, %._crit_edge ], [ %i.p, %.preheader413 ] ; 5 uses
  %.lcssa454760 = phi i64 [ %i.ew, %._crit_edge ], [ %i.o, %.preheader413 ]
  %.lcssa461759 = phi ptr [ %i.et, %._crit_edge ], [ %i.l, %.preheader413 ]
  %.lcssa468758 = phi ptr [ %i.es, %._crit_edge ], [ %i.k, %.preheader413 ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa468758, %.lcssa461759
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = ashr exact i64 %.lcssa454760, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #34
          to label %.noexc126 unwind label %bb.aq ; 6 uses

.noexc126:                                        ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.lcssa447761 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !3
  %i.ab = add nsw i64 %.lcssa447761, -1           ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0                    ; 2 uses
  br i1 %i.ac, label %bb.am, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc126
  %i.ad = getelementptr i8, ptr %i.z, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ab, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  br label %bb.am

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.af = phi ptr [ %i.l, %.lr.ph ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ]
  %.080505 = phi i64 [ 1, %.lr.ph ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 4 uses
  %i.ag = getelementptr [32 x i8], ptr %i.af, i64 %.080505 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -32
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 255
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  br label %bb.l

bb.k:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

bb.l:                                             ; preds = %bb.i, %bb.j
  %.090 = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]      ; 4 uses
  %.083 = phi i64 [ %i.as, %bb.j ], [ %i.an, %bb.i ] ; 5 uses
  %i.au = icmp ugt i64 %.083, %i.aj
  br i1 %i.au, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.av = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull @.str.14)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.er unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  store ptr %i.r, ptr %7, align 8, !tbaa !23, !alias.scope !20
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !18, !noalias !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !20
  store i64 %.083, ptr %i.d, align 8, !tbaa !24, !noalias !20
  %i.ay = icmp samesign ugt i64 %.083, 15
  br i1 %i.ay, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.p
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc127 unwind label %bb.ak ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.az, ptr %7, align 8, !tbaa !18, !alias.scope !20
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !24, !noalias !20
  store i64 %i.ba, ptr %i.r, align 8, !tbaa !19, !alias.scope !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %bb.p
  %i.bb = phi ptr [ %i.az, %.noexc127 ], [ %i.r, %bb.p ] ; 2 uses
  switch i64 %.083, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !19
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ax, i64 %.083, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !24, !noalias !20 ; 2 uses
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !14, !alias.scope !20
  %i.be = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bg = load ptr, ptr %5, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.080505 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14, !noalias !25 ; 3 uses
  %i.bk = icmp ugt i64 %.090, %i.bj
  br i1 %i.bk, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i64 noundef %.090, i64 noundef %i.bj) #33
          to label %.noexc131 unwind label %.loopexit.split-lp415

.noexc131:                                        ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !18
  %i.dy = load i64, ptr %i.w, align 8, !tbaa !14
  store i64 %i.dy, ptr %i.dx, align 8, !tbaa !14
  %i.dz = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.dz, ptr %i.dm, align 8, !tbaa !19
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !19
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !18
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !14
  %i.ed = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.ed, ptr %i.dm, align 8, !tbaa !19
  %.not.i137 = icmp eq ptr %i.dl, null
  br i1 %.not.i137, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dl, ptr %6, align 8, !tbaa !18
  store i64 %i.ea, ptr %i.v, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %6, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ai, %bb.aj
  %i.ee = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dl, %bb.ai ], [ %i.v, %bb.aj ], [ %i.do, %bb.ae ]
  store i64 0, ptr %i.w, align 8, !tbaa !14
  store i8 0, ptr %i.ee, align 1, !tbaa !19
  %i.ef = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.v
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.eh = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  %i.ej = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.t
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = load i64, ptr %i.t, align 8, !tbaa !19
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.en = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.r
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ep = load i64, ptr %i.r, align 8, !tbaa !19
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.er = add nuw i64 %.080505, 1                 ; 2 uses
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 5                 ; 3 uses
  %i.ey = icmp ult i64 %i.er, %i.ex
  br i1 %i.ey, label %bb.i, label %._crit_edge, !llvm.loop !32

bb.ak:                                            ; preds = %.noexc10.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

.loopexit414:                                     ; preds = %.noexc10.i.i130
  %lpad.loopexit416 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.loopexit.split-lp415:                            ; preds = %bb.t
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

.loopexit419:                                     ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp420:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp420, %.loopexit419
  %lpad.phi423 = phi { ptr, i32 } [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ] ; 2 uses
  %i.fa = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.t
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.al
  %i.fc = load i64, ptr %i.t, align 8, !tbaa !19
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.al, %.loopexit414, %.loopexit.split-lp415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.pn117 = phi { ptr, i32 } [ %lpad.phi423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp415 ], [ %lpad.loopexit416, %.loopexit414 ], [ %lpad.phi423, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.fe = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.r
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.fg = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.ak
  %.pn117.pn = phi { ptr, i32 } [ %i.ez, %bb.ak ], [ %.pn117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

bb.am:                                            ; preds = %.noexc126, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa447761) #34
          to label %.noexc154 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit296.thread ; 5 uses

.noexc154:                                        ; preds = %bb.am
  %i.fj = getelementptr i8, ptr %i.fi, i64 %.lcssa447761 ; 2 uses
  store i8 0, ptr %i.fi, align 1, !tbaa !19
  br i1 %i.ac, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.an

bb.an:                                            ; preds = %.noexc154
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fk, i8 0, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.an, %.noexc154, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0353.0381 = phi ptr [ %i.z, %bb.an ], [ %i.z, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11358.0371 = phi ptr [ %i.aa, %bb.an ], [ %i.aa, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.11.0 = phi ptr [ %i.fj, %bb.an ], [ %i.fj, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0347.0 = phi ptr [ %i.fi, %bb.an ], [ %i.fi, %.noexc154 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !7   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  %i.fn = icmp ult ptr %2, %i.fm
  br i1 %i.fn, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.fo = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fo, ptr noundef nonnull @.str.15)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.er unwind label %bb.as

bb.aq:                                            ; preds = %bb.g, %bb.f
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit298

_ZNSt6vectorIcSaIcEED2Ev.exit296.thread:          ; preds = %bb.am
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ar:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #32
  br label %.body

bb.as:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.ft = load i32, ptr %i.fl, align 1            ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph521, label %._crit_edge522

.lr.ph521:                                        ; preds = %bb.at
  %i.fv = trunc i64 %.lcssa447761 to i32          ; 2 uses
  br label %bb.au

._crit_edge522:                                   ; preds = %._crit_edge513, %bb.at
  %.lcssa515 = phi ptr [ %i.fm, %bb.at ], [ %i.fz, %._crit_edge513 ] ; 3 uses
  store ptr %.lcssa515, ptr %i.e, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.lcssa515, i64 4 ; 3 uses
  %i.fx = icmp ult ptr %2, %i.fw
  br i1 %i.fx, label %bb.be, label %bb.bi

bb.au:                                            ; preds = %.lr.ph521, %._crit_edge513
  %.086519 = phi i32 [ 0, %.lr.ph521 ], [ %i.ha, %._crit_edge513 ]
  %.087518 = phi i32 [ 0, %.lr.ph521 ], [ %.289, %._crit_edge513 ]
  %i.fy = phi ptr [ %i.fm, %.lr.ph521 ], [ %i.fz, %._crit_edge513 ] ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = icmp ult ptr %2, %i.fz
  br i1 %i.ga, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  store ptr %i.fy, ptr %i.e, align 8
  %i.gb = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gb) #32
  br label %.body

bb.ax:                                            ; preds = %.invoke
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.au
  %i.ge = load i16, ptr %i.fy, align 1
  %i.gf = zext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gk = load i8, ptr %i.gh, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i167 = zext i8 %i.gk to i32
  %.sroa.6.0.insert.shift.i168 = shl nuw i32 %.sroa.6.0.insert.ext.i167, 24 ; 3 uses
  %.sroa.5.0.insert.ext.i169 = zext i8 %i.gi to i32
  %.sroa.5.0.insert.shift.i170 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i169, 16 ; 2 uses
  %.sroa.5.0.insert.insert.i171 = or disjoint i32 %.sroa.5.0.insert.shift.i170, %i.gf
  %.sroa.0.0.insert.insert.i176 = or disjoint i32 %.sroa.5.0.insert.insert.i171, %.sroa.6.0.insert.shift.i168 ; 2 uses
  %i.gl = load i16, ptr %i.gj, align 1
  %i.gm = zext i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 6
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 7
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !19
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i178 = zext i8 %i.gq to i32
  %.sroa.6.0.insert.shift.i179 = shl nuw i32 %.sroa.6.0.insert.ext.i178, 24 ; 2 uses
  %.sroa.5.0.insert.ext.i180 = zext i8 %i.gp to i32
  %.sroa.5.0.insert.shift.i181 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i180, 16
  %.sroa.5.0.insert.insert.i182 = or disjoint i32 %.sroa.5.0.insert.shift.i181, %i.gm
  %.sroa.0.0.insert.insert.i187 = or disjoint i32 %.sroa.5.0.insert.insert.i182, %.sroa.6.0.insert.shift.i179 ; 3 uses
  %i.gr = icmp slt i32 %.sroa.6.0.insert.shift.i168, 0
  %i.gs = icmp slt i32 %.sroa.6.0.insert.shift.i179, 0
  %or.cond = select i1 %i.gr, i1 true, i1 %i.gs
  %i.gt = icmp sgt i32 %.sroa.0.0.insert.insert.i176, %.sroa.0.0.insert.insert.i187
  %or.cond125 = select i1 %or.cond, i1 true, i1 %i.gt
  br i1 %or.cond125, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not107 = icmp slt i32 %.sroa.0.0.insert.insert.i176, %i.fv
  %.not108 = icmp samesign ult i32 %.sroa.0.0.insert.insert.i187, %i.fv
  %or.cond396 = select i1 %.not107, i1 %.not108, i1 false
  br i1 %or.cond396, label %.lr.ph512.preheader, label %bb.ba

.lr.ph512.preheader:                              ; preds = %bb.az
  %i.gu = or disjoint i32 %.sroa.6.0.insert.shift.i168, %.sroa.5.0.insert.shift.i170
  %i.gv = or disjoint i32 %i.gu, %i.gf
  %i.gw = zext nneg i32 %i.gv to i64
  br label %.lr.ph512

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr %i.fz, ptr %i.e, align 8
  %i.gx = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gx, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.bb

.invoke:                                          ; preds = %bb.av, %bb.ba
  %i.gy = phi ptr [ %i.gx, %bb.ba ], [ %i.gb, %bb.av ]
  invoke void @__cxa_throw(ptr nonnull %i.gy, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont unwind label %bb.ax

.cont:                                            ; preds = %.invoke
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gx) #32
  br label %.body

._crit_edge513:                                   ; preds = %bb.bd
  %i.ha = add nuw nsw i32 %.086519, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, %i.ft
  br i1 %exitcond.not, label %._crit_edge522, label %bb.au, !llvm.loop !34

.lr.ph512:                                        ; preds = %.lr.ph512.preheader, %bb.bd
  %indvars.iv = phi i64 [ %i.gw, %.lr.ph512.preheader ], [ %indvars.iv.next, %bb.bd ] ; 4 uses
  %.188510 = phi i32 [ %.087518, %.lr.ph512.preheader ], [ %.289, %bb.bd ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0347.0, i64 %indvars.iv ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !19
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %.lr.ph512._crit_edge

.lr.ph512._crit_edge:                             ; preds = %.lr.ph512
  %.pre634 = trunc nuw i64 %indvars.iv to i32
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph512
  %i.he = sext i32 %.188510 to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0353.0381, i64 %i.he
  %i.hg = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !3
  store i8 1, ptr %i.hb, align 1, !tbaa !19
  %i.hh = add nsw i32 %.188510, 1
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph512._crit_edge, %bb.bc
  %.pre-phi = phi i32 [ %.pre634, %.lr.ph512._crit_edge ], [ %i.hg, %bb.bc ]
  %.289 = phi i32 [ %.188510, %.lr.ph512._crit_edge ], [ %i.hh, %bb.bc ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not109.not = icmp slt i32 %.pre-phi, %.sroa.0.0.insert.insert.i187
  br i1 %.not109.not, label %.lr.ph512, label %._crit_edge513, !llvm.loop !35

bb.be:                                            ; preds = %._crit_edge522
  %i.hi = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hi, ptr noundef nonnull @.str.15)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.er unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hi) #32
  br label %.body

bb.bh:                                            ; preds = %bb.bj, %bb.bf
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %._crit_edge522
  %i.hl = load i32, ptr %.lcssa515, align 1       ; 3 uses
  store ptr %i.fw, ptr %i.e, align 8, !tbaa !7
  %i.hm = load ptr, ptr %0, align 8, !tbaa !36    ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ho, %i.hm
  br i1 %.not.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i ], [ %i.hm, %bb.bi ] ; 2 uses
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i.i.i) #32
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i199 = icmp eq ptr %i.hp, %i.ho
  br i1 %.not.i.i.i.i199, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !39
  %.pre = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit: ; preds = %bb.bi, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.hq = phi ptr [ %i.hm, %bb.bi ], [ %.pre, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.hr = sext i32 %i.hl to i64                   ; 4 uses
  %i.hs = ptrtoint ptr %i.hm to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 208               ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %i.hr
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit
  %i.hx = sub nuw nsw i64 %i.hr, %i.hv
  invoke void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hx)
          to label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit unwind label %bb.bh

bb.bk:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE5clearEv.exit
  %i.hy = icmp ugt i64 %i.hv, %i.hr
  br i1 %i.hy, label %bb.bl, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit

bb.bl:                                            ; preds = %bb.bk
  %i.hz = getelementptr inbounds nuw [208 x i8], ptr %i.hq, i64 %i.hr ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.hm, %i.hz
  br i1 %.not.i.i200, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %bb.bl, %.lr.ph.i.i.i.i201
  %.05.i.i.i.i202 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i201 ], [ %i.hz, %bb.bl ] ; 2 uses
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i.i.i202) #32
  %i.ia = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i202, i64 208 ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.ia, %i.hm
  br i1 %.not.i.i.i.i203, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204, label %.lr.ph.i.i.i.i201, !llvm.loop !40

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204: ; preds = %.lr.ph.i.i.i.i201
  store ptr %i.hz, ptr %i.hn, align 8, !tbaa !39
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit: ; preds = %bb.bj, %bb.bk, %bb.bl, %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i.i204
  %i.ib = icmp sgt i32 %i.hl, 0
  br i1 %i.ib, label %.lr.ph564, label %._crit_edge565

.lr.ph564:                                        ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.hl to i64
  br label %bb.bp

._crit_edge565:                                   ; preds = %._crit_edge562, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0347.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge565
  %i.ig = ptrtoint ptr %.sroa.11.0 to i64
  %i.ih = ptrtoint ptr %.sroa.0347.0 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0347.0, i64 noundef %i.ii) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge565, %bb.bm
  %.not.i.i.i206 = icmp eq ptr %.sroa.0353.0381, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ij = ptrtoint ptr %.sroa.11358.0371 to i64
  %i.ik = ptrtoint ptr %.sroa.0353.0381 to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.0381, i64 noundef %i.il) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.bn
  %i.im = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.in = load ptr, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.it, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.im, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.io = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !19
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.it, %i.in
  br i1 %.not.i.i.i207, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.im, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !42
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.bp:                                            ; preds = %.lr.ph564, %._crit_edge562
  %i.ja = phi ptr [ %i.fw, %.lr.ph564 ], [ %i.oz, %._crit_edge562 ] ; 5 uses
  %indvars.iv625 = phi i64 [ 0, %.lr.ph564 ], [ %indvars.iv.next626, %._crit_edge562 ] ; 2 uses
  %i.jb = load ptr, ptr %0, align 8, !tbaa !36
  %i.jc = getelementptr inbounds nuw [208 x i8], ptr %i.jb, i64 %indvars.iv625 ; 14 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 3 uses
  %i.je = icmp ugt ptr %i.jd, %2
  br i1 %i.je, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.jf = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, ptr noundef nonnull @.str.36)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.noexc212 unwind label %.loopexit.split-lp404

.noexc212:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jf) #32
  br label %.body

bb.bt:                                            ; preds = %bb.bp
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 2 uses
  store ptr %i.jh, ptr %i.e, align 8, !tbaa !7
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !19
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  store ptr %i.jj, ptr %i.e, align 8, !tbaa !7
  %i.jk = load i8, ptr %i.jh, align 1, !tbaa !19
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 3 ; 2 uses
  store ptr %i.jl, ptr %i.e, align 8, !tbaa !7
  %i.jm = load i8, ptr %i.jj, align 1, !tbaa !19
  store ptr %i.jd, ptr %i.e, align 8, !tbaa !7
  %i.jn = load i8, ptr %i.jl, align 1, !tbaa !19
  %.sroa.6.0.insert.ext.i.i = zext i8 %i.jn to i32
  %.sroa.6.0.insert.shift.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i, 24 ; 2 uses
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.jm to i32
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.jk to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.ji to i32
  %.sroa.5.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.jo = or disjoint i32 %.sroa.5.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %i.jo, %.sroa.6.0.insert.shift.i.i ; 3 uses
  %i.jp = sext i32 %.sroa.0.0.insert.insert.i.i to i64 ; 2 uses
  %i.jq = icmp slt i32 %.sroa.6.0.insert.shift.i.i, 0
  br i1 %i.jq, label %.noexc.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc213 unwind label %.loopexit.split-lp404

.noexc213:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.bt
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.insert.insert.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit, label %.noexc36.i

.noexc36.i:                                       ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.jr = shl nuw nsw i64 %i.jp, 3                ; 3 uses
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #34
          to label %.noexc214 unwind label %.loopexit403 ; 6 uses

.noexc214:                                        ; preds = %.noexc36.i
  store i64 0, ptr %i.js, align 8, !tbaa !24
  %i.jt = add nsw i64 %i.jp, -1                   ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc214
  %i.jv = getelementptr i8, ptr %i.js, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.jt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jv, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !24
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc214
  %wide.trip.count.i = zext nneg i32 %.sroa.0.0.insert.insert.i.i to i64 ; 2 uses
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jc, i64 40 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  br label %bb.by

.lr.ph.i:                                         ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %indvars.iv.next.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i ] ; 2 uses
  %i.kb = phi ptr [ %i.jd, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %i.kf, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i ] ; 2 uses
  %.not.i.i208903 = icmp ult ptr %i.kb, %2
  br i1 %.not.i.i208903, label %.lr.ph906, label %.lr.ph.i._crit_edge

bb.bu:                                            ; preds = %.lr.ph906
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i904, 7
  %.not.i.i208 = icmp ult ptr %i.kf, %2
  br i1 %.not.i.i208, label %.lr.ph906, label %.lr.ph.i._crit_edge, !llvm.loop !43

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %bb.bu
  %i.kc = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.kc, ptr noundef nonnull @.str.33)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.lr.ph.i._crit_edge
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.noexc38.i unwind label %bb.bx

.noexc38.i:                                       ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %.lr.ph.i._crit_edge
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kc) #32
  br label %.body.thread.i

.lr.ph906:                                        ; preds = %.lr.ph.i, %bb.bu
  %.010.i.i905 = phi i64 [ %i.kk, %bb.bu ], [ 0, %.lr.ph.i ]
  %i.ke = phi ptr [ %i.kf, %bb.bu ], [ %i.kb, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i.i904 = phi i64 [ %indvars.iv.next.i.i, %bb.bu ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1 ; 5 uses
  store ptr %i.kf, ptr %i.e, align 8, !tbaa !7
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !19  ; 2 uses
  %i.kh = and i8 %i.kg, 127
  %i.ki = zext nneg i8 %i.kh to i64
  %i.kj = shl i64 %i.ki, %indvars.iv.i.i904
  %i.kk = or i64 %i.kj, %.010.i.i905              ; 2 uses
  %.not12.i.i = icmp sgt i8 %i.kg, -1
  br i1 %.not12.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i, label %bb.bu, !llvm.loop !43

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit.i: ; preds = %.lr.ph906
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !44

bb.bx:                                            ; preds = %bb.bv
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jr) #35
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.preheader.i
  %i.kn = phi ptr [ %i.kf, %.preheader.i ], [ %i.ns, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 4 uses
  %indvars.iv95.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next96.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv95.i ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !24 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kp
  %i.kr = icmp ugt ptr %i.kq, %2
  br i1 %i.kr, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ks = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ks, ptr noundef nonnull @.str.31)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.ks, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.cs unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ks) #32
  br label %.body.thread.i

bb.cc:                                            ; preds = %bb.ca
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.cd:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.ic, ptr %4, align 8, !tbaa !23
  %i.kv = icmp eq ptr %i.kn, null
  %i.kw = icmp ne i64 %i.kp, 0
  %or.cond.i.i = and i1 %i.kv, %i.kw
  br i1 %or.cond.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc39.i unwind label %.loopexit.split-lp.i

.noexc39.i:                                       ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.kp, ptr %i.b, align 8, !tbaa !24
  %i.kx = icmp ugt i64 %i.kp, 15
  br i1 %i.kx, label %.noexc.i.i, label %._crit_edge.i.i.i209

end_hunk_1
