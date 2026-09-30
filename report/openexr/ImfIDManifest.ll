Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfIDManifest?download=true
inline.NumInlined: 2191
inline.NumDeleted: 810
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0
@.str.12 = private unnamed_addr constant [4 x i8] c"id2\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Unrecognized IDmanifest version\00", align 1
@_ZTIN7Iex_3_48InputExcE = external constant ptr
@.str.14 = private unnamed_addr constant [53 x i8] c"IDManifest string too small for common prefix length\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Bad common string length in IDmanifest string table\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"IDManifest too small\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Bad mapping table entry in IDManifest\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"ID manifest contains multiple entries for the same ID\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Bad string index in IDManifest\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"IDManifest decompression (zlib) failed.\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"IDManifest decompression (zlib) failed: mismatch in decompressed data size\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Error - IDManifest size error\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.23 = private unnamed_addr constant [31 x i8] c"ID manifest compression failed\00", align 1
@.str.24 = private unnamed_addr constant [80 x i8] c"attempt to change number of components in manifest once entries have been added\00", align 1
@.str.25 = private unnamed_addr constant [80 x i8] c"Cannot insert single component attribute into manifest with multiple components\00", align 1
@.str.26 = private unnamed_addr constant [93 x i8] c"mismatch between number of components in manifest and number of components in inserted entry\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Cannot compute hash: unknown hashing scheme\00", align 1
@.str.28 = private unnamed_addr constant [90 x i8] c"not enough components inserted into previous entry in ID table before inserting new entry\00", align 1
@.str.29 = private unnamed_addr constant [91 x i8] c"attempt to insert too many strings into entry, or attempt to insert text before ID integer\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"Internal error: too many strings in component\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"IDManifest too small for string size\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"IDManifest too small for string\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"IDManifest too small for variable length integer\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"Invalid variable-length integer in IDManifest\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"IDManifest too small for string list size\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImfIDManifest.cpp, ptr null }]

@_ZN7Imf_3_410IDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_410IDManifestC2Ev
@_ZN7Imf_3_410IDManifestC1EPKcS2_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN7Imf_3_410IDManifestC2EPKcS2_
@_ZN7Imf_3_410IDManifestC1ERKNS_20CompressedIDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_410IDManifestC2ERKNS_20CompressedIDManifestE
@_ZN7Imf_3_420CompressedIDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2Ev
@_ZN7Imf_3_420CompressedIDManifestC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2ERKS0_
@_ZN7Imf_3_420CompressedIDManifestD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_420CompressedIDManifestD2Ev
@_ZN7Imf_3_420CompressedIDManifestC1ERKNS_10IDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2ERKNS_10IDManifestE
@_ZN7Imf_3_410IDManifest20ChannelGroupManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2Ev

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
define void @_ZN7Imf_3_410IDManifestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_410IDManifestC2EPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_410IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_410IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::vector<std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 22 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.std::pair.23", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.3", align 8    ; 6 uses
  %i.e = load i32, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.f, ptr %i.d, align 8, !tbaa !24
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #32
  br label %bb.eo

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_114readStringListISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRPKcSC_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader377 unwind label %bb.h

.preheader377:                                    ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !28     ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 5                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.lr.ph:                                           ; preds = %.preheader377
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.w = icmp ugt i64 %i.ez, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #33
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader377, %._crit_edge
  %.lcssa407667 = phi i64 [ %i.ez, %._crit_edge ], [ %i.o, %.preheader377 ] ; 2 uses
  %.lcssa415666 = phi i64 [ %i.ey, %._crit_edge ], [ %i.n, %.preheader377 ]
  %.lcssa423665 = phi ptr [ %i.ev, %._crit_edge ], [ %i.k, %.preheader377 ]
  %.lcssa431664 = phi ptr [ %i.eu, %._crit_edge ], [ %i.j, %.preheader377 ]
  %.not.i.i.i.i = icmp eq ptr %.lcssa431664, %.lcssa423665
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = ashr exact i64 %.lcssa415666, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34
          to label %.noexc129 unwind label %bb.ar ; 5 uses

.noexc129:                                        ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.lcssa407667 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !29
  %i.aa = add nsw i64 %.lcssa407667, -1           ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc129
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !29
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ae = phi ptr [ %i.k, %.lr.ph ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  %.093470 = phi i64 [ 1, %.lr.ph ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 4 uses
  %i.af = getelementptr [32 x i8], ptr %i.ae, i64 %.093470 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -32
  %i.ah = getelementptr i8, ptr %i.af, i64 -24    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 255                 ; 2 uses
  %i.ak = select i1 %i.aj, i64 2, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !33
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.j, label %11

bb.j:                                             ; preds = %bb.i
  %i.ao = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull @.str.14)
          to label %.invoke unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ao) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

bb.l:                                             ; preds = %.invoke
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

11:                                               ; preds = %bb.i
  %12 = load ptr, ptr %i.af, align 8, !tbaa !34   ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %11
  %13 = load i16, ptr %12, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %i.ar = zext i16 %14 to i64
  br label %bb.o

bb.n:                                             ; preds = %11
  %i.as = load i8, ptr %12, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.092 = phi i64 [ %i.ar, %bb.m ], [ %i.at, %bb.n ] ; 2 uses
  %.091 = phi i64 [ 2, %bb.m ], [ 1, %bb.n ]      ; 4 uses
  %i.au = icmp ugt i64 %.092, %i.ai
  br i1 %i.au, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.av = call ptr @__cxa_allocate_exception(i64 72) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.q

.invoke:                                          ; preds = %bb.j, %bb.p
  %i.aw = phi ptr [ %i.av, %bb.p ], [ %i.ao, %bb.j ]
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !33, !noalias !141
  store ptr %i.q, ptr %7, align 8, !tbaa !36, !alias.scope !141
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !34, !noalias !141 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.092, i64 %i.ay) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !141
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !37, !noalias !141
  %i.ba = icmp samesign ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ba, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.r
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc130 unwind label %bb.ak ; 2 uses

.noexc130:                                        ; preds = %.noexc10.i.i
  store ptr %i.bb, ptr %7, align 8, !tbaa !34, !alias.scope !141
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !37, !noalias !141
  store i64 %i.bc, ptr %i.q, align 8, !tbaa !35, !alias.scope !141
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc130, %bb.r
  %i.bd = phi ptr [ %i.bb, %.noexc130 ], [ %i.q, %bb.r ] ; 2 uses
  %trunc = trunc nuw i64 %spec.select.i.i.i to i16
  switch i16 %trunc, label %bb.t [
    i16 1, label %bb.s
    i16 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load i8, ptr %i.az, align 1, !tbaa !35
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !35
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.az, i64 %spec.select.i.i.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !37, !noalias !141 ; 2 uses
  store i64 %i.bf, ptr %i.r, align 8, !tbaa !33, !alias.scope !141
  %i.bg = load ptr, ptr %7, align 8, !tbaa !34, !alias.scope !141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bi = load ptr, ptr %5, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %.093470 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !33, !noalias !142 ; 3 uses
  %i.bm = icmp ugt i64 %.091, %i.bl
  br i1 %i.bm, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i64 noundef %.091, i64 noundef %i.bl) #33
          to label %.noexc134 unwind label %.loopexit.split-lp379

.noexc134:                                        ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.u
  store ptr %i.s, ptr %8, align 8, !tbaa !36, !alias.scope !142
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !34, !noalias !142
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.091 ; 2 uses
  %i.bp = sub nuw i64 %i.bl, %.091                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !142
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !37, !noalias !142
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc10.i.i133, label %._crit_edge.i.i.i132

.noexc10.i.i133:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc135 unwind label %.loopexit378 ; 2 uses

.noexc135:                                        ; preds = %.noexc10.i.i133
  store ptr %i.br, ptr %8, align 8, !tbaa !34, !alias.scope !142
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !142
  store i64 %i.bs, ptr %i.s, align 8, !tbaa !35, !alias.scope !142
  br label %._crit_edge.i.i.i132

._crit_edge.i.i.i132:                             ; preds = %.noexc135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bt = phi ptr [ %i.br, %.noexc135 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bp, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i132
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !35
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !35
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i132
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !142 ; 2 uses
  store i64 %i.bv, ptr %i.t, align 8, !tbaa !33, !alias.scope !142
  %i.bw = load ptr, ptr %8, align 8, !tbaa !34, !alias.scope !142
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !142
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.by = load i64, ptr %i.r, align 8, !tbaa !33, !noalias !143 ; 4 uses
  %i.bz = load i64, ptr %i.t, align 8, !tbaa !33, !noalias !143 ; 4 uses
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !34, !noalias !143 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.q
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.y
  %i.cd = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !35, !noalias !143
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cg = icmp ugt i64 %i.ca, %i.cf
  br i1 %i.cg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ch = load ptr, ptr %8, align 8, !tbaa !34, !noalias !143
  %i.ci = icmp eq ptr %i.ch, %i.s
  br i1 %i.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.z
  %i.cj = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.cj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.z
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !35, !noalias !143
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cl = phi i64 [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ca, %i.cl
  br i1 %.not.i, label %bb.ab, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.cb, i64 noundef %i.by)
          to label %.noexc137 unwind label %.loopexit383 ; 5 uses

.noexc137:                                        ; preds = %.critedge.i
  store ptr %i.u, ptr %6, align 8, !tbaa !36, !alias.scope !143
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !34 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.aa:                                            ; preds = %.noexc137
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !33 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc137
  store ptr %i.cn, ptr %6, align 8, !tbaa !34, !alias.scope !143
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !35
  store i64 %i.cu, ptr %i.u, align 8, !tbaa !35, !alias.scope !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !33
  store i64 %i.cw, ptr %i.v, align 8, !tbaa !33, !alias.scope !143
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !34
  store i64 0, ptr %i.cv, align 8, !tbaa !33
  store i8 0, ptr %i.co, align 8, !tbaa !35
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cx = sub i64 4611686018427387903, %i.by
  %i.cy = icmp ult i64 %i.cx, %i.bz
  br i1 %i.cy, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #33
          to label %.noexc138 unwind label %.loopexit.split-lp384

.noexc138:                                        ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ab
  %i.cz = load ptr, ptr %8, align 8, !tbaa !34, !noalias !143
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cz, i64 noundef %i.bz)
          to label %.noexc139 unwind label %.loopexit383 ; 5 uses

.noexc139:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.u, ptr %6, align 8, !tbaa !36, !alias.scope !143
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !34 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 5 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.ad:                                            ; preds = %.noexc139
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc139
  store ptr %i.db, ptr %6, align 8, !tbaa !34, !alias.scope !143
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !35
  store i64 %i.di, ptr %i.u, align 8, !tbaa !35, !alias.scope !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !33
  store i64 %i.dk, ptr %i.v, align 8, !tbaa !33, !alias.scope !143
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !34
  store i64 0, ptr %i.dj, align 8, !tbaa !33
  store i8 0, ptr %i.dc, align 8, !tbaa !35
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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !33 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.al = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !34
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.010.i.i.i.i) #36 ; 2 uses
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0.011.i.i.i.i) #36
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !311

_ZSt5equalISt23_Rb_tree_const_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESD_EbT_SE_T0_.exit: ; preds = %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ true, %_ZSteqIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEbRKSt4pairIT_T0_ESF_.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %bb.c ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(201) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
  unreachable

_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %i.q, ptr noundef nonnull align 8 dereferenceable(201) %2) #32
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i) #32
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2EOS1_(ptr noundef nonnull align 8 dereferenceable(201) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(201) %.0911.i.i.i19) #32
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.0911.i.i.i19) #32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !11

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #35
  br label %_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !81
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfIDManifest.cpp() #27 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, i64 23), align 1, !tbaa !35
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest7UNKNOWNB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, align 8, !tbaa !36
  store i32 1701736302, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, i64 20), align 4, !tbaa !35
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest9NOTHASHEDB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, i64 22), align 2, !tbaa !35
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest10CUSTOMHASHB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, i64 30), align 2, !tbaa !35
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest14MURMURHASH3_32B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, i64 30), align 2, !tbaa !35
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest14MURMURHASH3_64B5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, align 8, !tbaa !36
  store i16 25705, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, i64 18), align 2, !tbaa !35
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest9ID_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str.12, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 8), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, i64 19), align 1, !tbaa !35
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_410IDManifest10ID2_SCHEMEB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
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

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = distinct !{!11, !39}
!12 = distinct !{!12, !39}
!13 = distinct !{!13, !39}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !25, i64 0}
!29 = !{!19, !19, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!31 = !{!"long", !18, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !31, i64 8, !18, i64 16}
!33 = !{!32, !31, i64 8}
!34 = !{!32, !23, i64 0}
!35 = !{!18, !18, i64 0}
!36 = !{!30, !23, i64 0}
!37 = !{!31, !31, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"p1 _ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !22, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 0}
!43 = !{!41, !40, i64 8}
!44 = !{!26, !25, i64 16}
!45 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!46 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!47 = !{!"_ZTSSt18_Rb_tree_node_base", !45, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!48 = !{!"_ZTSSt15_Rb_tree_header", !47, i64 0, !31, i64 32}
!49 = !{!48, !31, i64 32}
!50 = !{!46, !46, i64 0}
!51 = !{!48, !46, i64 16}
!52 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!53 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !52, i64 0}
!54 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !53, i64 0, !48, i64 8}
!55 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !54, i64 0}
!56 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !55, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !26, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !58, i64 0}
!60 = !{!"_ZTSN7Imf_3_410IDManifest10IdLifetimeE", !18, i64 0}
!61 = !{!"_ZTSSt4lessImE"}
!62 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !61, i64 0}
!63 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE13_Rb_tree_implISF_Lb1EEE", !62, i64 0, !48, i64 8}
!64 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !63, i64 0}
!65 = !{!"_ZTSSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE", !64, i64 0}
!66 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !46, i64 0}
!67 = !{!"bool", !18, i64 0}
!68 = !{!"_ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !56, i64 0, !59, i64 48, !60, i64 72, !32, i64 80, !32, i64 112, !65, i64 144, !66, i64 192, !67, i64 200}
!69 = !{!68, !60, i64 72}
!70 = !{!"_ZTSSt4pairImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE", !31, i64 0, !59, i64 8}
!71 = !{!70, !31, i64 0}
!72 = !{!48, !46, i64 8}
!73 = !{!"p1 _ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !22, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE", !31, i64 0, !59, i64 8}
!76 = !{!75, !31, i64 0}
!77 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !22, i64 0}
!78 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE10_Auto_nodeE", !73, i64 0, !77, i64 8}
!79 = !{!78, !77, i64 8}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!41, !40, i64 16}
!82 = !{!25, !25, i64 0}
!83 = !{!"_ZTSN7Imf_3_420CompressedIDManifestE", !19, i64 0, !31, i64 8, !23, i64 16}
!84 = !{!83, !31, i64 8}
!85 = !{!83, !19, i64 0}
!86 = !{!83, !23, i64 16}
!87 = !{!48, !45, i64 0}
!88 = !{!48, !46, i64 24}
!89 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !32, i64 0, !19, i64 32}
!90 = !{!89, !19, i64 32}
!91 = !{!"_ZTSSt4pairIiiE", !19, i64 0, !19, i64 4}
!92 = !{!91, !19, i64 0}
!93 = !{!91, !19, i64 4}
!94 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!95 = !{!94, !23, i64 8}
!96 = !{!94, !23, i64 0}
!97 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !22, i64 0}
!98 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEE", !22, i64 0}
!99 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !97, i64 0, !98, i64 8}
!100 = !{!99, !98, i64 8}
!101 = !{!94, !23, i64 16}
!102 = !{!47, !46, i64 16}
!103 = !{!47, !46, i64 24}
!104 = !{!"p1 long", !22, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!68, !67, i64 200}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!66, !46, i64 0}
!110 = !{!47, !46, i64 8}
!111 = !{!40, !40, i64 0}
!112 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !22, i64 0}
!113 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeE", !46, i64 0, !46, i64 8, !112, i64 16}
!114 = !{!113, !46, i64 0}
!115 = !{!113, !46, i64 8}
!116 = !{!112, !112, i64 0}
!117 = !{!113, !112, i64 16}
!118 = !{i64 8}
!119 = !{!47, !45, i64 0}
!120 = distinct !{!120, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!121 = distinct !{!121, !120, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!122 = distinct !{!122, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!123 = distinct !{!123, !122, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!125 = distinct !{!125, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !"_ZSt9make_pairIRmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!133 = distinct !{!133, !132, !"_ZSt9make_pairIRmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!134 = distinct !{!134, !80}
!135 = distinct !{!135, !80}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !136, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = !{!121}
!142 = !{!123}
!143 = !{!125}
!144 = !{!133}
!145 = !{!137}
!146 = !{!138}
end_hunk_1
