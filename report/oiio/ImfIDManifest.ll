inline.NumInlined: 2191
inline.NumDeleted: 816
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

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
  %3 = ptrtoint ptr %2 to i64                     ; 2 uses
  %4 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 29 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"struct.std::pair.23", align 8    ; 7 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 6 uses
  %i.e = load i32, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.f, ptr %i.d, align 8, !tbaa !7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #32
  br label %bb.ep

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.preheader413 unwind label %bb.h

.preheader413:                                    ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !13     ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 5                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph:                                           ; preds = %.preheader413
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.w = icmp ugt i64 %i.ex, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader413, %._crit_edge
  %.lcssa447762 = phi i64 [ %i.ex, %._crit_edge ], [ %i.o, %.preheader413 ] ; 5 uses
  %.lcssa454761 = phi i64 [ %i.ew, %._crit_edge ], [ %i.n, %.preheader413 ]
  %.lcssa461760 = phi ptr [ %i.et, %._crit_edge ], [ %i.k, %.preheader413 ]
  %.lcssa468759 = phi ptr [ %i.es, %._crit_edge ], [ %i.j, %.preheader413 ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa468759, %.lcssa461760
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = ashr exact i64 %.lcssa454761, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34
          to label %.noexc126 unwind label %bb.ao ; 6 uses

.noexc126:                                        ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.lcssa447762 ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.aa = add nsw i64 %.lcssa447762, -1           ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  br i1 %i.ab, label %bb.ak, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc126
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  br label %bb.ak

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.ae = phi ptr [ %i.k, %.lr.ph ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  %.080505 = phi i64 [ 1, %.lr.ph ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 4 uses
  %i.af = getelementptr [32 x i8], ptr %i.ae, i64 %.080505 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -32
  %i.ah = getelementptr i8, ptr %i.af, i64 -24    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 255
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  br label %bb.l

bb.k:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

bb.l:                                             ; preds = %bb.i, %bb.j
  %.090 = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]      ; 4 uses
  %.083 = phi i64 [ %i.ar, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.at = icmp ugt i64 %.083, %i.ai
  br i1 %i.at, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.au = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull @.str.14)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.eq unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.au) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !14, !noalias !20
  store ptr %i.q, ptr %8, align 8, !tbaa !23, !alias.scope !20
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !18, !noalias !20 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.083, i64 %i.aw) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !20
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !24, !noalias !20
  %i.ay = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ay, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.p
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc127 unwind label %bb.ai ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.az, ptr %8, align 8, !tbaa !18, !alias.scope !20
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !20
  store i64 %i.ba, ptr %i.q, align 8, !tbaa !19, !alias.scope !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %bb.p
  %i.bb = phi ptr [ %i.az, %.noexc127 ], [ %i.q, %bb.p ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !19
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.ax, i64 %spec.select.i.i.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !20 ; 2 uses
  store i64 %i.bd, ptr %i.r, align 8, !tbaa !14, !alias.scope !20
  %i.be = load ptr, ptr %8, align 8, !tbaa !18, !alias.scope !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bg = load ptr, ptr %6, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.080505 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14, !noalias !25 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a
.loopexit.split-lp.i:                             ; preds = %bb.cd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

bb.cq:                                            ; preds = %bb.co
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.ic
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.cq
  %i.nw = load i64, ptr %i.ic, align 8, !tbaa !19
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.nt, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %bb.cb, %bb.ca, %bb.bw, %bb.bv
  %.pn3184.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.kt, %bb.ca ], [ %i.ku, %bb.cb ], [ %i.kd, %bb.bv ], [ %i.km, %bb.bw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jr) #35
  br label %.body

bb.cr:                                            ; preds = %bb.bz
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit: ; preds = %._crit_edge.i, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.jc, i64 48 ; 4 uses
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %bb.cs unwind label %.loopexit403

bb.cs:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit
  %i.nz = load ptr, ptr %i.d, align 8, !tbaa !7   ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.ob = icmp ult ptr %2, %i.oa
  br i1 %i.ob, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.oc = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.oc, ptr noundef nonnull @.str.15)
          to label %.invoke831 unwind label %bb.cu

.invoke831:                                       ; preds = %bb.ct, %bb.cy
  %i.od = phi ptr [ %i.oo, %bb.cy ], [ %i.oc, %bb.ct ]
  invoke void @__cxa_throw(ptr nonnull %i.od, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont832 unwind label %.loopexit.split-lp409

.cont832:                                         ; preds = %.invoke831
  unreachable

.loopexit403:                                     ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit, %.noexc36.i
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp404:                            ; preds = %bb.bp, %.noexc.i
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cu:                                            ; preds = %bb.ct
  %i.oe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oc) #32
  br label %.body

.loopexit408:                                     ; preds = %bb.cv, %bb.cw
  %lpad.loopexit410 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp409:                            ; preds = %.invoke831
  %lpad.loopexit.split-lp411 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cv:                                            ; preds = %bb.cs
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store ptr %i.of, ptr %i.d, align 8, !tbaa !7
  %i.og = load i8, ptr %i.nz, align 1, !tbaa !19
  %i.oh = sext i8 %i.og to i32
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jc, i64 72
  store i32 %i.oh, ptr %i.oi, align 8, !tbaa !54
  %i.oj = getelementptr inbounds nuw i8, ptr %i.jc, i64 80
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readPascalStringERPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.oj)
          to label %bb.cw unwind label %.loopexit408

bb.cw:                                            ; preds = %bb.cv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.jc, i64 112
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readPascalStringERPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ok)
          to label %bb.cx unwind label %.loopexit408

bb.cx:                                            ; preds = %bb.cw
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !7   ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 5 ; 4 uses
  %i.on = icmp ult ptr %2, %i.om
  br i1 %i.on, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.oo = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull @.str.15)
          to label %.invoke831 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oo) #32
  br label %.body

bb.da:                                            ; preds = %bb.cx
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  %i.or = load i8, ptr %i.ol, align 1, !tbaa !19
  %i.os = load i32, ptr %i.oq, align 1            ; 2 uses
  store ptr %i.om, ptr %i.d, align 8, !tbaa !7
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph561, label %._crit_edge562

.lr.ph561:                                        ; preds = %bb.da
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jc, i64 144 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.jc, i64 160
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jc, i64 152 ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.jc, i64 184 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.jc, i64 56 ; 3 uses
  br label %bb.db

._crit_edge562:                                   ; preds = %._crit_edge556, %bb.da
  %i.oz = phi ptr [ %i.om, %bb.da ], [ %.lcssa538549.lcssa, %._crit_edge556 ]
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond628.not = icmp eq i64 %indvars.iv.next626, %wide.trip.count
  br i1 %exitcond628.not, label %._crit_edge565, label %bb.bn, !llvm.loop !72

bb.db:                                            ; preds = %.lr.ph561, %._crit_edge556
  %.promoted.i250 = phi ptr [ %i.om, %.lr.ph561 ], [ %.lcssa538549.lcssa, %._crit_edge556 ] ; 11 uses
  %.081559 = phi i32 [ 0, %.lr.ph561 ], [ %i.vi, %._crit_edge556 ]
  %.082558 = phi i64 [ 0, %.lr.ph561 ], [ %i.pz, %._crit_edge556 ]
  switch i8 %i.or, label %bb.dl [
    i8 0, label %bb.dc
    i8 1, label %bb.dh
  ]

bb.dc:                                            ; preds = %bb.db
  %i.pa = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 8 ; 2 uses
  %i.pb = icmp ult ptr %2, %i.pa
  br i1 %i.pb, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.pc = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull @.str.15)
          to label %.invoke833 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pc) #32
  br label %.body

bb.df:                                            ; preds = %.invoke833
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dg:                                            ; preds = %bb.dc
  %i.pf = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 1
  store ptr %i.pf, ptr %i.d, align 8, !tbaa !7
  %i.pg = load i64, ptr %.promoted.i250, align 1
  br label %.loopexit397

bb.dh:                                            ; preds = %bb.db
  %i.ph = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 4 ; 2 uses
  %i.pi = icmp ult ptr %2, %i.ph
  br i1 %i.pi, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pj = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, ptr noundef nonnull @.str.15)
          to label %.invoke833 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pj) #32
  br label %.body

bb.dk:                                            ; preds = %bb.dh
  %i.pl = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 1
  store ptr %i.pl, ptr %i.d, align 8, !tbaa !7
  %i.pm = load i32, ptr %.promoted.i250, align 1
  %i.pn = zext i32 %i.pm to i64
  br label %.loopexit397

bb.dl:                                            ; preds = %bb.db
  %.not.i252527 = icmp ult ptr %.promoted.i250, %2
  br i1 %.not.i252527, label %.lr.ph531.preheader, label %._crit_edge532

.lr.ph531.preheader:                              ; preds = %bb.dl
  %.promoted.i250617 = ptrtoint ptr %.promoted.i250 to i64
  %scevgep = getelementptr i8, ptr %.promoted.i250, i64 %3
  %i.po = sub i64 0, %.promoted.i250617
  %scevgep618 = getelementptr i8, ptr %scevgep, i64 %i.po ; 2 uses
  br label %.lr.ph531

bb.dm:                                            ; preds = %.lr.ph531
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251528, 7
  %exitcond619.not = icmp eq ptr %i.pt, %scevgep618
  br i1 %exitcond619.not, label %._crit_edge532, label %.lr.ph531, !llvm.loop !43

._crit_edge532:                                   ; preds = %bb.dl, %bb.dm
  %.lcssa525 = phi ptr [ %scevgep618, %bb.dm ], [ %.promoted.i250, %bb.dl ]
  store ptr %.lcssa525, ptr %i.d, align 8
  %i.pp = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pp, ptr noundef nonnull @.str.33)
          to label %.invoke833 unwind label %bb.dn

.invoke833:                                       ; preds = %bb.dd, %._crit_edge532, %bb.di
  %i.pq = phi ptr [ %i.pj, %bb.di ], [ %i.pp, %._crit_edge532 ], [ %i.pc, %bb.dd ]
  invoke void @__cxa_throw(ptr nonnull %i.pq, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont834 unwind label %bb.df

.cont834:                                         ; preds = %.invoke833
  unreachable

bb.dn:                                            ; preds = %._crit_edge532
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pp) #32
  br label %.body

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %bb.dm
  %.010.i529 = phi i64 [ %i.py, %bb.dm ], [ 0, %.lr.ph531.preheader ]
  %i.ps = phi ptr [ %i.pt, %bb.dm ], [ %.promoted.i250, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv.i251528 = phi i64 [ %indvars.iv.next.i253, %bb.dm ], [ 0, %.lr.ph531.preheader ] ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 1 ; 3 uses
  %i.pu = load i8, ptr %i.ps, align 1, !tbaa !19  ; 2 uses
  %i.pv = and i8 %i.pu, 127
  %i.pw = zext nneg i8 %i.pv to i64
  %i.px = shl i64 %i.pw, %indvars.iv.i251528
  %i.py = or i64 %i.px, %.010.i529                ; 2 uses
  %.not12.i = icmp sgt i8 %i.pu, -1
  br i1 %.not12.i, label %.loopexit397, label %bb.dm, !llvm.loop !43

.loopexit397:                                     ; preds = %.lr.ph531, %bb.dk, %bb.dg
  %.sink = phi ptr [ %i.pa, %bb.dg ], [ %i.ph, %bb.dk ], [ %i.pt, %.lr.ph531 ] ; 3 uses
  %.0 = phi i64 [ %i.pg, %bb.dg ], [ %i.pn, %bb.dk ], [ %i.py, %.lr.ph531 ]
  store ptr %.sink, ptr %i.d, align 8
  %i.pz = add i64 %.0, %.082558                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  store i64 %i.pz, ptr %10, align 8, !tbaa !76, !alias.scope !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !73
  %i.qa = load ptr, ptr %i.ov, align 8, !tbaa !78 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not10.i.i.i.i, label %.critedge.i259, label %.lr.ph.i.i.i.i257

.lr.ph.i.i.i.i257:                                ; preds = %.loopexit397, %.lr.ph.i.i.i.i257
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i257 ], [ %i.qa, %.loopexit397 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i257 ], [ %i.ow, %.loopexit397 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !24
  %i.qd = icmp ult i64 %i.qc, %i.pz               ; 2 uses
  %.19.i.i.i.i = select i1 %i.qd, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.qd, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i258 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i258, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i257, !llvm.loop !79

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i257
  %i.qe = icmp eq ptr %.19.i.i.i.i, %i.ow
  br i1 %i.qe, label %.critedge.i259, label %bb.do

bb.do:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i
  %i.qf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !24
  %i.qh = icmp ult i64 %i.pz, %i.qg
  br i1 %i.qh, label %.critedge.i259, label %bb.dv

.critedge.i259:                                   ; preds = %bb.do, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, %.loopexit397
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.do ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i ], [ %i.ow, %.loopexit397 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.ou, ptr %4, align 8, !tbaa !80
  %i.qi = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc320 unwind label %bb.dx ; 8 uses

.noexc320:                                        ; preds = %.critedge.i259
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32 ; 3 uses
  store i64 %i.pz, ptr %i.qj, align 8, !tbaa !82
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 40 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qk, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i8 0, i64 24, i1 false)
  store ptr %i.qi, ptr %i.if, align 8, !tbaa !84
  %i.qn = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ou, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.qj)
          to label %bb.dp unwind label %bb.ds     ; 2 uses

bb.dp:                                            ; preds = %.noexc320
  %i.qo = extractvalue { ptr, ptr } %i.qn, 0      ; 2 uses
  %i.qp = extractvalue { ptr, ptr } %i.qn, 1      ; 4 uses
  %.not.i317 = icmp eq ptr %i.qp, null
  br i1 %.not.i317, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i.i318 = icmp ne ptr %i.qo, null
  %i.qq = icmp eq ptr %i.qp, %i.ow
  %or.cond.i.i.i = select i1 %.not.i.i.i318, i1 true, i1 %i.qq
  br i1 %or.cond.i.i.i, label %.thread.i319, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qs = load i64, ptr %i.qj, align 8, !tbaa !24
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !24
  %i.qu = icmp ult i64 %i.qs, %i.qt
  br label %.thread.i319

.thread.i319:                                     ; preds = %bb.dr, %bb.dq
  %i.qv = phi i1 [ %i.qu, %bb.dr ], [ true, %bb.dq ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qv, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %i.ow) #32
  %i.qw = load i64, ptr %i.ox, align 8, !tbaa !45
  %i.qx = add i64 %i.qw, 1
  store i64 %i.qx, ptr %i.ox, align 8, !tbaa !45
  br label %bb.dz

bb.ds:                                            ; preds = %.noexc320
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body321

bb.dt:                                            ; preds = %bb.dp
  %i.qz = load ptr, ptr %i.qk, align 8, !tbaa !13 ; 3 uses
  %i.ra = load ptr, ptr %i.ql, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.qz, %i.ra
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.dt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.rg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.qz, %bb.dt ] ; 3 uses
  %i.rb = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !19
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rf) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rg, %i.ra
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.qk, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.dt
  %i.rh = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.qz, %bb.dt ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, label %bb.du

bb.du:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ri = load ptr, ptr %i.qm, align 8, !tbaa !42
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rh to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rh, i64 noundef %i.rl) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %bb.du, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef 64) #35
  br label %bb.dz

bb.dv:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.rm = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.rm, ptr noundef nonnull @.str.17)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  invoke void @__cxa_throw(ptr nonnull %i.rm, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.eq unwind label %.loopexit.split-lp399

bb.dx:                                            ; preds = %.critedge.i259
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %.body321

.body321:                                         ; preds = %bb.ds, %bb.dx
  %eh.lpad-body322 = phi { ptr, i32 } [ %i.rn, %bb.dx ], [ %i.qy, %bb.ds ]
  call void @_ZNSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #32
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i324, %.lr.ph.i.i.i.i324.prol.loopexit
  %.lcssa926 = phi ptr [ %.lcssa926.unr, %.lr.ph.i.i.i.i324.prol.loopexit ], [ %i.tf, %.lr.ph.i.i.i.i324 ]
  store ptr %.lcssa926, ptr %i.rw, align 8, !tbaa !10
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.eb:                                            ; preds = %bb.ea
  %i.tg = icmp ult i64 %i.sl, %i.se
  br i1 %i.tg, label %bb.ec, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
          to label %.noexc329 unwind label %.loopexit.split-lp399

.noexc329:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.eb
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.sc, i64 %i.se)
  %i.th = add nuw nsw i64 %.sroa.speculated.i.i, %i.sc
  %i.ti = call i64 @llvm.umin.i64(i64 %i.th, i64 288230376151711743) ; 2 uses
  %i.tj = shl nuw nsw i64 %i.ti, 5
  %i.tk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tj) #34
          to label %.noexc330 unwind label %.loopexit398 ; 4 uses

.noexc330:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.sb ; 3 uses
  %xtraiter986 = and i64 %i.se, 3                 ; 2 uses
  %lcmp.mod987.not = icmp eq i64 %xtraiter986, 0
  br i1 %lcmp.mod987.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.noexc330, %.lr.ph.i.i.i30.i.prol
  %.08.i.i.i31.i.prol = phi ptr [ %i.tp, %.lr.ph.i.i.i30.i.prol ], [ %i.tl, %.noexc330 ] ; 4 uses
  %.057.i.i.i32.i.prol = phi i64 [ %i.to, %.lr.ph.i.i.i30.i.prol ], [ %i.se, %.noexc330 ]
  %prol.iter988 = phi i64 [ %prol.iter988.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.noexc330 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 16 ; 2 uses
  store ptr %i.tm, ptr %.08.i.i.i31.i.prol, align 8, !tbaa !23
  %i.tn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 8
  store i64 0, ptr %i.tn, align 8, !tbaa !14
  store i8 0, ptr %i.tm, align 8, !tbaa !19
  %i.to = add i64 %.057.i.i.i32.i.prol, -1        ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 32 ; 2 uses
  %prol.iter988.next = add i64 %prol.iter988, 1   ; 2 uses
  %prol.iter988.cmp.not = icmp eq i64 %prol.iter988.next, %xtraiter986
  br i1 %prol.iter988.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !90

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.noexc330
  %.08.i.i.i31.i.unr = phi ptr [ %i.tl, %.noexc330 ], [ %i.tp, %.lr.ph.i.i.i30.i.prol ]
  %.057.i.i.i32.i.unr = phi i64 [ %i.se, %.noexc330 ], [ %i.to, %.lr.ph.i.i.i30.i.prol ]
  %i.tq = sub nsw i64 %i.sc, %i.rv
  %i.tr = icmp ugt i64 %i.tq, -4
  br i1 %i.tr, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.08.i.i.i31.i = phi ptr [ %i.ue, %.lr.ph.i.i.i30.i ], [ %.08.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i32.i = phi i64 [ %i.ud, %.lr.ph.i.i.i30.i ], [ %.057.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  %i.ts = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 16 ; 2 uses
  store ptr %i.ts, ptr %.08.i.i.i31.i, align 8, !tbaa !23
  %i.tt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 8
  store i64 0, ptr %i.tt, align 8, !tbaa !14
  store i8 0, ptr %i.ts, align 8, !tbaa !19
  %i.tu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 32
  %i.tv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 48 ; 2 uses
  store ptr %i.tv, ptr %i.tu, align 8, !tbaa !23
  %i.tw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 40
  store i64 0, ptr %i.tw, align 8, !tbaa !14
  store i8 0, ptr %i.tv, align 8, !tbaa !19
  %i.tx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 64
  %i.ty = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 80 ; 2 uses
  store ptr %i.ty, ptr %i.tx, align 8, !tbaa !23
  %i.tz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 72
  store i64 0, ptr %i.tz, align 8, !tbaa !14
  store i8 0, ptr %i.ty, align 8, !tbaa !19
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 96
  %i.ub = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 112 ; 2 uses
  store ptr %i.ub, ptr %i.ua, align 8, !tbaa !23
  %i.uc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 104
  store i64 0, ptr %i.uc, align 8, !tbaa !14
  store i8 0, ptr %i.ub, align 8, !tbaa !19
  %i.ud = add i64 %.057.i.i.i32.i, -4             ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 128
  %.not.i.i.i33.i.3 = icmp eq i64 %i.ud, 0
  br i1 %.not.i.i.i33.i.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !89

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i326 = icmp eq ptr %i.ry, %i.rx
  br i1 %.not10.i.i.i.i326, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i327 = phi ptr [ %i.us, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.tk, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ur, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ry, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.uf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 16 ; 3 uses
  store ptr %i.uf, ptr %.012.i.i.i.i327, align 8, !tbaa !23, !alias.scope !91, !noalias !94
  %i.ug = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !18, !alias.scope !94, !noalias !91 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328

bb.ed:                                            ; preds = %.lr.ph.i.i.i37.i
  %i.uj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !14, !alias.scope !94, !noalias !91 ; 3 uses
  %i.ul = icmp ult i64 %i.uk, 16
  call void @llvm.assume(i1 %i.ul)
  %i.um = add nuw nsw i64 %i.uk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uf, ptr noundef nonnull align 8 dereferenceable(1) %i.uh, i64 %i.um, i1 false), !alias.scope !96
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328: ; preds = %.lr.ph.i.i.i37.i
  store ptr %i.ug, ptr %.012.i.i.i.i327, align 8, !tbaa !18, !alias.scope !91, !noalias !94
  %i.un = load i64, ptr %i.uh, align 8, !tbaa !19, !alias.scope !94, !noalias !91
  store i64 %i.un, ptr %i.uf, align 8, !tbaa !19, !alias.scope !91, !noalias !94
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !94, !noalias !91
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328, %bb.ed
  %i.uo = phi i64 [ %i.uk, %bb.ed ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328 ]
  %i.up = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 8
  store i64 %i.uo, ptr %i.uq, align 8, !tbaa !14, !alias.scope !91, !noalias !94
  store ptr %i.uh, ptr %.0911.i.i.i.i, align 8, !tbaa !18, !alias.scope !94, !noalias !91
  store i64 0, ptr %i.up, align 8, !tbaa !14, !alias.scope !94, !noalias !91
  store i8 0, ptr %i.uh, align 8, !tbaa !19, !alias.scope !94, !noalias !91
  %i.ur = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 32
  %.not.i.i.i38.i = icmp eq ptr %i.ur, %i.rx
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !97

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.ry, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ut = load ptr, ptr %i.sf, align 8, !tbaa !42
  %i.uu = ptrtoint ptr %i.ut to i64
  %i.uv = sub i64 %i.uu, %i.sa
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.uv) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i: ; preds = %bb.ee, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.tk, ptr %i.rp, align 8, !tbaa !13
  %i.uw = getelementptr inbounds nuw [32 x i8], ptr %i.tl, i64 %i.se
  store ptr %i.uw, ptr %i.rw, align 8, !tbaa !10
  %i.ux = getelementptr inbounds nuw [32 x i8], ptr %i.tk, i64 %i.ti
  store ptr %i.ux, ptr %i.sf, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ef:                                            ; preds = %bb.dz
  %i.uy = icmp ult i64 %i.rv, %i.sc
  br i1 %i.uy, label %bb.eg, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.eg:                                            ; preds = %bb.ef
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.ru ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.rx, %i.uz
  br i1 %.not.i.i276, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i277

.lr.ph.i.i.i.i277:                                ; preds = %bb.eg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280
  %.05.i.i.i.i278 = phi ptr [ %i.vf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280 ], [ %i.uz, %bb.eg ] ; 3 uses
  %i.va = load ptr, ptr %.05.i.i.i.i278, align 8, !tbaa !18 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i278, i64 16 ; 2 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279: ; preds = %.lr.ph.i.i.i.i277
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !19
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ve) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280: ; preds = %.lr.ph.i.i.i.i277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279
  %i.vf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i278, i64 32 ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %i.vf, %i.rx
  br i1 %.not.i.i.i.i281, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282, label %.lr.ph.i.i.i.i277, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280
  store ptr %i.uz, ptr %i.rw, align 8, !tbaa !10
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, %bb.ef, %bb.eg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282
  %i.vg = load ptr, ptr %i.oy, align 8, !tbaa !10
  %i.vh = load ptr, ptr %i.ny, align 8, !tbaa !13
  %.not566 = icmp eq ptr %i.vg, %i.vh
  br i1 %.not566, label %._crit_edge556, label %.lr.ph555

._crit_edge556:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.lcssa538549.lcssa = phi ptr [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ], [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  store ptr %.lcssa538549.lcssa, ptr %i.d, align 8
  %i.vi = add nuw nsw i32 %.081559, 1             ; 2 uses
  %exitcond624.not = icmp eq i32 %i.vi, %i.os
  br i1 %exitcond624.not, label %._crit_edge562, label %bb.db, !llvm.loop !98

.lr.ph555:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.061554 = phi i64 [ %i.wm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 2 uses
  %.lcssa538549553 = phi ptr [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 5 uses
  %.not.i288539 = icmp ult ptr %.lcssa538549553, %2
  br i1 %.not.i288539, label %.lr.ph543.preheader, label %._crit_edge544

.lr.ph543.preheader:                              ; preds = %.lr.ph555
  %.lcssa538549553621 = ptrtoint ptr %.lcssa538549553 to i64
  %scevgep620 = getelementptr i8, ptr %.lcssa538549553, i64 %3
  %i.vj = sub i64 0, %.lcssa538549553621
  %scevgep622 = getelementptr i8, ptr %scevgep620, i64 %i.vj ; 2 uses
  br label %.lr.ph543

bb.eh:                                            ; preds = %.lr.ph543
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i286540, 7
  %exitcond623.not = icmp eq ptr %i.vn, %scevgep622
  br i1 %exitcond623.not, label %._crit_edge544, label %.lr.ph543, !llvm.loop !43

._crit_edge544:                                   ; preds = %.lr.ph555, %bb.eh
  %.lcssa537 = phi ptr [ %scevgep622, %bb.eh ], [ %.lcssa538549553, %.lr.ph555 ]
  store ptr %.lcssa537, ptr %i.d, align 8
  %i.vk = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.vk, ptr noundef nonnull @.str.33)
          to label %.invoke835 unwind label %bb.ei

bb.ei:                                            ; preds = %._crit_edge544
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vk) #32
  br label %.body

.lr.ph543:                                        ; preds = %.lr.ph543.preheader, %bb.eh
  %.010.i287541 = phi i64 [ %i.vs, %bb.eh ], [ 0, %.lr.ph543.preheader ]
  %i.vm = phi ptr [ %i.vn, %bb.eh ], [ %.lcssa538549553, %.lr.ph543.preheader ] ; 2 uses
  %indvars.iv.i286540 = phi i64 [ %indvars.iv.next.i289, %bb.eh ], [ 0, %.lr.ph543.preheader ] ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 1 ; 6 uses
  %i.vo = load i8, ptr %i.vm, align 1, !tbaa !19  ; 2 uses
  %i.vp = and i8 %i.vo, 127
  %i.vq = zext nneg i8 %i.vp to i64
  %i.vr = shl i64 %i.vq, %indvars.iv.i286540
  %i.vs = or i64 %i.vr, %.010.i287541             ; 3 uses
  %.not12.i290 = icmp sgt i8 %i.vo, -1
  br i1 %.not12.i290, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294, label %bb.eh, !llvm.loop !43

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294: ; preds = %.lr.ph543
  %sext = shl i64 %i.vs, 32
  %i.vt = ashr exact i64 %sext, 32                ; 2 uses
  %i.vu = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.vv = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = sub i64 %i.vw, %i.vx
  %i.vz = ashr exact i64 %i.vy, 5
  %i.wa = icmp ugt i64 %i.vt, %i.vz
  %i.wb = and i64 %i.vs, 2147483648
  %i.wc = icmp ne i64 %i.wb, 0
  %or.cond3 = or i1 %i.wc, %i.wa
  br i1 %or.cond3, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294
  store ptr %i.vn, ptr %i.d, align 8
  %i.wd = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.wd, ptr noundef nonnull @.str.18)
          to label %.invoke835 unwind label %bb.ek

.invoke835:                                       ; preds = %bb.ej, %._crit_edge544
  %i.we = phi ptr [ %i.vk, %._crit_edge544 ], [ %i.wd, %bb.ej ]
  invoke void @__cxa_throw(ptr nonnull %i.we, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont836 unwind label %.loopexit.split-lp

.cont836:                                         ; preds = %.invoke835
  unreachable

.loopexit:                                        ; preds = %bb.el
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.vn, ptr %i.d, align 8
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke835
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %bb.ej
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wd) #32
  br label %.body

bb.el:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0353.0381, i64 %i.vt
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !3
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [32 x i8], ptr %i.vv, i64 %i.wi
  %i.wk = load ptr, ptr %i.rp, align 8, !tbaa !13
  %i.wl = getelementptr inbounds nuw [32 x i8], ptr %i.wk, i64 %.061554
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.wl, ptr noundef nonnull align 8 dereferenceable(32) %i.wj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.el
  %i.wm = add nuw i64 %.061554, 1                 ; 2 uses
  %i.wn = load ptr, ptr %i.oy, align 8, !tbaa !10
  %i.wo = load ptr, ptr %i.ny, align 8, !tbaa !13
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = ashr exact i64 %i.wr, 5
  %i.wt = icmp ult i64 %i.wm, %i.ws
  br i1 %i.wt, label %.lr.ph555, label %._crit_edge556, !llvm.loop !99

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit398, %.loopexit.split-lp399, %.loopexit408, %.loopexit.split-lp409, %.loopexit403, %.loopexit.split-lp404, %bb.be, %bb.bf, %bb.bq, %.body.thread.i, %.body321, %bb.dy, %bb.ek, %bb.ei, %bb.df, %bb.dn, %bb.dj, %bb.de, %bb.cz, %bb.cu, %bb.au, %bb.av, %bb.az, %bb.aq, %bb.ap
  %.pn113 = phi { ptr, i32 } [ %i.fs, %bb.aq ], [ %i.fr, %bb.ap ], [ %i.gz, %bb.az ], [ %i.gd, %bb.av ], [ %i.gc, %bb.au ], [ %i.hk, %bb.bf ], [ %i.hj, %bb.be ], [ %.pn3184.i, %.body.thread.i ], [ %i.wf, %bb.ek ], [ %i.jg, %bb.bq ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp404 ], [ %i.oe, %bb.cu ], [ %i.op, %bb.cz ], [ %i.vl, %bb.ei ], [ %i.pr, %bb.dn ], [ %lpad.loopexit.split-lp401, %.loopexit.split-lp399 ], [ %i.pd, %bb.de ], [ %i.pk, %bb.dj ], [ %i.pe, %bb.df ], [ %lpad.loopexit.split-lp411, %.loopexit.split-lp409 ], [ %i.ro, %bb.dy ], [ %eh.lpad-body322, %.body321 ], [ %lpad.loopexit405, %.loopexit403 ], [ %lpad.loopexit410, %.loopexit408 ], [ %lpad.loopexit400, %.loopexit398 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i296 = icmp eq ptr %.sroa.0347.0, null
  br i1 %.not.i.i.i296, label %_ZNSt6vectorIcSaIcEED2Ev.exit297, label %bb.em

bb.em:                                            ; preds = %.body
  %i.wu = ptrtoint ptr %.sroa.11.0 to i64
  %i.wv = ptrtoint ptr %.sroa.0347.0 to i64
  %i.ww = sub i64 %i.wu, %i.wv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0347.0, i64 noundef %i.ww) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit297

_ZNSt6vectorIcSaIcEED2Ev.exit297:                 ; preds = %bb.em, %.body
  %.not.i.i.i298 = icmp eq ptr %.sroa.0353.0381, null
  br i1 %.not.i.i.i298, label %_ZNSt6vectorIiSaIiEED2Ev.exit299, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread, %_ZNSt6vectorIcSaIcEED2Ev.exit297
  %.pn113.pn394 = phi { ptr, i32 } [ %i.fq, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.pn113, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ]
  %.sroa.11358.0363393 = phi ptr [ %i.z, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.sroa.11358.0371, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ]
  %.sroa.0353.0373392 = phi ptr [ %i.y, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.sroa.0353.0381, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ] ; 2 uses
  %i.wx = ptrtoint ptr %.sroa.11358.0363393 to i64
  %i.wy = ptrtoint ptr %.sroa.0353.0373392 to i64
  %i.wz = sub i64 %i.wx, %i.wy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.0373392, i64 noundef %i.wz) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

_ZNSt6vectorIiSaIiEED2Ev.exit299:                 ; preds = %bb.ao, %_ZNSt6vectorIcSaIcEED2Ev.exit297, %bb.en, %bb.k, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.h
  %.pn120.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn117.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.as, %bb.k ], [ %i.av, %bb.o ], [ %i.fp, %bb.ao ], [ %.pn113, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ], [ %.pn113.pn394, %bb.en ]
  %i.xa = load ptr, ptr %6, align 8, !tbaa !13    ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i.i300 = icmp eq ptr %i.xa, %i.xc
  br i1 %.not4.i.i.i300, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308, label %.lr.ph.i.i.i301

.lr.ph.i.i.i301:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit299, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304
  %.05.i.i.i302 = phi ptr [ %i.xi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304 ], [ %i.xa, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ] ; 3 uses
  %i.xd = load ptr, ptr %.05.i.i.i302, align 8, !tbaa !18 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.05.i.i.i302, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303: ; preds = %.lr.ph.i.i.i301
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !19
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304: ; preds = %.lr.ph.i.i.i301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303
  %i.xi = getelementptr inbounds nuw i8, ptr %.05.i.i.i302, i64 32 ; 2 uses
  %.not.i.i.i305 = icmp eq ptr %i.xi, %i.xc
  br i1 %.not.i.i.i305, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306, label %.lr.ph.i.i.i301, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304
  %.pr.i307 = load ptr, ptr %6, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306, %_ZNSt6vectorIiSaIiEED2Ev.exit299
  %i.xj = phi ptr [ %.pr.i307, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306 ], [ %i.xa, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ] ; 3 uses
  %.not.i.i1.i309 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i1.i309, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311, label %bb.eo

bb.eo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308
  %i.xk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !42
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = ptrtoint ptr %i.xj to i64
  %i.xo = sub i64 %i.xm, %i.xn
  call void @_ZdlPvm(ptr noundef nonnull %i.xj, i64 noundef %i.xo) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311, %bb.d
  %.pn123 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn120.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311 ]
  resume { ptr, i32 } %.pn123

bb.eq:                                            ; preds = %bb.dw, %bb.bd, %bb.an, %bb.n
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i) #32
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !40
end_hunk_2
begin_hunk_3_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a

.lr.ph1331:                                       ; preds = %.lr.ph1331.prol.loopexit, %.lr.ph1331
  %.11781330 = phi i64 [ %i.rf, %.lr.ph1331 ], [ %.11781330.unr, %.lr.ph1331.prol.loopexit ] ; 9 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  store i32 2, ptr %i.qq, align 4, !tbaa !132
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i32 2, ptr %i.qs, align 4, !tbaa !132
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store i32 2, ptr %i.qu, align 4, !tbaa !132
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  store i32 2, ptr %i.qw, align 4, !tbaa !132
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  store i32 2, ptr %i.qy, align 4, !tbaa !132
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  store i32 2, ptr %i.ra, align 4, !tbaa !132
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 48
  store i32 2, ptr %i.rc, align 4, !tbaa !132
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.11781330
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56
  store i32 2, ptr %i.re, align 4, !tbaa !132
  %i.rf = add nuw nsw i64 %.11781330, 8           ; 2 uses
  %exitcond1498.not.7 = icmp eq i64 %i.rf, %invariant.umin1329
  br i1 %exitcond1498.not.7, label %.preheader1126, label %.lr.ph1331, !llvm.loop !140

.preheader1125:                                   ; preds = %.lr.ph1336.prol.loopexit, %.lr.ph1336, %.preheader1126
  %.2179.lcssa = phi i64 [ %.1178.lcssa, %.preheader1126 ], [ %invariant.umin1334, %.lr.ph1336 ], [ %invariant.umin1334, %.lr.ph1336.prol.loopexit ] ; 6 uses
  %invariant.umin1339 = call i64 @llvm.umin.i64(i64 %.pre1525, i64 268435456) ; 5 uses
  %i.rg = icmp ugt i64 %.pre1525, %.2179.lcssa
  br i1 %i.rg, label %.lr.ph1341.preheader, label %.preheader1124

.lr.ph1341.preheader:                             ; preds = %.preheader1125
  %i.rh = sub nsw i64 %invariant.umin1339, %.2179.lcssa
  %xtraiter2204 = and i64 %i.rh, 7                ; 2 uses
  %lcmp.mod2205.not = icmp eq i64 %xtraiter2204, 0
  br i1 %lcmp.mod2205.not, label %.lr.ph1341.prol.loopexit, label %.lr.ph1341.prol

.lr.ph1341.prol:                                  ; preds = %.lr.ph1341.preheader, %.lr.ph1341.prol
  %.31801340.prol = phi i64 [ %i.rj, %.lr.ph1341.prol ], [ %.2179.lcssa, %.lr.ph1341.preheader ] ; 2 uses
  %prol.iter2206 = phi i64 [ %prol.iter2206.next, %.lr.ph1341.prol ], [ 0, %.lr.ph1341.preheader ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340.prol
  store i32 4, ptr %i.ri, align 4, !tbaa !132
  %i.rj = add nuw nsw i64 %.31801340.prol, 1      ; 2 uses
  %prol.iter2206.next = add i64 %prol.iter2206, 1 ; 2 uses
  %prol.iter2206.cmp.not = icmp eq i64 %prol.iter2206.next, %xtraiter2204
  br i1 %prol.iter2206.cmp.not, label %.lr.ph1341.prol.loopexit, label %.lr.ph1341.prol, !llvm.loop !141

.lr.ph1341.prol.loopexit:                         ; preds = %.lr.ph1341.prol, %.lr.ph1341.preheader
  %.31801340.unr = phi i64 [ %.2179.lcssa, %.lr.ph1341.preheader ], [ %i.rj, %.lr.ph1341.prol ]
  %i.rk = sub nsw i64 %.2179.lcssa, %invariant.umin1339
  %i.rl = icmp ugt i64 %i.rk, -8
  br i1 %i.rl, label %.preheader1124, label %.lr.ph1341

.lr.ph1336:                                       ; preds = %.lr.ph1336.prol.loopexit, %.lr.ph1336
  %.21791335 = phi i64 [ %i.sb, %.lr.ph1336 ], [ %.21791335.unr, %.lr.ph1336.prol.loopexit ] ; 9 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  store i32 3, ptr %i.rm, align 4, !tbaa !132
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 3, ptr %i.ro, align 4, !tbaa !132
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store i32 3, ptr %i.rq, align 4, !tbaa !132
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  store i32 3, ptr %i.rs, align 4, !tbaa !132
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  store i32 3, ptr %i.ru, align 4, !tbaa !132
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  store i32 3, ptr %i.rw, align 4, !tbaa !132
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 48
  store i32 3, ptr %i.ry, align 4, !tbaa !132
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.21791335
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  store i32 3, ptr %i.sa, align 4, !tbaa !132
  %i.sb = add nuw nsw i64 %.21791335, 8           ; 2 uses
  %exitcond1499.not.7 = icmp eq i64 %i.sb, %invariant.umin1334
  br i1 %exitcond1499.not.7, label %.preheader1125, label %.lr.ph1336, !llvm.loop !142

.preheader1124:                                   ; preds = %.lr.ph1341.prol.loopexit, %.lr.ph1341, %.preheader1125
  %.3180.lcssa = phi i64 [ %.2179.lcssa, %.preheader1125 ], [ %invariant.umin1339, %.lr.ph1341 ], [ %invariant.umin1339, %.lr.ph1341.prol.loopexit ] ; 5 uses
  %i.sc = icmp ult i64 %.3180.lcssa, %.pre1525
  br i1 %i.sc, label %.lr.ph1344.preheader, label %._crit_edge1345

.lr.ph1344.preheader:                             ; preds = %.preheader1124
  %i.sd = sub nuw nsw i64 %.pre1525, %.3180.lcssa
  %xtraiter2207 = and i64 %i.sd, 7                ; 2 uses
  %lcmp.mod2208.not = icmp eq i64 %xtraiter2207, 0
  br i1 %lcmp.mod2208.not, label %.lr.ph1344.prol.loopexit, label %.lr.ph1344.prol

.lr.ph1344.prol:                                  ; preds = %.lr.ph1344.preheader, %.lr.ph1344.prol
  %.41811343.prol = phi i64 [ %i.sf, %.lr.ph1344.prol ], [ %.3180.lcssa, %.lr.ph1344.preheader ] ; 2 uses
  %prol.iter2209 = phi i64 [ %prol.iter2209.next, %.lr.ph1344.prol ], [ 0, %.lr.ph1344.preheader ]
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343.prol
  store i32 5, ptr %i.se, align 4, !tbaa !132
  %i.sf = add nuw i64 %.41811343.prol, 1          ; 2 uses
  %prol.iter2209.next = add i64 %prol.iter2209, 1 ; 2 uses
  %prol.iter2209.cmp.not = icmp eq i64 %prol.iter2209.next, %xtraiter2207
  br i1 %prol.iter2209.cmp.not, label %.lr.ph1344.prol.loopexit, label %.lr.ph1344.prol, !llvm.loop !143

.lr.ph1344.prol.loopexit:                         ; preds = %.lr.ph1344.prol, %.lr.ph1344.preheader
  %.41811343.unr = phi i64 [ %.3180.lcssa, %.lr.ph1344.preheader ], [ %i.sf, %.lr.ph1344.prol ]
  %i.sg = sub nsw i64 %.3180.lcssa, %.pre1525
  %i.sh = icmp ugt i64 %i.sg, -8
  br i1 %i.sh, label %._crit_edge1345, label %.lr.ph1344

.lr.ph1341:                                       ; preds = %.lr.ph1341.prol.loopexit, %.lr.ph1341
  %.31801340 = phi i64 [ %i.sx, %.lr.ph1341 ], [ %.31801340.unr, %.lr.ph1341.prol.loopexit ] ; 9 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  store i32 4, ptr %i.si, align 4, !tbaa !132
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store i32 4, ptr %i.sk, align 4, !tbaa !132
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store i32 4, ptr %i.sm, align 4, !tbaa !132
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store i32 4, ptr %i.so, align 4, !tbaa !132
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  store i32 4, ptr %i.sq, align 4, !tbaa !132
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  store i32 4, ptr %i.ss, align 4, !tbaa !132
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 48
  store i32 4, ptr %i.su, align 4, !tbaa !132
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.31801340
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  store i32 4, ptr %i.sw, align 4, !tbaa !132
  %i.sx = add nuw nsw i64 %.31801340, 8           ; 2 uses
  %exitcond1500.not.7 = icmp eq i64 %i.sx, %invariant.umin1339
  br i1 %exitcond1500.not.7, label %.preheader1124, label %.lr.ph1341, !llvm.loop !144

.lr.ph1344:                                       ; preds = %.lr.ph1344.prol.loopexit, %.lr.ph1344
  %.41811343 = phi i64 [ %i.tn, %.lr.ph1344 ], [ %.41811343.unr, %.lr.ph1344.prol.loopexit ] ; 9 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  store i32 5, ptr %i.sy, align 4, !tbaa !132
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store i32 5, ptr %i.ta, align 4, !tbaa !132
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  store i32 5, ptr %i.tc, align 4, !tbaa !132
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  store i32 5, ptr %i.te, align 4, !tbaa !132
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  store i32 5, ptr %i.tg, align 4, !tbaa !132
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 40
  store i32 5, ptr %i.ti, align 4, !tbaa !132
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  store i32 5, ptr %i.tk, align 4, !tbaa !132
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.41811343
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  store i32 5, ptr %i.tm, align 4, !tbaa !132
  %i.tn = add nuw i64 %.41811343, 8               ; 2 uses
  %exitcond1501.not.7 = icmp eq i64 %i.tn, %.pre1525
  br i1 %exitcond1501.not.7, label %._crit_edge1345, label %.lr.ph1344, !llvm.loop !145

._crit_edge1345:                                  ; preds = %.lr.ph1344.prol.loopexit, %.lr.ph1344, %.preheader1124
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge1345
  %i.to = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre1525, i1 true)
  %i.tp = shl nuw nsw i64 %i.to, 1
  %i.tq = xor i64 %i.tp, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.0907.0, ptr %.0.lcssa.i.i.i.i.i237, i64 noundef %i.tq)
          to label %.noexc348 unwind label %bb.bo

.noexc348:                                        ; preds = %bb.bp
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.0907.0, ptr %.0.lcssa.i.i.i.i.i237)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350 unwind label %bb.bo

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350: ; preds = %.noexc348
  %i.tr = icmp ugt i64 %.pre1525, 2305843009213693951
  br i1 %i.tr, label %bb.bq, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.bq:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc352 unwind label %bb.bs

.noexc352:                                        ; preds = %bb.bq
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit350
  %i.ts = ashr exact i64 %.pre1523, 1
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #34
          to label %.noexc353 unwind label %bb.bs ; 14 uses

.noexc353:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %19 = ptrtoint ptr %i.tt to i64                 ; 3 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %.pre1525 ; 5 uses
  store i32 0, ptr %i.tt, align 4, !tbaa !3
  %i.tv = getelementptr i8, ptr %i.tt, i64 4      ; 3 uses
  %i.tw = add nsw i64 %.pre1525, -1               ; 2 uses
  %i.tx = icmp eq i64 %i.tw, 0
  br i1 %i.tx, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc353
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.tw, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.tv, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc353, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.tv, %.noexc353 ], [ %i.ty, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.ph1502 = ptrtoint ptr %.0.i.i.i.i.i.ph to i64 ; 2 uses
  %i.tz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.br unwind label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ; 5 uses

bb.br:                                            ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0907.0, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !134 ; 3 uses
  store i32 %i.uc, ptr %i.tz, align 4, !tbaa !132
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store i32 %i.uc, ptr %i.ud, align 4, !tbaa !134
  %.not5.i.i.i.i = icmp eq ptr %i.tt, %.0.i.i.i.i.i.ph
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i359.preheader

.lr.ph.i.i.i.i359.preheader:                      ; preds = %bb.br
  %i.ue = add i64 %.0.i.i.i.i.i.ph1502, -4
  %i.uf = sub i64 %i.ue, %19
  %i.ug = and i64 %i.uf, -4
  %i.uh = add i64 %i.ug, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tt, i8 -1, i64 %i.uh, i1 false), !tbaa !3
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i359.preheader, %bb.br
  %i.ui = sext i32 %i.uc to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.ui
  store i32 0, ptr %i.uj, align 4, !tbaa !3
  %i.uk = icmp samesign ugt i64 %.pre1525, 1
  br i1 %i.uk, label %.lr.ph1351, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

.lr.ph1351:                                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %i.ul = sub i64 %.0.i.i.i.i.i.ph1502, %19
  %i.um = lshr i64 %i.ul, 2                       ; 2 uses
  %i.un = trunc i64 %i.um to i32
  %sext = shl i64 %i.um, 32
  %i.uo = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.bq
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit667

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.bt:                                            ; preds = %.lr.ph1351, %.critedge2
  %.01861350 = phi i32 [ 1, %.lr.ph1351 ], [ %.1187.lcssa, %.critedge2 ] ; 2 uses
  %.01931349 = phi i64 [ 1, %.lr.ph1351 ], [ %i.wm, %.critedge2 ] ; 3 uses
  %.sroa.29.01348 = phi ptr [ %i.ua, %.lr.ph1351 ], [ %.sroa.29.1, %.critedge2 ] ; 8 uses
  %.sroa.17.01347 = phi ptr [ %i.ua, %.lr.ph1351 ], [ %.sroa.17.1, %.critedge2 ] ; 5 uses
  %.sroa.0859.01346 = phi ptr [ %i.tz, %.lr.ph1351 ], [ %.sroa.0859.1, %.critedge2 ] ; 10 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.01931349
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !134 ; 3 uses
  %i.uu = icmp eq i32 %i.ut, %.01861350
  br i1 %i.uu, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.uv = getelementptr inbounds i8, ptr %.sroa.17.01347, i64 -4
  store i32 %.01861350, ptr %i.uv, align 4, !tbaa !134
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i361 = icmp eq ptr %.sroa.17.01347, %.sroa.29.01348
  br i1 %.not.i361, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.sroa.6.0.insert.ext = zext i32 %i.ut to i64   ; 2 uses
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0848.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.6.0.insert.ext
  store i64 %.sroa.0848.0.insert.insert, ptr %.sroa.17.01347, align 4
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.17.01347, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.ux = ptrtoint ptr %.sroa.29.01348 to i64     ; 2 uses
  %i.uy = ptrtoint ptr %.sroa.0859.01346 to i64   ; 3 uses
  %i.uz = sub i64 %i.ux, %i.uy                    ; 4 uses
  %i.va = icmp eq i64 %i.uz, 9223372036854775800
  br i1 %i.va, label %bb.by, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #33
          to label %.noexc370 unwind label %.loopexit.split-lp1120

.noexc370:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362: ; preds = %bb.bx
  %i.vb = ashr exact i64 %i.uz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i363 = call i64 @llvm.umax.i64(i64 %i.vb, i64 1)
  %i.vc = add nsw i64 %.sroa.speculated.i.i.i363, %i.vb ; 2 uses
  %i.vd = icmp ult i64 %i.vc, %i.vb
  %i.ve = call i64 @llvm.umin.i64(i64 %i.vc, i64 1152921504606846975)
  %i.vf = select i1 %i.vd, i64 1152921504606846975, i64 %i.ve ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.vf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.vg = shl nuw nsw i64 %i.vf, 3
  %i.vh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vg) #34
          to label %.noexc371 unwind label %.loopexit1119 ; 8 uses

.noexc371:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.uz
  %.sroa.6.0.insert.ext854 = zext i32 %i.ut to i64 ; 2 uses
  %.sroa.6.0.insert.shift855 = shl nuw i64 %.sroa.6.0.insert.ext854, 32
  %.sroa.0848.0.insert.insert852 = or disjoint i64 %.sroa.6.0.insert.shift855, %.sroa.6.0.insert.ext854
  store i64 %.sroa.0848.0.insert.insert852, ptr %i.vi, align 4
  %.not10.i.i.i.i.i364 = icmp eq ptr %.sroa.0859.01346, %.sroa.29.01348
  br i1 %.not10.i.i.i.i.i364, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365.preheader

.lr.ph.i.i.i.i.i365.preheader:                    ; preds = %.noexc371
  %i.vj = ptrtoaddr ptr %i.vh to i64
  %i.vk = sub i64 %i.ux, %i.uy
  %i.vl = add i64 %i.vk, -8                       ; 2 uses
  %i.vm = lshr i64 %i.vl, 3
  %i.vn = add nuw nsw i64 %i.vm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.vl, 24
  %i.vo = sub i64 %i.uy, %i.vj
  %diff.check = icmp ugt i64 %i.vo, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i365.preheader2163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i365.preheader
  %n.vec = and i64 %i.vn, 4611686018427387900     ; 3 uses
  %i.vp = shl i64 %n.vec, 3                       ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vh, i64 %i.vp  ; 2 uses
  %i.vr = getelementptr i8, ptr %.sroa.0859.01346, i64 %i.vp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vh, i64 %i.vs ; 2 uses
  %next.gep1890 = getelementptr i8, ptr %.sroa.0859.01346, i64 %i.vs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.vt = getelementptr i8, ptr %next.gep1890, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1890, align 4, !alias.scope !149, !noalias !146
  %wide.load1891 = load <2 x i64>, ptr %i.vt, align 4, !alias.scope !149, !noalias !146
  %i.vu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !146, !noalias !149
  store <2 x i64> %wide.load1891, ptr %i.vu, align 4, !alias.scope !146, !noalias !149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vv = icmp eq i64 %index.next, %n.vec
  br i1 %i.vv, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365.preheader2163

.lr.ph.i.i.i.i.i365.preheader2163:                ; preds = %.lr.ph.i.i.i.i.i365.preheader, %middle.block
  %.012.i.i.i.i.i366.ph = phi ptr [ %i.vh, %.lr.ph.i.i.i.i.i365.preheader ], [ %i.vq, %middle.block ]
  %.0911.i.i.i.i.i367.ph = phi ptr [ %.sroa.0859.01346, %.lr.ph.i.i.i.i.i365.preheader ], [ %i.vr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i365

.lr.ph.i.i.i.i.i365:                              ; preds = %.lr.ph.i.i.i.i.i365.preheader2163, %.lr.ph.i.i.i.i.i365
  %.012.i.i.i.i.i366 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i.i365 ], [ %.012.i.i.i.i.i366.ph, %.lr.ph.i.i.i.i.i365.preheader2163 ] ; 2 uses
  %.0911.i.i.i.i.i367 = phi ptr [ %i.vx, %.lr.ph.i.i.i.i.i365 ], [ %.0911.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i365.preheader2163 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.vw = load i64, ptr %.0911.i.i.i.i.i367, align 4, !alias.scope !149, !noalias !146
  store i64 %i.vw, ptr %.012.i.i.i.i.i366, align 4, !alias.scope !146, !noalias !149
  %i.vx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i367, i64 8 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i366, i64 8 ; 2 uses
  %.not.i.i.i.i.i368 = icmp eq ptr %i.vx, %.sroa.29.01348
  br i1 %.not.i.i.i.i.i368, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365, !llvm.loop !154

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i365, %middle.block, %.noexc371
  %.0.lcssa.i.i.i.i.i369 = phi ptr [ %i.vh, %.noexc371 ], [ %i.vq, %middle.block ], [ %i.vy, %.lr.ph.i.i.i.i.i365 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i369, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0859.01346, i64 noundef %i.uz) #35
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vf
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

.loopexit1119:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362
  %lpad.loopexit1121 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit663

.loopexit.split-lp1120:                           ; preds = %bb.by
  %lpad.loopexit.split-lp1122 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit663

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.bw, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bu
  %.sroa.0859.1 = phi ptr [ %.sroa.0859.01346, %bb.bu ], [ %i.vh, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0859.01346, %bb.bw ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.01347, %bb.bu ], [ %i.vz, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.uw, %bb.bw ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.01348, %bb.bu ], [ %i.wa, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.29.01348, %bb.bw ] ; 2 uses
  %i.wb = trunc i64 %.01931349 to i32
  %i.wc = load i32, ptr %i.us, align 4, !tbaa !134 ; 2 uses
  %i.wd = sext i32 %i.wc to i64                   ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.wd
  store i32 %i.wb, ptr %i.we, align 4, !tbaa !3
  %i.wf = add nsw i32 %i.wc, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.wf, i32 %i.un) ; 2 uses
  %indvars.iv.next15041887 = add nsw i64 %i.wd, 1 ; 2 uses
  %i.wg = icmp slt i64 %indvars.iv.next15041887, %i.uo
  br i1 %i.wg, label %.lr.ph1889, label %.critedge2

bb.bz:                                            ; preds = %.lr.ph1889
  %indvars.iv.next1504 = add nsw i64 %indvars.iv.next15041888, 1 ; 2 uses
  %i.wh = icmp slt i64 %indvars.iv.next1504, %i.uo
  br i1 %i.wh, label %.lr.ph1889, label %.critedge2, !llvm.loop !155

.lr.ph1889:                                       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %bb.bz
  %indvars.iv.next15041888 = phi i64 [ %indvars.iv.next1504, %bb.bz ], [ %indvars.iv.next15041887, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %indvars.iv.next15041888
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !3
  %i.wk = icmp sgt i32 %i.wj, -1
  br i1 %i.wk, label %bb.bz, label %.critedge2.split.loop.exit, !llvm.loop !155

.critedge2.split.loop.exit:                       ; preds = %.lr.ph1889
  %i.wl = trunc nsw i64 %indvars.iv.next15041888 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.bz, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %.critedge2.split.loop.exit
  %.1187.lcssa = phi i32 [ %i.wl, %.critedge2.split.loop.exit ], [ %smax, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ], [ %smax, %bb.bz ]
  %i.wm = add nuw i64 %.01931349, 1               ; 2 uses
  %exitcond1506.not = icmp eq i64 %i.wm, %.pre1525
  br i1 %exitcond1506.not, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.bt, !llvm.loop !156

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.critedge2, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %._crit_edge1345
  %.sroa.0880.01022 = phi ptr [ null, %._crit_edge1345 ], [ %i.tt, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tt, %.critedge2 ] ; 7 uses
  %.sroa.19.01019 = phi ptr [ null, %._crit_edge1345 ], [ %i.tu, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tu, %.critedge2 ] ; 3 uses
  %.sroa.0859.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.tz, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.0859.1, %.critedge2 ] ; 14 uses
  %.sroa.17.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.ua, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.17.1, %.critedge2 ] ; 3 uses
  %.sroa.29.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.ua, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.29.1, %.critedge2 ] ; 3 uses
  %.not3.i = icmp eq ptr %.sroa.0947.0997, %.0.lcssa.i.i.i.i.i1006 ; 3 uses
  br i1 %.not3.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, label %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZNK27OpenImageIO_v3_1_Imf__3_3_510IDManifest9serializeERSt6vectorIcSaIcEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body710

bb.fj:                                            ; preds = %bb.ff
  %i.awx = load ptr, ptr %i.awd, align 8, !tbaa !18 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awc, i64 48 ; 2 uses
  %i.awz = icmp eq ptr %i.awx, %i.awy
  br i1 %i.awz, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i728, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i727: ; preds = %bb.fj
  %i.axa = load i64, ptr %i.awy, align 8, !tbaa !19
  %i.axb = add i64 %i.axa, 1
  call void @_ZdlPvm(ptr noundef %i.awx, i64 noundef %i.axb) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i728

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i728: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i727
  call void @_ZdlPvm(ptr noundef nonnull %i.awc, i64 noundef 72) #35
  br label %.noexc644

.noexc644:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i728, %.thread.i721
  %.sroa.0.010.i722 = phi ptr [ %i.awc, %.thread.i721 ], [ %i.awf, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i728 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.fk

bb.fk:                                            ; preds = %.noexc644, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i631
  %.sroa.07.0.i633 = phi ptr [ %.sroa.0.010.i722, %.noexc644 ], [ %.19.i.i.i.i622, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i631 ]
  %i.axc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i633, i64 64
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !3
  %i.axe = sext i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0880.01022, i64 %i.axe
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !3
  %i.axh = sext i32 %i.axg to i64
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fl, %bb.fk
  %.29 = phi ptr [ %.41388, %bb.fk ], [ %i.axl, %bb.fl ] ; 2 uses
  %.06.i646 = phi i64 [ %i.axh, %bb.fk ], [ %i.axk, %bb.fl ] ; 2 uses
  %i.axi = trunc i64 %.06.i646 to i8
  %i.axj = and i8 %i.axi, 127
  %i.axk = lshr i64 %.06.i646, 7                  ; 2 uses
  %.not.i647 = icmp eq i64 %i.axk, 0              ; 2 uses
  %masksel.i648 = select i1 %.not.i647, i8 0, i8 -128
  %.0.i649 = or disjoint i8 %masksel.i648, %i.axj
  %i.axl = getelementptr inbounds nuw i8, ptr %.29, i64 1 ; 3 uses
  store i8 %.0.i649, ptr %.29, align 1, !tbaa !19
  br i1 %.not.i647, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit650, label %bb.fl, !llvm.loop !164

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_126writeVariableLengthIntegerERPcm.exit650: ; preds = %bb.fl
  %i.axm = add nuw i64 %.01441389, 1              ; 2 uses
  %i.axn = load ptr, ptr %i.and, align 8, !tbaa !10
  %i.axo = load ptr, ptr %i.anc, align 8, !tbaa !13
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = ptrtoint ptr %i.axo to i64
  %i.axr = sub i64 %i.axp, %i.axq
  %i.axs = ashr exact i64 %i.axr, 5
  %i.axt = icmp ult i64 %i.axm, %i.axs
  br i1 %i.axt, label %bb.fc, label %._crit_edge1391, !llvm.loop !206

bb.fm:                                            ; preds = %.noexc730, %.critedge.i634
  %i.axu = landingpad { ptr, i32 }
          cleanup
  br label %.body710

bb.fn:                                            ; preds = %._crit_edge1406
  %i.axv = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.axv, ptr noundef nonnull @.str.21)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  invoke void @__cxa_throw(ptr nonnull %i.axv, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #33
          to label %bb.gd unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.axw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.axv) #32
  br label %.body710

bb.fq:                                            ; preds = %bb.fo
  %i.axx = landingpad { ptr, i32 }
          cleanup
  br label %.body710

bb.fr:                                            ; preds = %._crit_edge1406
  %.not.i.i.i651 = icmp eq ptr %.sroa.0829.0.lcssa, null
  br i1 %.not.i.i.i651, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.axy = ptrtoint ptr %.sroa.31.0.lcssa to i64
  %i.axz = ptrtoint ptr %.sroa.0829.0.lcssa to i64
  %i.aya = sub i64 %i.axy, %i.axz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.0.lcssa, i64 noundef %i.aya) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.fr, %bb.fs
  %.not.i.i.i652 = icmp eq ptr %.sroa.0859.2, null
  br i1 %.not.i.i.i652, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.ayb = ptrtoint ptr %.sroa.29.2 to i64
  %i.ayc = sub i64 %i.ayb, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0859.2, i64 noundef %i.ayc) #35
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.ft
  %.not.i.i.i653 = icmp eq ptr %.sroa.0880.01022, null
  br i1 %.not.i.i.i653, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
  %i.ayd = ptrtoint ptr %.sroa.19.01019 to i64
  %i.aye = ptrtoint ptr %.sroa.0880.01022 to i64
  %i.ayf = sub i64 %i.ayd, %i.aye
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0880.01022, i64 noundef %i.ayf) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, %bb.fu
  %i.ayg = load ptr, ptr %10, align 8, !tbaa !18  ; 2 uses
  %i.ayh = icmp eq ptr %i.ayg, %i.dw
  br i1 %i.ayh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ayi = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.ayj = add i64 %i.ayi, 1
  call void @_ZdlPvm(ptr noundef %i.ayg, i64 noundef %i.ayj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not.i.i.i657 = icmp eq ptr %.sroa.0907.0, null
  br i1 %.not.i.i.i657, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656
  %i.ayk = sub i64 %.sink.i, %.pre1521
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0907.0, i64 noundef %i.ayk) #35
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, %bb.fv
  br i1 %.not3.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i659

.lr.ph.i.i.i659:                                  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i660 = phi ptr [ %i.ayq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0947.0997, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658 ] ; 3 uses
  %i.ayl = load ptr, ptr %.05.i.i.i660, align 8, !tbaa !18 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %.05.i.i.i660, i64 16 ; 2 uses
  %i.ayn = icmp eq ptr %i.ayl, %i.aym
  br i1 %i.ayn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i659
  %i.ayo = load i64, ptr %i.aym, align 8, !tbaa !19
  %i.ayp = add i64 %i.ayo, 1
  call void @_ZdlPvm(ptr noundef %i.ayl, i64 noundef %i.ayp) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i659, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ayq = getelementptr inbounds nuw i8, ptr %.05.i.i.i660, i64 32 ; 2 uses
  %.not.i.i.i661 = icmp eq ptr %i.ayq, %.0.lcssa.i.i.i.i.i1006
  br i1 %.not.i.i.i661, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i659, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit658
  %.not.i.i1.i = icmp eq ptr %.sroa.0947.0997, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ayr = ptrtoint ptr %.sroa.25.0988 to i64
  %i.ays = sub i64 %i.ayr, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0947.0997, i64 noundef %i.ays) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fw
  %i.ayt = load ptr, ptr %i.d, align 8, !tbaa !78
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.ayt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit unwind label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ayu = landingpad { ptr, i32 }
          catch ptr null
  %i.ayv = extractvalue { ptr, i32 } %i.ayu, 0
  call void @__clang_call_terminate(ptr %i.ayv) #37
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

.body710:                                         ; preds = %.loopexit1103, %.loopexit.split-lp, %.loopexit1104, %.loopexit.split-lp1105, %.loopexit1109, %.loopexit.split-lp1110, %.loopexit1114, %.loopexit.split-lp1115, %bb.fq, %bb.fp, %bb.fm, %bb.fi, %bb.dt, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit742, %bb.ew
  %.sroa.0829.01223 = phi ptr [ %.sroa.0829.0.lcssa, %bb.ew ], [ %.sroa.0829.01372, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit742 ], [ %.sroa.0829.0.lcssa, %bb.fi ], [ %.sroa.0829.01372, %.loopexit.split-lp1105 ], [ %.sroa.0829.0.lcssa, %bb.fp ], [ %.sroa.0829.01372, %.loopexit.split-lp1115 ], [ %.sroa.0829.01372, %.loopexit.split-lp1110 ], [ %.sroa.0829.01372, %bb.dt ], [ %.sroa.0829.0.lcssa, %bb.fq ], [ %.sroa.0829.0.lcssa, %bb.fm ], [ %.sroa.0829.01372, %.loopexit1114 ], [ %.sroa.0829.01372, %.loopexit1109 ], [ %.sroa.0829.01372, %.loopexit1104 ], [ %.sroa.0829.01372, %.loopexit1103 ], [ %.sroa.0829.01372, %.loopexit.split-lp ] ; 3 uses
  %.sroa.31.01208 = phi ptr [ %.sroa.31.0.lcssa, %bb.ew ], [ %.sroa.31.01374, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit742 ], [ %.sroa.31.0.lcssa, %bb.fi ], [ %.sroa.31.01374, %.loopexit.split-lp1105 ], [ %.sroa.31.0.lcssa, %bb.fp ], [ %.sroa.31.01374, %.loopexit.split-lp1115 ], [ %.sroa.31.01374, %.loopexit.split-lp1110 ], [ %.sroa.31.01374, %bb.dt ], [ %.sroa.31.0.lcssa, %bb.fq ], [ %.sroa.31.0.lcssa, %bb.fm ], [ %.sroa.31.01374, %.loopexit1114 ], [ %.sroa.31.01374, %.loopexit1109 ], [ %.sroa.31.01374, %.loopexit1104 ], [ %.sroa.31.01374, %.loopexit1103 ], [ %.sroa.31.01374, %.loopexit.split-lp ]
  %.pn203.pn.pn = phi { ptr, i32 } [ %i.ajj, %bb.ew ], [ %i.abs, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit742 ], [ %i.aww, %bb.fi ], [ %lpad.loopexit.split-lp1107, %.loopexit.split-lp1105 ], [ %i.axw, %bb.fp ], [ %lpad.loopexit.split-lp1117, %.loopexit.split-lp1115 ], [ %lpad.loopexit.split-lp1112, %.loopexit.split-lp1110 ], [ %i.acx, %bb.dt ], [ %i.axx, %bb.fq ], [ %i.axu, %bb.fm ], [ %lpad.loopexit1116, %.loopexit1114 ], [ %lpad.loopexit1111, %.loopexit1109 ], [ %lpad.loopexit1106, %.loopexit1104 ], [ %lpad.loopexit, %.loopexit1103 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i662 = icmp eq ptr %.sroa.0829.01223, null
  br i1 %.not.i.i.i662, label %_ZNSt6vectorIcSaIcEED2Ev.exit663, label %bb.fy

bb.fy:                                            ; preds = %.body710
  %i.ayw = ptrtoint ptr %.sroa.31.01208 to i64
  %i.ayx = ptrtoint ptr %.sroa.0829.01223 to i64
  %i.ayy = sub i64 %i.ayw, %i.ayx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0829.01223, i64 noundef %i.ayy) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit663

_ZNSt6vectorIcSaIcEED2Ev.exit663:                 ; preds = %.loopexit1119, %.loopexit.split-lp1120, %bb.fy, %.body710
  %.sroa.0880.01023 = phi ptr [ %.sroa.0880.01022, %.body710 ], [ %.sroa.0880.01022, %bb.fy ], [ %i.tt, %.loopexit.split-lp1120 ], [ %i.tt, %.loopexit1119 ] ; 3 uses
  %.sroa.19.01015 = phi ptr [ %.sroa.19.01019, %.body710 ], [ %.sroa.19.01019, %bb.fy ], [ %i.tu, %.loopexit.split-lp1120 ], [ %i.tu, %.loopexit1119 ]
  %.sroa.0859.3 = phi ptr [ %.sroa.0859.2, %.body710 ], [ %.sroa.0859.2, %bb.fy ], [ %.sroa.0859.01346, %.loopexit.split-lp1120 ], [ %.sroa.0859.01346, %.loopexit1119 ] ; 3 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.2, %.body710 ], [ %.sroa.29.2, %bb.fy ], [ %.sroa.29.01348, %.loopexit.split-lp1120 ], [ %.sroa.29.01348, %.loopexit1119 ]
  %.pn208 = phi { ptr, i32 } [ %.pn203.pn.pn, %.body710 ], [ %.pn203.pn.pn, %bb.fy ], [ %lpad.loopexit.split-lp1122, %.loopexit.split-lp1120 ], [ %lpad.loopexit1121, %.loopexit1119 ] ; 2 uses
  %.not.i.i.i664 = icmp eq ptr %.sroa.0859.3, null
  br i1 %.not.i.i.i664, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665, label %_ZNSt6vectorIcSaIcEED2Ev.exit663.thread1049

_ZNSt6vectorIcSaIcEED2Ev.exit663.thread1049:      ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit663
  %i.ayz = ptrtoint ptr %.sroa.29.3 to i64
  %i.aza = ptrtoint ptr %.sroa.0859.3 to i64
  %i.azb = sub i64 %i.ayz, %i.aza
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0859.3, i64 noundef %i.azb) #35
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665:     ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit663, %_ZNSt6vectorIcSaIcEED2Ev.exit663.thread1049
  %.not.i.i.i666 = icmp eq ptr %.sroa.0880.01023, null
  br i1 %.not.i.i.i666, label %_ZNSt6vectorIiSaIiEED2Ev.exit667, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665
  %.pre1527 = ptrtoint ptr %.sroa.0880.01023 to i64
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread
  %.pre-phi1528 = phi i64 [ %.pre1527, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge ], [ %19, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ]
  %.sroa.0880.0102310431083.a = phi ptr [ %.sroa.0880.01023, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge ], [ %i.tt, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ]
  %.sroa.19.0101510441082 = phi ptr [ %.sroa.19.01015, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge ], [ %i.tu, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ]
  %.pn20810481074 = phi { ptr, i32 } [ %.pn208, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665._crit_edge ], [ %i.uq, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ]
  %i.azc = ptrtoint ptr %.sroa.19.0101510441082 to i64
  %i.azd = sub i64 %i.azc, %.pre-phi1528
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0880.0102310431083.a, i64 noundef %i.azd) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit667

_ZNSt6vectorIiSaIiEED2Ev.exit667:                 ; preds = %bb.bs, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665, %bb.fz, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %bb.bo
  %.pn220.pn = phi { ptr, i32 } [ %i.qj, %bb.bo ], [ %.pn211.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ], [ %i.fb, %bb.p ], [ %.pn214.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %i.up, %bb.bs ], [ %.pn208, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665 ], [ %.pn20810481074, %bb.fz ] ; 2 uses
  %i.aze = load ptr, ptr %10, align 8, !tbaa !18  ; 2 uses
  %i.azf = icmp eq ptr %i.aze, %i.dw
  br i1 %i.azf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit667
  %i.azg = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.azh = add i64 %i.azg, 1
  call void @_ZdlPvm(ptr noundef %i.aze, i64 noundef %i.azh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not.i.i.i671 = icmp eq ptr %.sroa.0907.0, null
  br i1 %.not.i.i.i671, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670
  %i.azi = ptrtoint ptr %.sroa.0907.0 to i64
  %i.azj = sub i64 %.sink.i, %i.azi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0907.0, i64 noundef %i.azj) #35
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672:     ; preds = %bb.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670
  %.not4.i.i.i673 = icmp eq ptr %.sroa.0947.0997, %.0.lcssa.i.i.i.i.i1006
  br i1 %.not4.i.i.i673, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681, label %.lr.ph.i.i.i674.preheader

.lr.ph.i.i.i674.preheader:                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672.thread, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672
  %.pn220.pn.pn1724 = phi { ptr, i32 } [ %i.eu, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672.thread ], [ %.pn220.pn, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ]
  %.sroa.25.09811722 = phi ptr [ %i.dr, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672.thread ], [ %.sroa.25.0988, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ]
  %.sroa.0947.09901720 = phi ptr [ %i.m, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672.thread ], [ %.sroa.0947.0997, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i9991719 = phi ptr [ %.lcssa2190, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672.thread ], [ %.0.lcssa.i.i.i.i.i1006, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ]
  br label %.lr.ph.i.i.i674

.lr.ph.i.i.i674:                                  ; preds = %.lr.ph.i.i.i674.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677
  %.05.i.i.i675 = phi ptr [ %i.azp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677 ], [ %.sroa.0947.09901720, %.lr.ph.i.i.i674.preheader ] ; 3 uses
  %i.azk = load ptr, ptr %.05.i.i.i675, align 8, !tbaa !18 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %.05.i.i.i675, i64 16 ; 2 uses
  %i.azm = icmp eq ptr %i.azk, %i.azl
  br i1 %i.azm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676: ; preds = %.lr.ph.i.i.i674
  %i.azn = load i64, ptr %i.azl, align 8, !tbaa !19
  %i.azo = add i64 %i.azn, 1
  call void @_ZdlPvm(ptr noundef %i.azk, i64 noundef %i.azo) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677: ; preds = %.lr.ph.i.i.i674, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i676
  %i.azp = getelementptr inbounds nuw i8, ptr %.05.i.i.i675, i64 32 ; 2 uses
  %.not.i.i.i678 = icmp eq ptr %i.azp, %.0.lcssa.i.i.i.i.i9991719
  br i1 %.not.i.i.i678, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681, label %.lr.ph.i.i.i674, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672
  %.pn220.pn.pn1725 = phi { ptr, i32 } [ %.pn220.pn, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ], [ %.pn220.pn.pn1724, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677 ] ; 2 uses
  %.sroa.25.09811723 = phi ptr [ %.sroa.25.0988, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ], [ %.sroa.25.09811722, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677 ]
  %.sroa.0947.09901721 = phi ptr [ %.sroa.0947.0997, %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit672 ], [ %.sroa.0947.09901720, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i677 ] ; 3 uses
  %.not.i.i1.i682 = icmp eq ptr %.sroa.0947.09901721, null
  br i1 %.not.i.i1.i682, label %.body, label %bb.gb

bb.gb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681
  %i.azq = ptrtoint ptr %.sroa.25.09811723 to i64
  %i.azr = ptrtoint ptr %.sroa.0947.09901721 to i64
  %i.azs = sub i64 %i.azq, %i.azr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0947.09901721, i64 noundef %i.azs) #35
  br label %.body

.body:                                            ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681, %bb.gb, %bb.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit
  %.pn225 = phi { ptr, i32 } [ %i.cu, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit ], [ %i.dq, %bb.k ], [ %i.et, %bb.m ], [ %.pn220.pn.pn1725, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i681 ], [ %.pn220.pn.pn1725, %bb.gb ]
  %i.azt = load ptr, ptr %i.d, align 8, !tbaa !78
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.azt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit685 unwind label %bb.gc

bb.gc:                                            ; preds = %.body
  %i.azu = landingpad { ptr, i32 }
          catch ptr null
  %i.azv = extractvalue { ptr, i32 } %i.azu, 0
  call void @__clang_call_terminate(ptr %i.azv) #37
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit685: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %.pn225

bb.gd:                                            ; preds = %bb.fo
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !162    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !180
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #34 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !19
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #35
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !207
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !180
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #5

end_hunk_4
