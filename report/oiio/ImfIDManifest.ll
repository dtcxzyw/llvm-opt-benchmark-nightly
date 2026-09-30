Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 816
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0
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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %3 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 22 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.std::pair.23", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.3", align 8    ; 6 uses
  %i.f = load i32, ptr %1, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.g, ptr %i.e, align 8, !tbaa !24
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
  br label %bb.er

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader386 unwind label %bb.h

.preheader386:                                    ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !28     ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 5                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph:                                           ; preds = %.preheader386
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.x = icmp ugt i64 %i.es, 2305843009213693951
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader386, %._crit_edge
  %.lcssa420735 = phi i64 [ %i.es, %._crit_edge ], [ %i.p, %.preheader386 ] ; 2 uses
  %.lcssa427734 = phi i64 [ %i.er, %._crit_edge ], [ %i.o, %.preheader386 ]
  %.lcssa434733 = phi ptr [ %i.eo, %._crit_edge ], [ %i.l, %.preheader386 ]
  %.lcssa441732 = phi ptr [ %i.en, %._crit_edge ], [ %i.k, %.preheader386 ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa441732, %.lcssa434733
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = ashr exact i64 %.lcssa427734, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #34
          to label %.noexc126 unwind label %bb.ap ; 5 uses

.noexc126:                                        ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.lcssa420735 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !21
  %i.ab = add nsw i64 %.lcssa420735, -1           ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc126
  %i.ad = getelementptr i8, ptr %i.z, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ab, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !21
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit301

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.af = phi ptr [ %i.l, %.lr.ph ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  %.090478 = phi i64 [ 1, %.lr.ph ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 4 uses
  %i.ag = getelementptr [32 x i8], ptr %i.af, i64 %.090478 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -32
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24    ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 255
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  br i1 %i.ak, label %bb.j, label %13

bb.j:                                             ; preds = %bb.i
  %11 = load i16, ptr %i.al, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %i.am = zext i16 %12 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit301

13:                                               ; preds = %bb.i
  %14 = load i8, ptr %i.al, align 1, !tbaa !34
  %15 = zext i8 %14 to i64
  br label %bb.l

bb.l:                                             ; preds = %13, %bb.j
  %.089 = phi i64 [ %i.am, %bb.j ], [ %15, %13 ]  ; 2 uses
  %.088 = phi i64 [ 2, %bb.j ], [ 1, %13 ]        ; 4 uses
  %i.ao = icmp ugt i64 %.089, %i.aj
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ap = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull @.str.14)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #33
          to label %bb.es unwind label %bb.k

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ap) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit301

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !32, !noalias !140
  store ptr %i.r, ptr %7, align 8, !tbaa !35, !alias.scope !140
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !33, !noalias !140 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.089, i64 %i.ar) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !140
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !36, !noalias !140
  %i.at = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.at, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.p
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc127 unwind label %bb.ai ; 2 uses

.noexc127:                                        ; preds = %.noexc10.i.i
  store ptr %i.au, ptr %7, align 8, !tbaa !33, !alias.scope !140
  %i.av = load i64, ptr %i.d, align 8, !tbaa !36, !noalias !140
  store i64 %i.av, ptr %i.r, align 8, !tbaa !34, !alias.scope !140
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc127, %bb.p
  %i.aw = phi ptr [ %i.au, %.noexc127 ], [ %i.r, %bb.p ] ; 2 uses
  %trunc = trunc nuw i64 %spec.select.i.i.i to i16
  switch i16 %trunc, label %bb.r [
    i16 1, label %bb.q
    i16 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !34
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !34
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.as, i64 %spec.select.i.i.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !36, !noalias !140 ; 2 uses
  store i64 %i.ay, ptr %i.s, align 8, !tbaa !32, !alias.scope !140
  %i.az = load ptr, ptr %7, align 8, !tbaa !33, !alias.scope !140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bb = load ptr, ptr %5, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.090478 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !32, !noalias !141 ; 3 uses
  %i.bf = icmp ugt i64 %.088, %i.be
  br i1 %i.bf, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i64 noundef %.088, i64 noundef %i.be) #33
          to label %.noexc131 unwind label %.loopexit.split-lp388

.noexc131:                                        ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.s
  store ptr %i.t, ptr %8, align 8, !tbaa !35, !alias.scope !141
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !33, !noalias !141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.088 ; 2 uses
  %i.bi = sub nuw i64 %i.be, %.088                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !141
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !36, !noalias !141
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc10.i.i130, label %._crit_edge.i.i.i129

.noexc10.i.i130:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %.loopexit387 ; 2 uses

.noexc132:                                        ; preds = %.noexc10.i.i130
  store ptr %i.bk, ptr %8, align 8, !tbaa !33, !alias.scope !141
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !36, !noalias !141
  store i64 %i.bl, ptr %i.t, align 8, !tbaa !34, !alias.scope !141
  br label %._crit_edge.i.i.i129

._crit_edge.i.i.i129:                             ; preds = %.noexc132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bm = phi ptr [ %i.bk, %.noexc132 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bi, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i129
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !34
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !34
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i129
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !36, !noalias !141 ; 2 uses
  store i64 %i.bo, ptr %i.u, align 8, !tbaa !32, !alias.scope !141
  %i.bp = load ptr, ptr %8, align 8, !tbaa !33, !alias.scope !141
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !141
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.br = load i64, ptr %i.s, align 8, !tbaa !32, !noalias !142 ; 4 uses
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !32, !noalias !142 ; 4 uses
  %i.bt = add i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !tbaa !33, !noalias !142 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.r
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w
  %i.bw = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.bx = load i64, ptr %i.r, align 8, !tbaa !34, !noalias !142
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.bz = icmp ugt i64 %i.bt, %i.by
  br i1 %i.bz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ca = load ptr, ptr %8, align 8, !tbaa !33, !noalias !142
  %i.cb = icmp eq ptr %i.ca, %i.t
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.x
  %i.cc = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.cc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.x
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !34, !noalias !142
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.ce = phi i64 [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.bt, %i.ce
  br i1 %.not.i, label %bb.z, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bu, i64 noundef %i.br)
          to label %.noexc134 unwind label %.loopexit392 ; 5 uses

.noexc134:                                        ; preds = %.critedge.i
  store ptr %i.v, ptr %6, align 8, !tbaa !35, !alias.scope !142
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.y:                                             ; preds = %.noexc134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !32 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc134
  store ptr %i.cg, ptr %6, align 8, !tbaa !33, !alias.scope !142
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !34
  store i64 %i.cn, ptr %i.v, align 8, !tbaa !34, !alias.scope !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !32
  store i64 %i.cp, ptr %i.w, align 8, !tbaa !32, !alias.scope !142
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !33
  store i64 0, ptr %i.co, align 8, !tbaa !32
  store i8 0, ptr %i.ch, align 8, !tbaa !34
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cq = sub i64 4611686018427387903, %i.br
  %i.cr = icmp ult i64 %i.cq, %i.bs
  br i1 %i.cr, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #33
          to label %.noexc135 unwind label %.loopexit.split-lp393

.noexc135:                                        ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.z
  %i.cs = load ptr, ptr %8, align 8, !tbaa !33, !noalias !142
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cs, i64 noundef %i.bs)
          to label %.noexc136 unwind label %.loopexit392 ; 5 uses

.noexc136:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.v, ptr %6, align 8, !tbaa !35, !alias.scope !142
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.ab:                                            ; preds = %.noexc136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc136
  store ptr %i.cu, ptr %6, align 8, !tbaa !33, !alias.scope !142
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !34
  store i64 %i.db, ptr %i.v, align 8, !tbaa !34, !alias.scope !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32
  store i64 %i.dd, ptr %i.w, align 8, !tbaa !32, !alias.scope !142
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !33
  store i64 0, ptr %i.dc, align 8, !tbaa !32
  store i8 0, ptr %i.cv, align 8, !tbaa !34
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
end_hunk_0
begin_hunk_1_@_ZSteqRKSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EESJ_:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.d:                                             ; preds = %bb.c
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.d ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  %i.al = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.010.i.i.i.i) #36 ; 2 uses
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0.011.i.i.i.i) #36
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit: ; preds = %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ true, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.c ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(201) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #33
  unreachable

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %i.q, ptr noundef nonnull align 8 dereferenceable(201) %2) #32
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i) #32
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i) #32
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i19) #32
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i19) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !12

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !41
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !80
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfIDManifest.cpp() #27 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, i64 23), align 1, !tbaa !34
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest7UNKNOWNB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, align 8, !tbaa !35
  store i32 1701736302, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, i64 20), align 4, !tbaa !34
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9NOTHASHEDB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, i64 22), align 2, !tbaa !34
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10CUSTOMHASHB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, i64 30), align 2, !tbaa !34
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_32B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, i64 30), align 2, !tbaa !34
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest14MURMURHASH3_64B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, align 8, !tbaa !35
  store i16 25705, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, i64 18), align 2, !tbaa !34
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest9ID_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, i64 19), align 1, !tbaa !34
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10ID2_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !19, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !25, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!30 = !{!"long", !19, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !30, i64 8, !19, i64 16}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !23, i64 0}
!34 = !{!19, !19, i64 0}
!35 = !{!29, !23, i64 0}
!36 = !{!30, !30, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestE", !22, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestESaIS2_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!40, !39, i64 8}
!43 = !{!26, !25, i64 16}
!44 = !{!"_ZTSSt14_Rb_tree_color", !19, i64 0}
!45 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!46 = !{!"_ZTSSt18_Rb_tree_node_base", !44, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!47 = !{!"_ZTSSt15_Rb_tree_header", !46, i64 0, !30, i64 32}
!48 = !{!47, !30, i64 32}
!49 = !{!45, !45, i64 0}
!50 = !{!47, !45, i64 16}
!51 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!52 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !51, i64 0}
!53 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !52, i64 0, !47, i64 8}
!54 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !53, i64 0}
!55 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !54, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !26, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !57, i64 0}
!59 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_510IDManifest10IdLifetimeE", !19, i64 0}
!60 = !{!"_ZTSSt4lessImE"}
!61 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !60, i64 0}
!62 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE13_Rb_tree_implISF_Lb1EEE", !61, i64 0, !47, i64 8}
!63 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !62, i64 0}
!64 = !{!"_ZTSSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE", !63, i64 0}
!65 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !45, i64 0}
!66 = !{!"bool", !19, i64 0}
!67 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_510IDManifest20ChannelGroupManifestE", !55, i64 0, !58, i64 48, !59, i64 72, !31, i64 80, !31, i64 112, !64, i64 144, !65, i64 192, !66, i64 200}
!68 = !{!67, !59, i64 72}
!69 = !{!"_ZTSSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE", !30, i64 0, !58, i64 8}
!70 = !{!69, !30, i64 0}
!71 = !{!47, !45, i64 8}
!72 = !{!"p1 _ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !22, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE", !30, i64 0, !58, i64 8}
!75 = !{!74, !30, i64 0}
!76 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !22, i64 0}
!77 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeE", !72, i64 0, !76, i64 8}
!78 = !{!77, !76, i64 8}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!40, !39, i64 16}
!81 = !{!25, !25, i64 0}
!82 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_520CompressedIDManifestE", !20, i64 0, !30, i64 8, !23, i64 16}
!83 = !{!82, !30, i64 8}
!84 = !{!82, !20, i64 0}
!85 = !{!82, !23, i64 16}
!86 = !{!47, !44, i64 0}
!87 = !{!47, !45, i64 24}
!88 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !31, i64 0, !20, i64 32}
!89 = !{!88, !20, i64 32}
!90 = !{!"_ZTSSt4pairIiiE", !20, i64 0, !20, i64 4}
!91 = !{!90, !20, i64 0}
!92 = !{!90, !20, i64 4}
!93 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!94 = !{!93, !23, i64 8}
!95 = !{!93, !23, i64 0}
!96 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !22, i64 0}
!97 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !22, i64 0}
!98 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !96, i64 0, !97, i64 8}
!99 = !{!98, !97, i64 8}
!100 = !{!93, !23, i64 16}
!101 = !{!46, !45, i64 16}
!102 = !{!46, !45, i64 24}
!103 = !{!"p1 long", !22, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!67, !66, i64 200}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!65, !45, i64 0}
!109 = !{!46, !45, i64 8}
!110 = !{!39, !39, i64 0}
!111 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !22, i64 0}
!112 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeE", !45, i64 0, !45, i64 8, !111, i64 16}
!113 = !{!112, !45, i64 0}
!114 = !{!112, !45, i64 8}
!115 = !{!111, !111, i64 0}
!116 = !{!112, !111, i64 16}
!117 = !{i64 8}
!118 = !{!46, !44, i64 0}
!119 = distinct !{!119, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!120 = distinct !{!120, !119, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!121 = distinct !{!121, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!122 = distinct !{!122, !121, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!124 = distinct !{!124, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !"_ZSt9make_pairIRmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!132 = distinct !{!132, !131, !"_ZSt9make_pairIRmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!133 = distinct !{!133, !79}
!134 = distinct !{!134, !79}
!135 = distinct !{!135, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!136 = distinct !{!136, !135, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!137 = distinct !{!137, !135, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = !{!120}
!141 = !{!122}
!142 = !{!124}
!143 = !{!132}
!144 = !{!136}
!145 = !{!137}
!146 = !{!136, !137}
end_hunk_1
