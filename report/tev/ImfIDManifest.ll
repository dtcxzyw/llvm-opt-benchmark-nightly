Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfIDManifest?download=true
inline.NumInlined: 3047
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0
@_ZN7Imf_3_410IDManifest14MURMURHASH3_64E = constant { { { { { %struct.anon, [0 x i8], <{ [14 x i8], [9 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ [14 x i8], [9 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ [14 x i8], [9 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ [14 x i8], [9 x i8] }> } } { { %struct.anon, [0 x i8], <{ [14 x i8], [9 x i8] }> } { %struct.anon { i8 28 }, [0 x i8] zeroinitializer, <{ [14 x i8], [9 x i8] }> <{ [14 x i8] c"MurmurHash3_64", [9 x i8] zeroinitializer }> } } } } }, align 8
@_ZN7Imf_3_410IDManifest9ID_SCHEMEE = local_unnamed_addr constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, [21 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, [21 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, [21 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, [21 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, [21 x i8] }> } { %struct.anon { i8 4 }, [0 x i8] zeroinitializer, <{ i8, i8, [21 x i8] }> <{ i8 105, i8 100, [21 x i8] zeroinitializer }> } } } } }, align 8
@_ZN7Imf_3_410IDManifest10ID2_SCHEMEE = local_unnamed_addr constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } { %struct.anon { i8 6 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, [20 x i8] }> <{ i8 105, i8 100, i8 50, [20 x i8] zeroinitializer }> } } } } }, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unrecognized IDmanifest version\00", align 1
@_ZTIN7Iex_3_48InputExcE = external constant ptr
@.str.1 = private unnamed_addr constant [52 x i8] c"Bad common string length in IDmanifest string table\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IDManifest too small\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Bad mapping table entry in IDManifest\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ID manifest contains multiple entries for the same ID\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Bad string index in IDManifest\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"IDManifest decompression (zlib) failed.\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"IDManifest decompression (zlib) failed: mismatch in decompressed data size\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error - IDManifest size error\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.9 = private unnamed_addr constant [31 x i8] c"ID manifest compression failed\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"attempt to change number of components in manifest once entries have been added\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"Cannot insert single component attribute into manifest with multiple components\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"mismatch between number of components in manifest and number of components in inserted entry\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Cannot compute hash: unknown hashing scheme\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"not enough components inserted into previous entry in ID table before inserting new entry\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c"attempt to insert too many strings into entry, or attempt to insert text before ID integer\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Internal error: too many strings in component\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external constant { [5 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"IDManifest too small for string size\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"IDManifest too small for string\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"IDManifest too small for variable length integer\00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"IDManifest too small for string list size\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

@_ZN7Imf_3_410IDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_410IDManifestC2Ev
@_ZN7Imf_3_410IDManifestC1EPKcS2_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN7Imf_3_410IDManifestC2EPKcS2_
@_ZN7Imf_3_410IDManifestC1ERKNS_20CompressedIDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_410IDManifestC2ERKNS_20CompressedIDManifestE
@_ZN7Imf_3_420CompressedIDManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2Ev
@_ZN7Imf_3_420CompressedIDManifestC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2ERKS0_
@_ZN7Imf_3_420CompressedIDManifestD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_420CompressedIDManifestD2Ev
@_ZN7Imf_3_420CompressedIDManifestC1ERKNS_10IDManifestE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_420CompressedIDManifestC2ERKNS_10IDManifestE
@_ZN7Imf_3_410IDManifest20ChannelGroupManifestC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7Imf_3_410IDManifestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_410IDManifestC2EPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_410IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__16vectorIN7Imf_3_410IDManifest20ChannelGroupManifestENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_410IDManifest4initEPKcS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__1::vector.138", align 8 ; 16 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.d = alloca ptr, align 8                      ; 22 uses
  %5 = alloca %"class.std::__1::vector.8", align 8 ; 20 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__1::vector.15", align 8 ; 12 uses
  %9 = alloca %"class.std::__1::vector.22", align 8 ; 15 uses
  %10 = alloca %"struct.std::__1::pair.44", align 8 ; 7 uses
  %11 = alloca %"class.std::__1::vector.8", align 8 ; 6 uses
  %i.e = load i32, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.f, ptr %i.d, align 8, !tbaa !30
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 56) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #32
  br label %bb.gb

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_114readStringListINSt3__16vectorINS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS7_IS9_EEEEEEvRPKcSD_RT_i(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader371 unwind label %bb.i

.preheader371:                                    ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !36     ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24                  ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader371
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138, %.preheader371
  %.lcssa472 = phi ptr [ %i.j, %.preheader371 ], [ %i.dz, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138 ]
  %.lcssa465 = phi ptr [ %i.k, %.preheader371 ], [ %i.ea, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138 ]
  %.lcssa458 = phi i64 [ %i.o, %.preheader371 ], [ %i.ee, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.not.i = icmp eq ptr %.lcssa472, %.lcssa465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread, label %bb.f

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEEC2Em.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = icmp ugt i64 %.lcssa458, 4611686018427387903
  br i1 %i.aa, label %bb.g, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i: ; preds = %bb.f
  %i.ab = shl nuw nsw i64 %.lcssa458, 2           ; 3 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #34
          to label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit unwind label %bb.h ; 6 uses

bb.h:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEEDaRT_m.exit.i.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.j:                                             ; preds = %.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138
  %i.ag = phi ptr [ %i.k, %.lr.ph ], [ %i.ea, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138 ]
  %.089487 = phi i64 [ 1, %.lr.ph ], [ %i.dy, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138 ] ; 4 uses
  %i.ah = getelementptr [24 x i8], ptr %i.ag, i64 %.089487 ; 7 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24    ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1
  %i.al = getelementptr i8, ptr %i.ah, i64 -16    ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i8 %i.aj, 1
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = select i1 %i.ak, i64 %i.am, i64 %i.ao   ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 255
  %i.ar = load i8, ptr %i.ah, align 8
  %i.as = trunc i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.pn.i = select i1 %i.as, ptr %i.au, ptr %i.av  ; 2 uses
  br i1 %i.aq, label %bb.k, label %14

bb.k:                                             ; preds = %bb.j
  %12 = load i16, ptr %.pn.i, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %i.aw = zext i16 %13 to i64
  br label %bb.l

14:                                               ; preds = %bb.j
  %15 = load i8, ptr %.pn.i, align 1, !tbaa !42
  %16 = zext i8 %15 to i64
  br label %bb.l

bb.l:                                             ; preds = %14, %bb.k
  %.088 = phi i64 [ %i.aw, %bb.k ], [ %16, %14 ]  ; 2 uses
  %.087 = phi i64 [ 2, %bb.k ], [ 1, %14 ]        ; 4 uses
  %i.ax = icmp ugt i64 %.088, %i.ap
  br i1 %i.ax, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ay = call ptr @__cxa_allocate_exception(i64 56) #32 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull @.str.1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #33
          to label %bb.gc unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ay) #32
  br label %bb.fy

bb.p:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.bb = load i8, ptr %i.ai, align 8, !noalias !196 ; 2 uses
  %i.bc = trunc i8 %i.bb to i1                    ; 2 uses
  %i.bd = load i64, ptr %i.al, align 8, !noalias !196
  %i.be = lshr i8 %i.bb, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = select i1 %i.bc, i64 %i.bd, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.ah, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !196
  %i.bj = getelementptr i8, ptr %i.ah, i64 -23
  %i.bk = select i1 %i.bc, ptr %i.bi, ptr %i.bj
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %.088) ; 7 uses
  %i.bl = icmp samesign ult i64 %.sroa.speculated.i.i, 23
  br i1 %i.bl, label %bb.r, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.bm = or i64 %.sroa.speculated.i.i, 7         ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 23
  %i.bo = add nuw nsw i64 %i.bm, 1
  %i.bp = select i1 %i.bn, i64 25, i64 %i.bo      ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #34
          to label %.noexc126 unwind label %bb.af ; 2 uses

.noexc126:                                        ; preds = %.thread.i.i.i
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !42, !alias.scope !196
  %i.br = or i64 %i.bp, 1
  store i64 %i.br, ptr %6, align 8, !alias.scope !196
  store i64 %.sroa.speculated.i.i, ptr %i.r, align 8, !tbaa !42, !alias.scope !196
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = trunc nuw nsw i64 %.sroa.speculated.i.i to i8
  %i.bt = shl nuw nsw i8 %i.bs, 1
  store i8 %i.bt, ptr %6, align 8, !alias.scope !196
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc126
  %.017.i.i.i = phi ptr [ %i.bq, %.noexc126 ], [ %i.s, %bb.r ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i, ptr align 1 %i.bk, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.018.i.i.i = phi ptr [ %i.s, %bb.r ], [ %.017.i.i.i, %bb.s ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.bu, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.bv = load ptr, ptr %5, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.089487 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.bx = load i8, ptr %i.bw, align 8, !noalias !197 ; 2 uses
  %i.by = trunc i8 %i.bx to i1                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !197
  %i.cb = lshr i8 %i.bx, 1
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = select i1 %i.by, i64 %i.ca, i64 %i.cc   ; 3 uses
  %i.ce = icmp ugt i64 %.087, %i.cd
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #33
          to label %.noexc132 unwind label %.loopexit.split-lp373

.noexc132:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !197
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ci = select i1 %i.by, ptr %i.cg, ptr %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.087
  %i.ck = sub nuw i64 %i.cd, %.087                ; 7 uses
  %i.cl = icmp ugt i64 %i.ck, -9
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #33
          to label %.noexc133 unwind label %.loopexit.split-lp373

.noexc133:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cm = icmp ult i64 %i.ck, 23
  br i1 %i.cm, label %bb.y, label %.thread.i.i.i128

.thread.i.i.i128:                                 ; preds = %bb.x
  %i.cn = or i64 %i.ck, 7                         ; 2 uses
  %i.co = icmp eq i64 %i.cn, 23
  %i.cp = add nuw i64 %i.cn, 1
  %i.cq = select i1 %i.co, i64 25, i64 %i.cp      ; 2 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #34
          to label %.noexc134 unwind label %.loopexit372 ; 2 uses

.noexc134:                                        ; preds = %.thread.i.i.i128
  store ptr %i.cr, ptr %i.t, align 8, !tbaa !42, !alias.scope !197
  %i.cs = or i64 %i.cq, 1
  store i64 %i.cs, ptr %7, align 8, !alias.scope !197
  store i64 %i.ck, ptr %i.u, align 8, !tbaa !42, !alias.scope !197
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ct = trunc nuw nsw i64 %i.ck to i8
  %i.cu = shl nuw nsw i8 %i.ct, 1
  store i8 %i.cu, ptr %7, align 8, !alias.scope !197
  %.not.i.i.i.i.i.i.i.i.i.i.i.i131 = icmp eq i64 %i.cd, %.087
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i131, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc134
  %.017.i.i.i129 = phi ptr [ %i.cr, %.noexc134 ], [ %i.v, %bb.y ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i129, ptr nonnull align 1 %i.cj, i64 %i.ck, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.018.i.i.i130 = phi ptr [ %i.v, %bb.y ], [ %.017.i.i.i129, %bb.z ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.018.i.i.i130, i64 %i.ck
  store i8 0, ptr %i.cv, align 1, !tbaa !42
  %i.cw = load i8, ptr %7, align 8, !noalias !198 ; 2 uses
  %i.cx = trunc i8 %i.cw to i1                    ; 2 uses
  %i.cy = load ptr, ptr %i.t, align 8, !noalias !198
  %i.cz = select i1 %i.cx, ptr %i.cy, ptr %i.v
  %i.da = load i64, ptr %i.u, align 8, !noalias !198
  %i.db = lshr i8 %i.cw, 1
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = select i1 %i.cx, i64 %i.da, i64 %i.dc
  %i.de = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.cz, i64 noundef %i.dd)
          to label %bb.ab unwind label %bb.ag     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.df = load <2 x i64>, ptr %i.de, align 8
  %.sroa.9332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.9332.0.copyload = load ptr, ptr %.sroa.9332.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false), !noalias !198
  %i.dg = load ptr, ptr %5, align 8, !tbaa !36
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.089487 ; 5 uses
  %i.di = load i8, ptr %i.dh, align 8
  %i.dj = trunc i8 %i.di to i1
  br i1 %i.dj, label %bb.ac, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !42
  %i.dm = load i64, ptr %i.dh, align 8
  %i.dn = and i64 %i.dm, -2
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dn) #35
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.ac, %bb.ab
  store <2 x i64> %i.df, ptr %i.dh, align 8
  %.sroa.9332.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %.sroa.9332.0.copyload, ptr %.sroa.9332.0..sroa_idx333, align 8, !tbaa !42
  %i.do = load i8, ptr %7, align 8
  %i.dp = trunc i8 %i.do to i1
  br i1 %i.dp, label %bb.ad, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit137

bb.ad:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.dr = load i64, ptr %7, align 8
  %i.ds = and i64 %i.dr, -2
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ds) #35
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit137

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit137: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.dt = load i8, ptr %6, align 8
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %bb.ae, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit138

bb.ae:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit137
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.dw = load i64, ptr %6, align 8
  %i.dx = and i64 %i.dw, -2
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dx) #35
end_hunk_0
begin_hunk_1_@_ZNSt3__117__equal_iter_implB8ne180100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEEPNS_11__tree_nodeISD_PvEElEEEESJ_NS_10__equal_toEEEbT_SL_T0_RT1_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 1
  %i.al = select i1 %i.ac, ptr %i.aj, ptr %i.ak   ; 2 uses
  br i1 %i.v, label %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.d
  %.not1922.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not1922.i.i.i.i.i.i.i.i, label %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.e
  %.01525.pn.i.i.i.i.i.i.i.i = phi ptr [ %.01525.i.i.i.i.i.i.i.i, %bb.e ], [ %.0918.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.al, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01623.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.e ], [ %i.z, %.preheader.i.i.i.i.i.i.i.i ]
  %.01525.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %.01525.i.i.i.i.i.i.i.i, align 1, !tbaa !42
  %i.an = load i8, ptr %.024.i.i.i.i.i.i.i.i, align 1, !tbaa !42
  %.not20.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, %i.an
  br i1 %.not20.i.i.i.i.i.i.i.i, label %bb.e, label %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ao = add nsw i64 %.01623.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.024.i.i.i.i.i.i.i.i, i64 1
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not19.i.i.i.i.i.i.i.i, label %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.0918.i.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.al, i64 %i.x)
  %i.as = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.thread.i.i.i.i.i.i, label %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit.thread

_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.thread.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0918.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit: ; preds = %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.thread.i.i.i.i.i.i, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.024, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader8.i.i.i

.preheader8.i.i.i:                                ; preds = %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit, %.preheader8.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ax, %.preheader8.i.i.i ], [ %i.aw, %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit ] ; 2 uses
  %i.ax = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit, label %.preheader8.i.i.i, !llvm.loop !4

.preheader.i.i.i:                                 ; preds = %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.az, %.preheader.i.i.i ], [ %.sroa.012.024, %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = icmp eq ptr %.0.i.i.i, %i.ba
  br i1 %i.bb, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit, label %.preheader.i.i.i, !llvm.loop !5

_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit: ; preds = %.preheader8.i.i.i, %.preheader.i.i.i
  %.06.i.i.i = phi ptr [ %i.az, %.preheader.i.i.i ], [ %.0.i.i.i.i, %.preheader8.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i2, label %.preheader.i.i.i7, label %.preheader8.i.i.i3

.preheader8.i.i.i3:                               ; preds = %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit, %.preheader8.i.i.i3
  %.0.i.i.i.i4 = phi ptr [ %i.be, %.preheader8.i.i.i3 ], [ %i.bd, %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit ] ; 2 uses
  %i.be = load ptr, ptr %.0.i.i.i.i4, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i5, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit9, label %.preheader8.i.i.i3, !llvm.loop !4

.preheader.i.i.i7:                                ; preds = %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit, %.preheader.i.i.i7
  %.0.i.i.i8 = phi ptr [ %i.bg, %.preheader.i.i.i7 ], [ %.sroa.0.025, %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i8, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bi = icmp eq ptr %.0.i.i.i8, %i.bh
  br i1 %i.bi, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit9, label %.preheader.i.i.i7, !llvm.loop !5

_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit9: ; preds = %.preheader8.i.i.i3, %.preheader.i.i.i7
  %.06.i.i.i6 = phi ptr [ %i.bg, %.preheader.i.i.i7 ], [ %.0.i.i.i.i4, %.preheader8.i.i.i3 ]
  %.not = icmp eq ptr %.06.i.i.i, %1
  br i1 %.not, label %_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit.thread, label %.lr.ph, !llvm.loop !481

_ZNKSt3__110__equal_toclB8ne180100INS_4pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS8_ISA_EEEEEESD_EEbRKT_RKT0_.exit.thread: ; preds = %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit9, %.lr.ph, %bb.b, %.lr.ph.i.i.i.i.i.i, %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %.not22 = phi i1 [ true, %bb.a ], [ false, %.lr.ph.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i ], [ false, %_ZNKSt3__110__equal_toclB8ne180100INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKT_RKT0_.exit.i.i.i.i.i.i ], [ true, %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEppB8ne180100Ev.exit9 ], [ false, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.not22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE4findIS6_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not10.i = icmp eq ptr %i.b, null
  br i1 %.not10.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8                 ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i8 %i.c, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = select i1 %i.d, i64 %i.j, i64 %i.l       ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i, %.lr.ph.i
  %.012.i = phi ptr [ %i.a, %.lr.ph.i ], [ %.1.i, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i ]
  %.0811.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.19.i, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i, i64 33
  %i.t = select i1 %i.p, ptr %i.r, ptr %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i8 %i.o, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = select i1 %i.p, i64 %i.v, i64 %i.x       ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.y)
  %i.z = tail call noundef i32 @memcmp(ptr noundef %i.t, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.y, %i.m
  br i1 %i.ab, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ult i64 %i.y, %i.m
  %i.ad = select i1 %i.ac, i32 -1, i32 1
  br label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.b ], [ %i.ad, %bb.d ], [ 0, %bb.c ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0           ; 2 uses
  %.19.in.idx.i = select i1 %i.ae, i64 8, i64 0
  %.19.in.i = getelementptr inbounds nuw i8, ptr %.0811.i, i64 %.19.in.idx.i
  %.1.i = select i1 %i.ae, ptr %.012.i, ptr %.0811.i ; 8 uses
  %.19.i = load ptr, ptr %.19.in.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.19.i, null
  br i1 %.not.i, label %_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE13__lower_boundIS6_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SG_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISE_EEEE.exit, label %bb.b, !llvm.loop !482

_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE13__lower_boundIS6_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SG_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISE_EEEE.exit: ; preds = %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.i
  %.not = icmp eq ptr %.1.i, %i.a
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE13__lower_boundIS6_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SG_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISE_EEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ag = load i8, ptr %i.af, align 8             ; 2 uses
  %i.ah = trunc i8 %i.ag to i1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i, i64 33
  %i.al = select i1 %i.ah, ptr %i.aj, ptr %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i8 %i.ag, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ah, i64 %i.an, i64 %i.ap   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.m)
  %i.ar = tail call noundef i32 @memcmp(ptr noundef %i.h, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i.i) #32 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.at = icmp ult i64 %i.m, %i.aq
  br i1 %i.at, label %.critedge, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit: ; preds = %bb.e
  %i.au = icmp slt i32 %i.ar, 0
  br i1 %i.au, label %.critedge, label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread

.critedge:                                        ; preds = %bb.f, %bb.a, %_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE13__lower_boundIS6_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SG_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISE_EEEE.exit, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit
  br label %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread

_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit.thread: ; preds = %bb.f, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit, %.critedge
  %.sroa.0.0 = phi ptr [ %i.a, %.critedge ], [ %.1.i, %_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB8ne180100ERKS6_S9_.exit ], [ %.1.i, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { noreturn nounwind }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !43}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = distinct !{!3, !43}
!4 = distinct !{!4, !43}
!5 = distinct !{!5, !43}
!6 = distinct !{!6, !43}
!7 = distinct !{!7, !43}
!8 = distinct !{!8, !43}
!9 = distinct !{!9, !43}
!10 = distinct !{!10, !43}
!11 = distinct !{!11, !43}
!12 = distinct !{!12, !43}
!13 = distinct !{!13, !43}
!14 = distinct !{!14, !43}
!15 = distinct !{!15, !43}
!16 = distinct !{!16, !43}
!17 = distinct !{!17, !43}
!18 = distinct !{!18, !43}
!19 = distinct !{!19, !43}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !28, i64 0}
!32 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEE", !31, i64 0}
!33 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !31, i64 0, !31, i64 8, !33, i64 16}
!35 = !{!34, !31, i64 8}
!36 = !{!34, !31, i64 0}
!37 = !{!"p1 int", !28, i64 0}
!38 = !{!"_ZTSNSt3__122__compressed_pair_elemIPiLi0ELb0EEE", !37, i64 0}
!39 = !{!"_ZTSNSt3__117__compressed_pairIPiNS_9allocatorIiEEEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE", !37, i64 0, !37, i64 8, !39, i64 16}
!41 = !{!40, !37, i64 0}
!42 = !{!24, !24, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!37, !37, i64 0}
!45 = !{!25, !25, i64 0}
!46 = !{!40, !37, i64 8}
!47 = !{!"_ZTSNSt3__122__compressed_pair_elemIPcLi0ELb0EEE", !29, i64 0}
!48 = !{!"_ZTSNSt3__117__compressed_pairIPcNS_9allocatorIcEEEE", !47, i64 0}
!49 = !{!"_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE", !29, i64 0, !29, i64 8, !48, i64 16}
!50 = !{!49, !29, i64 0}
!51 = !{!49, !29, i64 8}
!52 = !{!"p1 _ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !28, i64 0}
!53 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN7Imf_3_410IDManifest20ChannelGroupManifestELi0ELb0EEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__117__compressed_pairIPN7Imf_3_410IDManifest20ChannelGroupManifestENS_9allocatorIS3_EEEE", !53, i64 0}
!55 = !{!"_ZTSNSt3__16vectorIN7Imf_3_410IDManifest20ChannelGroupManifestENS_9allocatorIS3_EEEE", !52, i64 0, !52, i64 8, !54, i64 16}
!56 = !{!55, !52, i64 8}
!57 = !{!55, !52, i64 0}
!58 = !{!31, !31, i64 0}
!59 = !{!"p1 long", !28, i64 0}
!60 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !60, i64 0}
!62 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !59, i64 0, !59, i64 8, !61, i64 16}
!63 = !{!62, !59, i64 0}
!64 = !{!62, !59, i64 8}
!65 = !{!59, !59, i64 0}
!66 = !{!"long", !24, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTSNSt3__116__tree_node_baseIPvEE", !28, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !28, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !68, i64 0}
!73 = !{!"bool", !24, i64 0}
!74 = !{!"_ZTSNSt3__116__tree_node_baseIPvEE", !72, i64 0, !68, i64 8, !70, i64 16, !73, i64 24}
!75 = !{!74, !70, i64 16}
!76 = !{!72, !68, i64 0}
!77 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEE", !72, i64 0}
!78 = !{!"_ZTSNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEEE", !77, i64 0}
!79 = !{!"_ZTSNSt3__122__compressed_pair_elemImLi0ELb0EEE", !66, i64 0}
!80 = !{!"_ZTSNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE", !79, i64 0}
!81 = !{!"_ZTSNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEE", !70, i64 0, !78, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEE", !81, i64 0}
!83 = !{!"_ZTSN7Imf_3_410IDManifest10IdLifetimeE", !24, i64 0}
!84 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !24, i64 0}
!85 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !84, i64 0}
!86 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !85, i64 0}
!87 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !86, i64 0}
!88 = !{!"_ZTSNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEENS7_ISF_EEEEEES3_EEEEEE", !77, i64 0}
!89 = !{!"_ZTSNSt3__117__compressed_pairImNS_19__map_value_compareImNS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEENS_4lessImEELb1EEEEE", !79, i64 0}
!90 = !{!"_ZTSNSt3__16__treeINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEEEENS_19__map_value_compareImSB_NS_4lessImEELb1EEENS6_ISB_EEEE", !70, i64 0, !88, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt3__13mapImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEENS_4lessImEENS5_INS_4pairIKmS9_EEEEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__115__tree_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEEEEPNS_11__tree_nodeISB_PvEElEE", !70, i64 0}
!93 = !{!"_ZTSNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEPNS_11__tree_nodeISC_PvEElEEEE", !92, i64 0}
!94 = !{!"_ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !82, i64 0, !34, i64 24, !83, i64 48, !87, i64 56, !87, i64 80, !91, i64 104, !93, i64 128, !73, i64 136}
!95 = !{!94, !83, i64 48}
!96 = !{!"_ZTSNSt3__14pairImNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEE", !66, i64 0, !34, i64 8}
!97 = !{!96, !66, i64 0}
!98 = !{!"_ZTSNSt3__14pairIKmNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEEEE", !66, i64 0, !34, i64 8}
!99 = !{!98, !66, i64 0}
!100 = !{!74, !73, i64 24}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!74, !68, i64 8}
!104 = !{i64 0, i64 24, !42}
!105 = !{!52, !52, i64 0}
!106 = !{!"_ZTSN7Imf_3_420CompressedIDManifestE", !25, i64 0, !66, i64 8, !29, i64 16}
!107 = !{!106, !66, i64 8}
!108 = !{!106, !25, i64 0}
!109 = !{!106, !29, i64 16}
!110 = !{!"p1 _ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !28, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorE", !110, i64 0}
!113 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEE", !112, i64 0, !73, i64 8}
!114 = !{!113, !73, i64 8}
!115 = !{!"p1 _ZTSNSt3__111__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiEEPvEE", !28, i64 0}
!116 = !{!"p1 _ZTSNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEiEEPvEEEE", !28, i64 0}
!117 = !{!73, !73, i64 0}
!118 = !{!"p1 _ZTSNSt3__14pairIiiEE", !28, i64 0}
!119 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIiiEELi0ELb0EEE", !118, i64 0}
!120 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIiiEENS_9allocatorIS2_EEEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__16vectorINS_4pairIiiEENS_9allocatorIS2_EEEE", !118, i64 0, !118, i64 8, !120, i64 16}
!122 = !{!121, !118, i64 0}
!123 = !{!118, !118, i64 0}
!124 = !{!121, !118, i64 8}
!125 = !{!"_ZTSNSt3__14pairIiiEE", !25, i64 0, !25, i64 4}
!126 = !{!125, !25, i64 0}
!127 = !{!125, !25, i64 4}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"branch_weights", i32 8, i32 24}
!132 = !{!92, !70, i64 0}
!133 = !{!94, !73, i64 136}
!134 = !{!"vtable pointer", !23, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"any p2 pointer", !28, i64 0}
!137 = !{!"_ZTSNSt3__18ios_baseE", !25, i64 8, !66, i64 16, !66, i64 24, !25, i64 32, !25, i64 36, !28, i64 40, !28, i64 48, !136, i64 56, !37, i64 64, !66, i64 72, !66, i64 80, !59, i64 88, !66, i64 96, !66, i64 104, !136, i64 112, !66, i64 120, !66, i64 128}
!138 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !28, i64 0}
!139 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !137, i64 0, !138, i64 136, !25, i64 144}
!140 = !{!139, !25, i64 144}
!141 = !{!81, !70, i64 0}
!142 = !{!90, !70, i64 0}
!143 = !{!"p1 _ZTSNSt3__19allocatorIN7Imf_3_410IDManifest20ChannelGroupManifestEEE", !28, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIN7Imf_3_410IDManifest20ChannelGroupManifestEEELi1ELb0EEE", !143, i64 0}
!146 = !{!"_ZTSNSt3__117__compressed_pairIPN7Imf_3_410IDManifest20ChannelGroupManifestERNS_9allocatorIS3_EEEE", !53, i64 0, !145, i64 8}
!147 = !{!"_ZTSNSt3__114__split_bufferIN7Imf_3_410IDManifest20ChannelGroupManifestERNS_9allocatorIS3_EEEE", !52, i64 0, !52, i64 8, !52, i64 16, !146, i64 24}
end_hunk_1
