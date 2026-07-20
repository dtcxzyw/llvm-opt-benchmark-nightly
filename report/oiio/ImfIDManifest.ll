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
  %3 = ptrtoaddr ptr %2 to i64                    ; 2 uses
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
  %i.w = icmp ugt i64 %i.ew, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader413, %._crit_edge
  %.lcssa447762 = phi i64 [ %i.ew, %._crit_edge ], [ %i.o, %.preheader413 ] ; 5 uses
  %.lcssa454761 = phi i64 [ %i.ev, %._crit_edge ], [ %i.n, %.preheader413 ]
  %.lcssa461760 = phi ptr [ %i.es, %._crit_edge ], [ %i.k, %.preheader413 ]
  %.lcssa468759 = phi ptr [ %i.er, %._crit_edge ], [ %i.j, %.preheader413 ]
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
  %i.ae = phi ptr [ %i.k, %.lr.ph ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  %.080505 = phi i64 [ 1, %.lr.ph ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 4 uses
  %i.af = getelementptr [32 x i8], ptr %i.ae, i64 %.080505 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -32
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
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
  %.083 = phi i64 [ %i.ar, %bb.j ], [ %i.am, %bb.i ] ; 5 uses
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
  store ptr %i.q, ptr %8, align 8, !tbaa !23, !alias.scope !20
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !18, !noalias !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !20
  store i64 %.083, ptr %i.c, align 8, !tbaa !24, !noalias !20
  %i.ax = icmp samesign ugt i64 %.083, 15
  br i1 %i.ax, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.p
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc127 unwind label %bb.ai ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !18, !alias.scope !20
  %i.az = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !20
  store i64 %i.az, ptr %i.q, align 8, !tbaa !19, !alias.scope !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %bb.p
  %i.ba = phi ptr [ %i.ay, %.noexc127 ], [ %i.q, %bb.p ] ; 2 uses
  switch i64 %.083, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !19
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.aw, i64 %.083, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !20 ; 2 uses
  store i64 %i.bc, ptr %i.r, align 8, !tbaa !14, !alias.scope !20
  %i.bd = load ptr, ptr %8, align 8, !tbaa !18, !alias.scope !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bf = load ptr, ptr %6, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %.080505 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14, !noalias !25 ; 3 uses
  %i.bj = icmp ugt i64 %.090, %i.bi
  br i1 %i.bj, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a
.loopexit.split-lp.i:                             ; preds = %bb.cd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

bb.cq:                                            ; preds = %bb.co
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ib
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.cq
  %i.nv = load i64, ptr %i.ib, align 8, !tbaa !19
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.ns, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %bb.cb, %bb.ca, %bb.bw, %bb.bv
  %.pn3184.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.ks, %bb.ca ], [ %i.kt, %bb.cb ], [ %i.kc, %bb.bv ], [ %i.kl, %bb.bw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jq) #35
  br label %.body

bb.cr:                                            ; preds = %bb.bz
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit: ; preds = %._crit_edge.i, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.jb, i64 48 ; 4 uses
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %bb.cs unwind label %.loopexit403

bb.cs:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EEEEvRPKcSE_RT_i.exit
  %i.ny = load ptr, ptr %i.d, align 8, !tbaa !7   ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oa = icmp ult ptr %2, %i.nz
  br i1 %i.oa, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ob = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ob, ptr noundef nonnull @.str.15)
          to label %.invoke831 unwind label %bb.cu

.invoke831:                                       ; preds = %bb.ct, %bb.cy
  %i.oc = phi ptr [ %i.on, %bb.cy ], [ %i.ob, %bb.ct ]
  invoke void @__cxa_throw(ptr nonnull %i.oc, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
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
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ob) #32
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
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store ptr %i.oe, ptr %i.d, align 8, !tbaa !7
  %i.of = load i8, ptr %i.ny, align 1, !tbaa !19
  %i.og = sext i8 %i.of to i32
  %i.oh = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  store i32 %i.og, ptr %i.oh, align 8, !tbaa !54
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readPascalStringERPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.oi)
          to label %bb.cw unwind label %.loopexit408

bb.cw:                                            ; preds = %bb.cv
  %i.oj = getelementptr inbounds nuw i8, ptr %i.jb, i64 112
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readPascalStringERPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.oj)
          to label %bb.cx unwind label %.loopexit408

bb.cx:                                            ; preds = %bb.cw
  %i.ok = load ptr, ptr %i.d, align 8, !tbaa !7   ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 5 ; 4 uses
  %i.om = icmp ult ptr %2, %i.ol
  br i1 %i.om, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.on = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.on, ptr noundef nonnull @.str.15)
          to label %.invoke831 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.on) #32
  br label %.body

bb.da:                                            ; preds = %bb.cx
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  %i.oq = load i8, ptr %i.ok, align 1, !tbaa !19
  %i.or = load i32, ptr %i.op, align 1            ; 2 uses
  store ptr %i.ol, ptr %i.d, align 8, !tbaa !7
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %.lr.ph561, label %._crit_edge562

.lr.ph561:                                        ; preds = %bb.da
  %i.ot = getelementptr inbounds nuw i8, ptr %i.jb, i64 144 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jb, i64 160
  %i.ov = getelementptr inbounds nuw i8, ptr %i.jb, i64 152 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jb, i64 184 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.jb, i64 56 ; 3 uses
  br label %bb.db

._crit_edge562:                                   ; preds = %._crit_edge556, %bb.da
  %i.oy = phi ptr [ %i.ol, %bb.da ], [ %.lcssa538549.lcssa, %._crit_edge556 ]
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond628.not = icmp eq i64 %indvars.iv.next626, %wide.trip.count
  br i1 %exitcond628.not, label %._crit_edge565, label %bb.bn, !llvm.loop !72

bb.db:                                            ; preds = %.lr.ph561, %._crit_edge556
  %.promoted.i250 = phi ptr [ %i.ol, %.lr.ph561 ], [ %.lcssa538549.lcssa, %._crit_edge556 ] ; 11 uses
  %.081559 = phi i32 [ 0, %.lr.ph561 ], [ %i.vh, %._crit_edge556 ]
  %.082558 = phi i64 [ 0, %.lr.ph561 ], [ %i.py, %._crit_edge556 ]
  switch i8 %i.oq, label %bb.dl [
    i8 0, label %bb.dc
    i8 1, label %bb.dh
  ]

bb.dc:                                            ; preds = %bb.db
  %i.oz = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 8 ; 2 uses
  %i.pa = icmp ult ptr %2, %i.oz
  br i1 %i.pa, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.pb = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pb, ptr noundef nonnull @.str.15)
          to label %.invoke833 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pb) #32
  br label %.body

bb.df:                                            ; preds = %.invoke833
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dg:                                            ; preds = %bb.dc
  %i.pe = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 1
  store ptr %i.pe, ptr %i.d, align 8, !tbaa !7
  %i.pf = load i64, ptr %.promoted.i250, align 1
  br label %.loopexit397

bb.dh:                                            ; preds = %bb.db
  %i.pg = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 4 ; 2 uses
  %i.ph = icmp ult ptr %2, %i.pg
  br i1 %i.ph, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pi = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pi, ptr noundef nonnull @.str.15)
          to label %.invoke833 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pi) #32
  br label %.body

bb.dk:                                            ; preds = %bb.dh
  %i.pk = getelementptr inbounds nuw i8, ptr %.promoted.i250, i64 1
  store ptr %i.pk, ptr %i.d, align 8, !tbaa !7
  %i.pl = load i32, ptr %.promoted.i250, align 1
  %i.pm = zext i32 %i.pl to i64
  br label %.loopexit397

bb.dl:                                            ; preds = %bb.db
  %.not.i252527 = icmp ult ptr %.promoted.i250, %2
  br i1 %.not.i252527, label %.lr.ph531.preheader, label %._crit_edge532

.lr.ph531.preheader:                              ; preds = %bb.dl
  %.promoted.i250617 = ptrtoaddr ptr %.promoted.i250 to i64
  %scevgep = getelementptr i8, ptr %.promoted.i250, i64 %3
  %i.pn = sub i64 0, %.promoted.i250617
  %scevgep618 = getelementptr i8, ptr %scevgep, i64 %i.pn ; 2 uses
  br label %.lr.ph531

bb.dm:                                            ; preds = %.lr.ph531
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251528, 7
  %exitcond619.not = icmp eq ptr %i.ps, %scevgep618
  br i1 %exitcond619.not, label %._crit_edge532, label %.lr.ph531, !llvm.loop !43

._crit_edge532:                                   ; preds = %bb.dl, %bb.dm
  %.lcssa525 = phi ptr [ %scevgep618, %bb.dm ], [ %.promoted.i250, %bb.dl ]
  store ptr %.lcssa525, ptr %i.d, align 8
  %i.po = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.po, ptr noundef nonnull @.str.33)
          to label %.invoke833 unwind label %bb.dn

.invoke833:                                       ; preds = %bb.dd, %._crit_edge532, %bb.di
  %i.pp = phi ptr [ %i.pi, %bb.di ], [ %i.po, %._crit_edge532 ], [ %i.pb, %bb.dd ]
  invoke void @__cxa_throw(ptr nonnull %i.pp, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont834 unwind label %bb.df

.cont834:                                         ; preds = %.invoke833
  unreachable

bb.dn:                                            ; preds = %._crit_edge532
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.po) #32
  br label %.body

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %bb.dm
  %.010.i529 = phi i64 [ %i.px, %bb.dm ], [ 0, %.lr.ph531.preheader ]
  %i.pr = phi ptr [ %i.ps, %bb.dm ], [ %.promoted.i250, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv.i251528 = phi i64 [ %indvars.iv.next.i253, %bb.dm ], [ 0, %.lr.ph531.preheader ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 3 uses
  %i.pt = load i8, ptr %i.pr, align 1, !tbaa !19  ; 2 uses
  %i.pu = and i8 %i.pt, 127
  %i.pv = zext nneg i8 %i.pu to i64
  %i.pw = shl i64 %i.pv, %indvars.iv.i251528
  %i.px = or i64 %i.pw, %.010.i529                ; 2 uses
  %.not12.i = icmp sgt i8 %i.pt, -1
  br i1 %.not12.i, label %.loopexit397, label %bb.dm, !llvm.loop !43

.loopexit397:                                     ; preds = %.lr.ph531, %bb.dk, %bb.dg
  %.sink = phi ptr [ %i.oz, %bb.dg ], [ %i.pg, %bb.dk ], [ %i.ps, %.lr.ph531 ] ; 3 uses
  %.0 = phi i64 [ %i.pf, %bb.dg ], [ %i.pm, %bb.dk ], [ %i.px, %.lr.ph531 ]
  store ptr %.sink, ptr %i.d, align 8
  %i.py = add i64 %.0, %.082558                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  store i64 %i.py, ptr %10, align 8, !tbaa !76, !alias.scope !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !73
  %i.pz = load ptr, ptr %i.ou, align 8, !tbaa !78 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not10.i.i.i.i, label %.critedge.i259, label %.lr.ph.i.i.i.i257

.lr.ph.i.i.i.i257:                                ; preds = %.loopexit397, %.lr.ph.i.i.i.i257
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i257 ], [ %i.pz, %.loopexit397 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i257 ], [ %i.ov, %.loopexit397 ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !24
  %i.qc = icmp ult i64 %i.qb, %i.py               ; 2 uses
  %.19.i.i.i.i = select i1 %i.qc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.qc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i258 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i258, label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i257, !llvm.loop !79

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i257
  %i.qd = icmp eq ptr %.19.i.i.i.i, %i.ov
  br i1 %i.qd, label %.critedge.i259, label %bb.do

bb.do:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !24
  %i.qg = icmp ult i64 %i.py, %i.qf
  br i1 %i.qg, label %.critedge.i259, label %bb.dv

.critedge.i259:                                   ; preds = %bb.do, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i, %.loopexit397
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.do ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE11lower_boundERSC_.exit.i ], [ %i.ov, %.loopexit397 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.ot, ptr %4, align 8, !tbaa !80
  %i.qh = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc320 unwind label %bb.dx ; 8 uses

.noexc320:                                        ; preds = %.critedge.i259
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32 ; 3 uses
  store i64 %i.py, ptr %i.qi, align 8, !tbaa !82
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 40 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  store ptr %i.qh, ptr %i.ie, align 8, !tbaa !84
  %i.qm = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ot, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.qi)
          to label %bb.dp unwind label %bb.ds     ; 2 uses

bb.dp:                                            ; preds = %.noexc320
  %i.qn = extractvalue { ptr, ptr } %i.qm, 0      ; 2 uses
  %i.qo = extractvalue { ptr, ptr } %i.qm, 1      ; 4 uses
  %.not.i317 = icmp eq ptr %i.qo, null
  br i1 %.not.i317, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i.i318 = icmp ne ptr %i.qn, null
  %i.qp = icmp eq ptr %i.qo, %i.ov
  %or.cond.i.i.i = select i1 %.not.i.i.i318, i1 true, i1 %i.qp
  br i1 %or.cond.i.i.i, label %.thread.i319, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qr = load i64, ptr %i.qi, align 8, !tbaa !24
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !24
  %i.qt = icmp ult i64 %i.qr, %i.qs
  br label %.thread.i319

.thread.i319:                                     ; preds = %bb.dr, %bb.dq
  %i.qu = phi i1 [ %i.qt, %bb.dr ], [ true, %bb.dq ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qu, ptr noundef nonnull %i.qh, ptr noundef nonnull %i.qo, ptr noundef nonnull align 8 dereferenceable(32) %i.ov) #32
  %i.qv = load i64, ptr %i.ow, align 8, !tbaa !45
  %i.qw = add i64 %i.qv, 1
  store i64 %i.qw, ptr %i.ow, align 8, !tbaa !45
  br label %bb.dz

bb.ds:                                            ; preds = %.noexc320
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body321

bb.dt:                                            ; preds = %bb.dp
  %i.qy = load ptr, ptr %i.qj, align 8, !tbaa !13 ; 3 uses
  %i.qz = load ptr, ptr %i.qk, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.qy, %i.qz
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.dt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.rf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.qy, %bb.dt ] ; 3 uses
  %i.ra = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !19
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rf, %i.qz
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.dt
  %i.rg = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.qy, %bb.dt ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i, label %bb.du

bb.du:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.rh = load ptr, ptr %i.ql, align 8, !tbaa !42
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rk) #35
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i.i: ; preds = %bb.du, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef 64) #35
  br label %bb.dz

bb.dv:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.rl = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.rl, ptr noundef nonnull @.str.17)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  invoke void @__cxa_throw(ptr nonnull %i.rl, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.eq unwind label %.loopexit.split-lp399

bb.dx:                                            ; preds = %.critedge.i259
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %.body321

.body321:                                         ; preds = %bb.ds, %bb.dx
  %eh.lpad-body322 = phi { ptr, i32 } [ %i.rm, %bb.dx ], [ %i.qx, %bb.ds ]
  call void @_ZNSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #32
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest4initEPKcS2_:bb.a

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i324, %.lr.ph.i.i.i.i324.prol.loopexit
  %.lcssa926 = phi ptr [ %.lcssa926.unr, %.lr.ph.i.i.i.i324.prol.loopexit ], [ %i.te, %.lr.ph.i.i.i.i324 ]
  store ptr %.lcssa926, ptr %i.rv, align 8, !tbaa !10
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.eb:                                            ; preds = %bb.ea
  %i.tf = icmp ult i64 %i.sk, %i.sd
  br i1 %i.tf, label %bb.ec, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #33
          to label %.noexc329 unwind label %.loopexit.split-lp399

.noexc329:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.eb
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.sb, i64 %i.sd)
  %i.tg = add nuw nsw i64 %.sroa.speculated.i.i, %i.sb
  %i.th = call i64 @llvm.umin.i64(i64 %i.tg, i64 288230376151711743) ; 2 uses
  %i.ti = shl nuw nsw i64 %i.th, 5
  %i.tj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ti) #34
          to label %.noexc330 unwind label %.loopexit398 ; 4 uses

.noexc330:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.sa ; 3 uses
  %xtraiter986 = and i64 %i.sd, 3                 ; 2 uses
  %lcmp.mod987.not = icmp eq i64 %xtraiter986, 0
  br i1 %lcmp.mod987.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.noexc330, %.lr.ph.i.i.i30.i.prol
  %.08.i.i.i31.i.prol = phi ptr [ %i.to, %.lr.ph.i.i.i30.i.prol ], [ %i.tk, %.noexc330 ] ; 4 uses
  %.057.i.i.i32.i.prol = phi i64 [ %i.tn, %.lr.ph.i.i.i30.i.prol ], [ %i.sd, %.noexc330 ]
  %prol.iter988 = phi i64 [ %prol.iter988.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.noexc330 ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 16 ; 2 uses
  store ptr %i.tl, ptr %.08.i.i.i31.i.prol, align 8, !tbaa !23
  %i.tm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 8
  store i64 0, ptr %i.tm, align 8, !tbaa !14
  store i8 0, ptr %i.tl, align 8, !tbaa !19
  %i.tn = add i64 %.057.i.i.i32.i.prol, -1        ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i.prol, i64 32 ; 2 uses
  %prol.iter988.next = add i64 %prol.iter988, 1   ; 2 uses
  %prol.iter988.cmp.not = icmp eq i64 %prol.iter988.next, %xtraiter986
  br i1 %prol.iter988.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !90

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.noexc330
  %.08.i.i.i31.i.unr = phi ptr [ %i.tk, %.noexc330 ], [ %i.to, %.lr.ph.i.i.i30.i.prol ]
  %.057.i.i.i32.i.unr = phi i64 [ %i.sd, %.noexc330 ], [ %i.tn, %.lr.ph.i.i.i30.i.prol ]
  %i.tp = sub nsw i64 %i.sb, %i.ru
  %i.tq = icmp ugt i64 %i.tp, -4
  br i1 %i.tq, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.08.i.i.i31.i = phi ptr [ %i.ud, %.lr.ph.i.i.i30.i ], [ %.08.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i32.i = phi i64 [ %i.uc, %.lr.ph.i.i.i30.i ], [ %.057.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  %i.tr = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 16 ; 2 uses
  store ptr %i.tr, ptr %.08.i.i.i31.i, align 8, !tbaa !23
  %i.ts = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 8
  store i64 0, ptr %i.ts, align 8, !tbaa !14
  store i8 0, ptr %i.tr, align 8, !tbaa !19
  %i.tt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 32
  %i.tu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 48 ; 2 uses
  store ptr %i.tu, ptr %i.tt, align 8, !tbaa !23
  %i.tv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 40
  store i64 0, ptr %i.tv, align 8, !tbaa !14
  store i8 0, ptr %i.tu, align 8, !tbaa !19
  %i.tw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 64
  %i.tx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 80 ; 2 uses
  store ptr %i.tx, ptr %i.tw, align 8, !tbaa !23
  %i.ty = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 72
  store i64 0, ptr %i.ty, align 8, !tbaa !14
  store i8 0, ptr %i.tx, align 8, !tbaa !19
  %i.tz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 96
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 112 ; 2 uses
  store ptr %i.ua, ptr %i.tz, align 8, !tbaa !23
  %i.ub = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 104
  store i64 0, ptr %i.ub, align 8, !tbaa !14
  store i8 0, ptr %i.ua, align 8, !tbaa !19
  %i.uc = add i64 %.057.i.i.i32.i, -4             ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.i, i64 128
  %.not.i.i.i33.i.3 = icmp eq i64 %i.uc, 0
  br i1 %.not.i.i.i33.i.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !89

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i326 = icmp eq ptr %i.rx, %i.rw
  br i1 %.not10.i.i.i.i326, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i327 = phi ptr [ %i.ur, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.tj, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.uq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.rx, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ue = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 16 ; 3 uses
  store ptr %i.ue, ptr %.012.i.i.i.i327, align 8, !tbaa !23, !alias.scope !91, !noalias !94
  %i.uf = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !18, !alias.scope !94, !noalias !91 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.uh = icmp eq ptr %i.uf, %i.ug
  br i1 %i.uh, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328

bb.ed:                                            ; preds = %.lr.ph.i.i.i37.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !14, !alias.scope !94, !noalias !91 ; 3 uses
  %i.uk = icmp ult i64 %i.uj, 16
  call void @llvm.assume(i1 %i.uk)
  %i.ul = add nuw nsw i64 %i.uj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ue, ptr noundef nonnull align 8 dereferenceable(1) %i.ug, i64 %i.ul, i1 false), !alias.scope !96
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328: ; preds = %.lr.ph.i.i.i37.i
  store ptr %i.uf, ptr %.012.i.i.i.i327, align 8, !tbaa !18, !alias.scope !91, !noalias !94
  %i.um = load i64, ptr %i.ug, align 8, !tbaa !19, !alias.scope !94, !noalias !91
  store i64 %i.um, ptr %i.ue, align 8, !tbaa !19, !alias.scope !91, !noalias !94
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !94, !noalias !91
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328, %bb.ed
  %i.un = phi i64 [ %i.uj, %bb.ed ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i328 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 8
  store i64 %i.un, ptr %i.up, align 8, !tbaa !14, !alias.scope !91, !noalias !94
  store ptr %i.ug, ptr %.0911.i.i.i.i, align 8, !tbaa !18, !alias.scope !94, !noalias !91
  store i64 0, ptr %i.uo, align 8, !tbaa !14, !alias.scope !94, !noalias !91
  store i8 0, ptr %i.ug, align 8, !tbaa !19, !alias.scope !94, !noalias !91
  %i.uq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i327, i64 32
  %.not.i.i.i38.i = icmp eq ptr %i.uq, %i.rw
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !97

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.rx, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.us = load ptr, ptr %i.se, align 8, !tbaa !42
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = sub i64 %i.ut, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.uu) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i: ; preds = %bb.ee, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.tj, ptr %i.ro, align 8, !tbaa !13
  %i.uv = getelementptr inbounds nuw [32 x i8], ptr %i.tk, i64 %i.sd
  store ptr %i.uv, ptr %i.rv, align 8, !tbaa !10
  %i.uw = getelementptr inbounds nuw [32 x i8], ptr %i.tj, i64 %i.th
  store ptr %i.uw, ptr %i.se, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.ef:                                            ; preds = %bb.dz
  %i.ux = icmp ult i64 %i.ru, %i.sb
  br i1 %i.ux, label %bb.eg, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.eg:                                            ; preds = %bb.ef
  %i.uy = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rt ; 3 uses
  %.not.i.i276 = icmp eq ptr %i.rw, %i.uy
  br i1 %.not.i.i276, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i277

.lr.ph.i.i.i.i277:                                ; preds = %bb.eg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280
  %.05.i.i.i.i278 = phi ptr [ %i.ve, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280 ], [ %i.uy, %bb.eg ] ; 3 uses
  %i.uz = load ptr, ptr %.05.i.i.i.i278, align 8, !tbaa !18 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i278, i64 16 ; 2 uses
  %i.vb = icmp eq ptr %i.uz, %i.va
  br i1 %i.vb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279: ; preds = %.lr.ph.i.i.i.i277
  %i.vc = load i64, ptr %i.va, align 8, !tbaa !19
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vd) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280: ; preds = %.lr.ph.i.i.i.i277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279
  %i.ve = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i278, i64 32 ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %i.ve, %i.rw
  br i1 %.not.i.i.i.i281, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282, label %.lr.ph.i.i.i.i277, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i280
  store ptr %i.uy, ptr %i.rv, align 8, !tbaa !10
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41.i, %bb.ef, %bb.eg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i282
  %i.vf = load ptr, ptr %i.ox, align 8, !tbaa !10
  %i.vg = load ptr, ptr %i.nx, align 8, !tbaa !13
  %.not566 = icmp eq ptr %i.vf, %i.vg
  br i1 %.not566, label %._crit_edge556, label %.lr.ph555

._crit_edge556:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.lcssa538549.lcssa = phi ptr [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ], [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  store ptr %.lcssa538549.lcssa, ptr %i.d, align 8
  %i.vh = add nuw nsw i32 %.081559, 1             ; 2 uses
  %exitcond624.not = icmp eq i32 %i.vh, %i.or
  br i1 %exitcond624.not, label %._crit_edge562, label %bb.db, !llvm.loop !98

.lr.ph555:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.061554 = phi i64 [ %i.wl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 2 uses
  %.lcssa538549553 = phi ptr [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sink, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ] ; 5 uses
  %.not.i288539 = icmp ult ptr %.lcssa538549553, %2
  br i1 %.not.i288539, label %.lr.ph543.preheader, label %._crit_edge544

.lr.ph543.preheader:                              ; preds = %.lr.ph555
  %.lcssa538549553621 = ptrtoaddr ptr %.lcssa538549553 to i64
  %scevgep620 = getelementptr i8, ptr %.lcssa538549553, i64 %3
  %i.vi = sub i64 0, %.lcssa538549553621
  %scevgep622 = getelementptr i8, ptr %scevgep620, i64 %i.vi ; 2 uses
  br label %.lr.ph543

bb.eh:                                            ; preds = %.lr.ph543
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i286540, 7
  %exitcond623.not = icmp eq ptr %i.vm, %scevgep622
  br i1 %exitcond623.not, label %._crit_edge544, label %.lr.ph543, !llvm.loop !43

._crit_edge544:                                   ; preds = %.lr.ph555, %bb.eh
  %.lcssa537 = phi ptr [ %scevgep622, %bb.eh ], [ %.lcssa538549553, %.lr.ph555 ]
  store ptr %.lcssa537, ptr %i.d, align 8
  %i.vj = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.vj, ptr noundef nonnull @.str.33)
          to label %.invoke835 unwind label %bb.ei

bb.ei:                                            ; preds = %._crit_edge544
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vj) #32
  br label %.body

.lr.ph543:                                        ; preds = %.lr.ph543.preheader, %bb.eh
  %.010.i287541 = phi i64 [ %i.vr, %bb.eh ], [ 0, %.lr.ph543.preheader ]
  %i.vl = phi ptr [ %i.vm, %bb.eh ], [ %.lcssa538549553, %.lr.ph543.preheader ] ; 2 uses
  %indvars.iv.i286540 = phi i64 [ %indvars.iv.next.i289, %bb.eh ], [ 0, %.lr.ph543.preheader ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 1 ; 6 uses
  %i.vn = load i8, ptr %i.vl, align 1, !tbaa !19  ; 2 uses
  %i.vo = and i8 %i.vn, 127
  %i.vp = zext nneg i8 %i.vo to i64
  %i.vq = shl i64 %i.vp, %indvars.iv.i286540
  %i.vr = or i64 %i.vq, %.010.i287541             ; 3 uses
  %.not12.i290 = icmp sgt i8 %i.vn, -1
  br i1 %.not12.i290, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294, label %bb.eh, !llvm.loop !43

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294: ; preds = %.lr.ph543
  %sext = shl i64 %i.vr, 32
  %i.vs = ashr exact i64 %sext, 32                ; 2 uses
  %i.vt = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.vu = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 5
  %i.vz = icmp ugt i64 %i.vs, %i.vy
  %i.wa = and i64 %i.vr, 2147483648
  %i.wb = icmp ne i64 %i.wa, 0
  %or.cond3 = or i1 %i.wb, %i.vz
  br i1 %or.cond3, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294
  store ptr %i.vm, ptr %i.d, align 8
  %i.wc = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.wc, ptr noundef nonnull @.str.18)
          to label %.invoke835 unwind label %bb.ek

.invoke835:                                       ; preds = %bb.ej, %._crit_edge544
  %i.wd = phi ptr [ %i.vj, %._crit_edge544 ], [ %i.wc, %bb.ej ]
  invoke void @__cxa_throw(ptr nonnull %i.wd, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %.cont836 unwind label %.loopexit.split-lp

.cont836:                                         ; preds = %.invoke835
  unreachable

.loopexit:                                        ; preds = %bb.el
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.vm, ptr %i.d, align 8
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke835
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %bb.ej
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wc) #32
  br label %.body

bb.el:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_125readVariableLengthIntegerERPKcS2_.exit294
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0353.0381, i64 %i.vs
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !3
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [32 x i8], ptr %i.vu, i64 %i.wh
  %i.wj = load ptr, ptr %i.ro, align 8, !tbaa !13
  %i.wk = getelementptr inbounds nuw [32 x i8], ptr %i.wj, i64 %.061554
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %i.wi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.el
  %i.wl = add nuw i64 %.061554, 1                 ; 2 uses
  %i.wm = load ptr, ptr %i.ox, align 8, !tbaa !10
  %i.wn = load ptr, ptr %i.nx, align 8, !tbaa !13
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = ashr exact i64 %i.wq, 5
  %i.ws = icmp ult i64 %i.wl, %i.wr
  br i1 %i.ws, label %.lr.ph555, label %._crit_edge556, !llvm.loop !99

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit398, %.loopexit.split-lp399, %.loopexit408, %.loopexit.split-lp409, %.loopexit403, %.loopexit.split-lp404, %bb.be, %bb.bf, %bb.bq, %.body.thread.i, %.body321, %bb.dy, %bb.ek, %bb.ei, %bb.df, %bb.dn, %bb.dj, %bb.de, %bb.cz, %bb.cu, %bb.au, %bb.av, %bb.az, %bb.aq, %bb.ap
  %.pn113 = phi { ptr, i32 } [ %i.fr, %bb.aq ], [ %i.fq, %bb.ap ], [ %i.gy, %bb.az ], [ %i.gc, %bb.av ], [ %i.gb, %bb.au ], [ %i.hj, %bb.bf ], [ %i.hi, %bb.be ], [ %.pn3184.i, %.body.thread.i ], [ %i.we, %bb.ek ], [ %i.jf, %bb.bq ], [ %lpad.loopexit.split-lp406, %.loopexit.split-lp404 ], [ %i.od, %bb.cu ], [ %i.oo, %bb.cz ], [ %i.vk, %bb.ei ], [ %i.pq, %bb.dn ], [ %lpad.loopexit.split-lp401, %.loopexit.split-lp399 ], [ %i.pc, %bb.de ], [ %i.pj, %bb.dj ], [ %i.pd, %bb.df ], [ %lpad.loopexit.split-lp411, %.loopexit.split-lp409 ], [ %i.rn, %bb.dy ], [ %eh.lpad-body322, %.body321 ], [ %lpad.loopexit405, %.loopexit403 ], [ %lpad.loopexit410, %.loopexit408 ], [ %lpad.loopexit400, %.loopexit398 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i296 = icmp eq ptr %.sroa.0347.0, null
  br i1 %.not.i.i.i296, label %_ZNSt6vectorIcSaIcEED2Ev.exit297, label %bb.em

bb.em:                                            ; preds = %.body
  %i.wt = ptrtoint ptr %.sroa.11.0 to i64
  %i.wu = ptrtoint ptr %.sroa.0347.0 to i64
  %i.wv = sub i64 %i.wt, %i.wu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0347.0, i64 noundef %i.wv) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit297

_ZNSt6vectorIcSaIcEED2Ev.exit297:                 ; preds = %bb.em, %.body
  %.not.i.i.i298 = icmp eq ptr %.sroa.0353.0381, null
  br i1 %.not.i.i.i298, label %_ZNSt6vectorIiSaIiEED2Ev.exit299, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread, %_ZNSt6vectorIcSaIcEED2Ev.exit297
  %.pn113.pn394 = phi { ptr, i32 } [ %i.fp, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.pn113, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ]
  %.sroa.11358.0363393 = phi ptr [ %i.z, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.sroa.11358.0371, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ]
  %.sroa.0353.0373392 = phi ptr [ %i.y, %_ZNSt6vectorIcSaIcEED2Ev.exit297.thread ], [ %.sroa.0353.0381, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ] ; 2 uses
  %i.ww = ptrtoint ptr %.sroa.11358.0363393 to i64
  %i.wx = ptrtoint ptr %.sroa.0353.0373392 to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.0373392, i64 noundef %i.wy) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit299

_ZNSt6vectorIiSaIiEED2Ev.exit299:                 ; preds = %bb.ao, %_ZNSt6vectorIcSaIcEED2Ev.exit297, %bb.en, %bb.k, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.h
  %.pn120.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn117.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.as, %bb.k ], [ %i.av, %bb.o ], [ %i.fo, %bb.ao ], [ %.pn113, %_ZNSt6vectorIcSaIcEED2Ev.exit297 ], [ %.pn113.pn394, %bb.en ]
  %i.wz = load ptr, ptr %6, align 8, !tbaa !13    ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i.i300 = icmp eq ptr %i.wz, %i.xb
  br i1 %.not4.i.i.i300, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308, label %.lr.ph.i.i.i301

.lr.ph.i.i.i301:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit299, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304
  %.05.i.i.i302 = phi ptr [ %i.xh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304 ], [ %i.wz, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ] ; 3 uses
  %i.xc = load ptr, ptr %.05.i.i.i302, align 8, !tbaa !18 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.05.i.i.i302, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303: ; preds = %.lr.ph.i.i.i301
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !19
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304: ; preds = %.lr.ph.i.i.i301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i303
  %i.xh = getelementptr inbounds nuw i8, ptr %.05.i.i.i302, i64 32 ; 2 uses
  %.not.i.i.i305 = icmp eq ptr %i.xh, %i.xb
  br i1 %.not.i.i.i305, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306, label %.lr.ph.i.i.i301, !llvm.loop !41

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i304
  %.pr.i307 = load ptr, ptr %6, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306, %_ZNSt6vectorIiSaIiEED2Ev.exit299
  %i.xi = phi ptr [ %.pr.i307, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i306 ], [ %i.wz, %_ZNSt6vectorIiSaIiEED2Ev.exit299 ] ; 3 uses
  %.not.i.i1.i309 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i1.i309, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit311, label %bb.eo

bb.eo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i308
  %i.xj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !42
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %i.xi to i64
  %i.xn = sub i64 %i.xl, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xn) #35
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
  %i.tu = ptrtoint ptr %i.tt to i64               ; 3 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %.pre1525 ; 5 uses
  store i32 0, ptr %i.tt, align 4, !tbaa !3
  %i.tw = getelementptr i8, ptr %i.tt, i64 4      ; 3 uses
  %i.tx = add nsw i64 %.pre1525, -1               ; 2 uses
  %i.ty = icmp eq i64 %i.tx, 0
  br i1 %i.ty, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc353
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.tx, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.tw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.noexc353, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.tw, %.noexc353 ], [ %i.tz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.ph1502 = ptrtoint ptr %.0.i.i.i.i.i.ph to i64 ; 2 uses
  %i.ua = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.br unwind label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread ; 5 uses

bb.br:                                            ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0907.0, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !134 ; 3 uses
  store i32 %i.ud, ptr %i.ua, align 4, !tbaa !132
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !134
  %.not5.i.i.i.i = icmp eq ptr %i.tt, %.0.i.i.i.i.i.ph
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i359.preheader

.lr.ph.i.i.i.i359.preheader:                      ; preds = %bb.br
  %i.uf = add i64 %.0.i.i.i.i.i.ph1502, -4
  %i.ug = sub i64 %i.uf, %i.tu
  %i.uh = and i64 %i.ug, -4
  %i.ui = add i64 %i.uh, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tt, i8 -1, i64 %i.ui, i1 false), !tbaa !3
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i359.preheader, %bb.br
  %i.uj = sext i32 %i.ud to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.uj
  store i32 0, ptr %i.uk, align 4, !tbaa !3
  %i.ul = icmp samesign ugt i64 %.pre1525, 1
  br i1 %i.ul, label %.lr.ph1351, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

.lr.ph1351:                                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %i.um = sub i64 %.0.i.i.i.i.i.ph1502, %i.tu
  %i.un = lshr i64 %i.um, 2                       ; 2 uses
  %i.uo = trunc i64 %i.un to i32
  %sext = shl i64 %i.un, 32
  %i.up = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.bq
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit667

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit665.thread: ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.bt:                                            ; preds = %.lr.ph1351, %.critedge2
  %.01861350 = phi i32 [ 1, %.lr.ph1351 ], [ %.1187.lcssa, %.critedge2 ] ; 2 uses
  %.01931349 = phi i64 [ 1, %.lr.ph1351 ], [ %i.wn, %.critedge2 ] ; 3 uses
  %.sroa.29.01348 = phi ptr [ %i.ub, %.lr.ph1351 ], [ %.sroa.29.1, %.critedge2 ] ; 9 uses
  %.sroa.17.01347 = phi ptr [ %i.ub, %.lr.ph1351 ], [ %.sroa.17.1, %.critedge2 ] ; 5 uses
  %.sroa.0859.01346 = phi ptr [ %i.ua, %.lr.ph1351 ], [ %.sroa.0859.1, %.critedge2 ] ; 11 uses
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0907.0, i64 %.01931349
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !134 ; 3 uses
  %i.uv = icmp eq i32 %i.uu, %.01861350
  br i1 %i.uv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.uw = getelementptr inbounds i8, ptr %.sroa.17.01347, i64 -4
  store i32 %.01861350, ptr %i.uw, align 4, !tbaa !134
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i361 = icmp eq ptr %.sroa.17.01347, %.sroa.29.01348
  br i1 %.not.i361, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.sroa.6.0.insert.ext = zext i32 %i.uu to i64   ; 2 uses
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0848.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.6.0.insert.ext
  store i64 %.sroa.0848.0.insert.insert, ptr %.sroa.17.01347, align 4
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.17.01347, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.uy = ptrtoint ptr %.sroa.29.01348 to i64
  %i.uz = ptrtoint ptr %.sroa.0859.01346 to i64   ; 2 uses
  %i.va = sub i64 %i.uy, %i.uz                    ; 4 uses
  %i.vb = icmp eq i64 %i.va, 9223372036854775800
  br i1 %i.vb, label %bb.by, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #33
          to label %.noexc370 unwind label %.loopexit.split-lp1120

.noexc370:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362: ; preds = %bb.bx
  %i.vc = ashr exact i64 %i.va, 3                 ; 3 uses
  %.sroa.speculated.i.i.i363 = call i64 @llvm.umax.i64(i64 %i.vc, i64 1)
  %i.vd = add nsw i64 %.sroa.speculated.i.i.i363, %i.vc ; 2 uses
  %i.ve = icmp ult i64 %i.vd, %i.vc
  %i.vf = call i64 @llvm.umin.i64(i64 %i.vd, i64 1152921504606846975)
  %i.vg = select i1 %i.ve, i64 1152921504606846975, i64 %i.vf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.vg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.vh = shl nuw nsw i64 %i.vg, 3
  %i.vi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vh) #34
          to label %.noexc371 unwind label %.loopexit1119 ; 8 uses

.noexc371:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i362
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.va
  %.sroa.6.0.insert.ext854 = zext i32 %i.uu to i64 ; 2 uses
  %.sroa.6.0.insert.shift855 = shl nuw i64 %.sroa.6.0.insert.ext854, 32
  %.sroa.0848.0.insert.insert852 = or disjoint i64 %.sroa.6.0.insert.shift855, %.sroa.6.0.insert.ext854
  store i64 %.sroa.0848.0.insert.insert852, ptr %i.vj, align 4
  %.not10.i.i.i.i.i364 = icmp eq ptr %.sroa.0859.01346, %.sroa.29.01348
  br i1 %.not10.i.i.i.i.i364, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365.preheader

.lr.ph.i.i.i.i.i365.preheader:                    ; preds = %.noexc371
  %i.vk = ptrtoaddr ptr %i.vi to i64
  %19 = ptrtoaddr ptr %.sroa.29.01348 to i64
  %20 = ptrtoaddr ptr %.sroa.0859.01346 to i64
  %i.vl = sub i64 %19, %20
  %i.vm = add i64 %i.vl, -8                       ; 2 uses
  %i.vn = lshr i64 %i.vm, 3
  %i.vo = add nuw nsw i64 %i.vn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.vm, 24
  %i.vp = sub i64 %i.uz, %i.vk
  %diff.check = icmp ugt i64 %i.vp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i365.preheader2163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i365.preheader
  %n.vec = and i64 %i.vo, 4611686018427387900     ; 3 uses
  %i.vq = shl i64 %n.vec, 3                       ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vi, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %.sroa.0859.01346, i64 %i.vq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vi, i64 %i.vt ; 2 uses
  %next.gep1890 = getelementptr i8, ptr %.sroa.0859.01346, i64 %i.vt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.vu = getelementptr i8, ptr %next.gep1890, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1890, align 4, !alias.scope !149, !noalias !146
  %wide.load1891 = load <2 x i64>, ptr %i.vu, align 4, !alias.scope !149, !noalias !146
  %i.vv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !146, !noalias !149
  store <2 x i64> %wide.load1891, ptr %i.vv, align 4, !alias.scope !146, !noalias !149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vw = icmp eq i64 %index.next, %n.vec
  br i1 %i.vw, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365.preheader2163

.lr.ph.i.i.i.i.i365.preheader2163:                ; preds = %.lr.ph.i.i.i.i.i365.preheader, %middle.block
  %.012.i.i.i.i.i366.ph = phi ptr [ %i.vi, %.lr.ph.i.i.i.i.i365.preheader ], [ %i.vr, %middle.block ]
  %.0911.i.i.i.i.i367.ph = phi ptr [ %.sroa.0859.01346, %.lr.ph.i.i.i.i.i365.preheader ], [ %i.vs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i365

.lr.ph.i.i.i.i.i365:                              ; preds = %.lr.ph.i.i.i.i.i365.preheader2163, %.lr.ph.i.i.i.i.i365
  %.012.i.i.i.i.i366 = phi ptr [ %i.vz, %.lr.ph.i.i.i.i.i365 ], [ %.012.i.i.i.i.i366.ph, %.lr.ph.i.i.i.i.i365.preheader2163 ] ; 2 uses
  %.0911.i.i.i.i.i367 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i.i365 ], [ %.0911.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i365.preheader2163 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.vx = load i64, ptr %.0911.i.i.i.i.i367, align 4, !alias.scope !149, !noalias !146
  store i64 %i.vx, ptr %.012.i.i.i.i.i366, align 4, !alias.scope !146, !noalias !149
  %i.vy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i367, i64 8 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i366, i64 8 ; 2 uses
  %.not.i.i.i.i.i368 = icmp eq ptr %i.vy, %.sroa.29.01348
  br i1 %.not.i.i.i.i.i368, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i365, !llvm.loop !154

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i365, %middle.block, %.noexc371
  %.0.lcssa.i.i.i.i.i369 = phi ptr [ %i.vi, %.noexc371 ], [ %i.vr, %middle.block ], [ %i.vz, %.lr.ph.i.i.i.i.i365 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i369, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0859.01346, i64 noundef %i.va) #35
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.vg
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
  %.sroa.0859.1 = phi ptr [ %.sroa.0859.01346, %bb.bu ], [ %i.vi, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0859.01346, %bb.bw ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.01347, %bb.bu ], [ %i.wa, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ux, %bb.bw ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.01348, %bb.bu ], [ %i.wb, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.29.01348, %bb.bw ] ; 2 uses
  %i.wc = trunc i64 %.01931349 to i32
  %i.wd = load i32, ptr %i.ut, align 4, !tbaa !134 ; 2 uses
  %i.we = sext i32 %i.wd to i64                   ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.we
  store i32 %i.wc, ptr %i.wf, align 4, !tbaa !3
  %i.wg = add nsw i32 %i.wd, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.wg, i32 %i.uo) ; 2 uses
  %indvars.iv.next15041887 = add nsw i64 %i.we, 1 ; 2 uses
  %i.wh = icmp slt i64 %indvars.iv.next15041887, %i.up
  br i1 %i.wh, label %.lr.ph1889, label %.critedge2

bb.bz:                                            ; preds = %.lr.ph1889
  %indvars.iv.next1504 = add nsw i64 %indvars.iv.next15041888, 1 ; 2 uses
  %i.wi = icmp slt i64 %indvars.iv.next1504, %i.up
  br i1 %i.wi, label %.lr.ph1889, label %.critedge2, !llvm.loop !155

.lr.ph1889:                                       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %bb.bz
  %indvars.iv.next15041888 = phi i64 [ %indvars.iv.next1504, %bb.bz ], [ %indvars.iv.next15041887, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %indvars.iv.next15041888
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !3
  %i.wl = icmp sgt i32 %i.wk, -1
  br i1 %i.wl, label %bb.bz, label %.critedge2.split.loop.exit, !llvm.loop !155

.critedge2.split.loop.exit:                       ; preds = %.lr.ph1889
  %i.wm = trunc nsw i64 %indvars.iv.next15041888 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.bz, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit, %.critedge2.split.loop.exit
  %.1187.lcssa = phi i32 [ %i.wm, %.critedge2.split.loop.exit ], [ %smax, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backERKS1_.exit ], [ %smax, %bb.bz ]
  %i.wn = add nuw i64 %.01931349, 1               ; 2 uses
  %exitcond1506.not = icmp eq i64 %i.wn, %.pre1525
  br i1 %exitcond1506.not, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.bt, !llvm.loop !156

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.critedge2, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %._crit_edge1345
  %.sroa.0880.01022 = phi ptr [ null, %._crit_edge1345 ], [ %i.tt, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tt, %.critedge2 ] ; 7 uses
  %.sroa.19.01019 = phi ptr [ null, %._crit_edge1345 ], [ %i.tv, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.tv, %.critedge2 ] ; 3 uses
  %.sroa.0859.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.ua, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.0859.1, %.critedge2 ] ; 14 uses
  %.sroa.17.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.ub, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.17.1, %.critedge2 ] ; 3 uses
  %.sroa.29.2 = phi ptr [ null, %._crit_edge1345 ], [ %i.ub, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %.sroa.29.1, %.critedge2 ] ; 3 uses
  %.not3.i = icmp eq ptr %.sroa.0947.0997, %.0.lcssa.i.i.i.i.i1006 ; 3 uses
  br i1 %.not3.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i
  %.15.i = phi i32 [ %i.xb, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ], [ 4, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ]
  %.sroa.01.04.i = phi ptr [ %i.xc, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ], [ %.sroa.0947.0997, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %i.wo = getelementptr i8, ptr %.sroa.01.04.i, i64 8
  %.val.val.i = load i64, ptr %i.wo, align 8, !tbaa !14 ; 10 uses
  %i.wp = trunc i64 %.val.val.i to i32
  %i.wq = add i32 %.15.i, %i.wp
  %i.wr = icmp ult i64 %.val.val.i, 128
  br i1 %i.wr, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i
  %i.ws = icmp ult i64 %.val.val.i, 16384
  br i1 %i.ws, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wt = icmp ult i64 %.val.val.i, 2097152
  br i1 %i.wt, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wu = icmp ult i64 %.val.val.i, 268435456
  br i1 %i.wu, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wv = icmp ult i64 %.val.val.i, 34359738368
  br i1 %i.wv, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ww = icmp ult i64 %.val.val.i, 4398046511104
  br i1 %i.ww, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wx = icmp ult i64 %.val.val.i, 562949953421312
  br i1 %i.wx, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wy = icmp ult i64 %.val.val.i, 72057594037927936
  br i1 %i.wy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.wz = icmp sgt i64 %.val.val.i, -1
  %i.xa = select i1 %i.wz, i32 9, i32 10
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i: ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %.lr.ph.i
  %.0.i.i = phi i32 [ 8, %bb.cg ], [ 1, %.lr.ph.i ], [ 2, %bb.ca ], [ 3, %bb.cb ], [ 4, %bb.cc ], [ 5, %bb.cd ], [ 6, %bb.ce ], [ 7, %bb.cf ], [ %i.xa, %bb.ch ]
  %i.xb = add i32 %i.wq, %.0.i.i                  ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 32 ; 2 uses
  %.not.i372 = icmp eq ptr %i.xc, %.0.lcssa.i.i.i.i.i1006
  br i1 %.not.i372, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, label %.lr.ph.i, !llvm.loop !157

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.1.lcssa.i = phi i32 [ 4, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.xb, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_128getVariableLengthIntegerSizeEm.exit.i ]
  %i.xd = ptrtoint ptr %.sroa.17.2 to i64
  %i.xe = ptrtoint ptr %.sroa.0859.2 to i64       ; 2 uses
  %i.xf = sub i64 %i.xd, %i.xe                    ; 2 uses
  %i.xg = ashr exact i64 %i.xf, 3                 ; 7 uses
  %.tr = trunc i64 %i.xg to i32                   ; 2 uses
  %i.xh = shl i32 %.tr, 3
  %i.xi = add i32 %i.xh, 12
  %i.xj = add i32 %i.xi, %.1.lcssa.i              ; 2 uses
  %i.xk = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.xl = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not1411 = icmp eq ptr %i.xk, %i.xl
  br i1 %.not1411, label %._crit_edge1378, label %.lr.ph1377

._crit_edge1378:                                  ; preds = %bb.et, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit
  %.sroa.0829.0.lcssa = phi ptr [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ], [ %.sroa.0829.1, %bb.et ] ; 9 uses
  %.sroa.31.0.lcssa = phi ptr [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ], [ %.sroa.31.1, %bb.et ] ; 6 uses
  %.0189.lcssa = phi i32 [ %i.xj, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ], [ %.3192, %bb.et ]
  %i.xm = sext i32 %.0189.lcssa to i64
  invoke void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xm)
          to label %bb.eu unwind label %bb.ew

.lr.ph1377:                                       ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit, %bb.et
  %i.xn = phi ptr [ %i.afp, %bb.et ], [ %i.xl, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ]
  %.01881376 = phi i64 [ %i.afn, %bb.et ], [ 0, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 2 uses
  %.01891375 = phi i32 [ %.3192, %bb.et ], [ %i.xj, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ]
  %.sroa.31.01374 = phi ptr [ %.sroa.31.1, %bb.et ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 20 uses
  %.sroa.15.01373 = phi ptr [ %.sroa.15.1, %bb.et ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 10 uses
  %.sroa.0829.01372 = phi ptr [ %.sroa.0829.1, %bb.et ], [ null, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117getStringListSizeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEiRKT_m.exit ] ; 30 uses
  %i.xo = getelementptr inbounds nuw [208 x i8], ptr %i.xn, i64 %.01881376 ; 10 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !52 ; 2 uses
end_hunk_3
