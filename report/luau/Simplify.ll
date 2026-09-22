Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Simplify?download=true
inline.NumInlined: 2307
inline.NumDeleted: 943
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau12_GLOBAL__N_128intersectOneWithIntersectionERNS_14TypeSimplifierERNS_7TypeIdsES4_PKNS_4TypeE:bb.a
bb.y:                                             ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #22
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZN4Luau6relateEPKNS_4TypeES2_.exit:              ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %i.cd, label %bb.ae [
    i32 0, label %.loopexit
    i32 3, label %.sink.split
    i32 1, label %bb.aa
    i32 4, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  br label %.sink.split

bb.ab:                                            ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  %i.ch = call { ptr, i8 } @_ZN4Luau14TypeSimplifier14basicIntersectEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %3, ptr noundef %i.cc) ; 2 uses
  %i.ci = extractvalue { ptr, i8 } %i.ch, 1
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ck = extractvalue { ptr, i8 } %i.ch, 0
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %bb.ac, %bb.ad, %bb.aa
  %.sink = phi ptr [ %i.ck, %bb.ac ], [ %i.cc, %bb.aa ], [ %i.cc, %bb.ad ], [ %3, %_ZN4Luau6relateEPKNS_4TypeES2_.exit ]
  call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %.sink)
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.063.084, i64 8 ; 2 uses
  %.not78 = icmp eq ptr %i.cl, %i.ca
  br i1 %.not78, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.ae, %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %bb.u, %bb.r, %bb.a, %bb.t
  %.7 = phi i32 [ %spec.select, %bb.r ], [ 0, %bb.t ], [ 0, %bb.a ], [ 0, %bb.u ], [ 0, %bb.ae ], [ 1, %_ZN4Luau6relateEPKNS_4TypeES2_.exit ]
  ret i32 %.7
}

declare void @_ZN4Luau7TypeIds19clearWithoutReallocEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4Luau19IntersectionBuilderC1ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(89), ptr, ptr) unnamed_addr #3

declare void @_ZN4Luau19IntersectionBuilder3addEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4Luau19IntersectionBuilder5buildEv(ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau19IntersectionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !155    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #22
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau14TypeSimplifier22intersectUnionWithTypeEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %3 = alloca %"struct.Luau::UnionBuilder", align 8 ; 12 uses
  %4 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %5 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %i.b = alloca [2 x ptr], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = load i32, ptr %1, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = select i1 %i.d, ptr %i.e, ptr null
  %i.g = load i32, ptr @_ZN5DFInt33LuauSimplificationComplexityLimitE, align 8, !tbaa !180
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ugt i64 %i.o, %i.h
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.019.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !162
  %.sroa.018.0.copyload = load ptr, ptr %0, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !41
  %i.s = call noundef ptr @_ZN4Luau15addIntersectionENS_7NotNullINS_9TypeArenaEEENS0_INS_12BuiltinTypesEEESt16initializer_listIPKNS_4TypeEE(ptr %.sroa.019.0.copyload, ptr %.sroa.018.0.copyload, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ag

bb.b:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !162
  %.sroa.011.0.copyload = load ptr, ptr %0, align 8, !tbaa !163
  call void @_ZN4Luau12UnionBuilderC1ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(89) %3, ptr %.sroa.012.0.copyload, ptr %.sroa.011.0.copyload)
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  invoke void @_ZN4Luau12UnionBuilder7reserveEm(ptr noundef nonnull align 8 dereferenceable(89) %3, i64 noundef %i.z)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %4, ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %5, ptr noundef nonnull %i.e)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.h

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.033 = phi i8 [ %.134, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ 0, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 2 uses
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ag = icmp eq i64 %i.af, 0                    ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ai = icmp eq i64 %i.ah, 0                    ; 2 uses
  %brmerge.i.i = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %brmerge.i.i, label %bb.e, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.aj = load ptr, ptr %4, align 8, !tbaa !26
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !26
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp eq i64 %i.at, %i.av
  %i.ax = select i1 %i.ar, i1 %i.aw, i1 false
  br i1 %i.ax, label %6, label %bb.i

bb.e:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %.mux.i.i, label %6, label %bb.i

6:                                                ; preds = %.split, %bb.e
  %7 = trunc nuw i8 %.033 to i1
  %8 = xor i1 %7, true
  br label %.loopexit77

bb.f:                                             ; preds = %bb.ab, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.i:                                             ; preds = %.split, %bb.e
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !26
  %i.bc = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc61 unwind label %bb.l

.noexc61:                                         ; preds = %.noexc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.4.0.copyload.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bi = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.bh)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %bb.l ; 2 uses

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc61
  %i.bj = invoke noundef ptr @_ZN4Luau14TypeSimplifier9intersectEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2, ptr noundef %i.bi)
          to label %bb.j unwind label %bb.m       ; 4 uses

bb.j:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.bk = icmp ne ptr %i.bj, %i.bi
  %9 = zext i1 %i.bk to i8
  %10 = or i8 %.033, %9
  %11 = icmp ne i8 %10, 0
  %.not.i.i63 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i63, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !17
  %i.bm = icmp eq i32 %i.bl, 17
  br i1 %i.bm, label %bb.s, label %bb.n

bb.l:                                             ; preds = %.noexc61, %.noexc, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.o, %bb.n, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN4Luau12UnionBuilder3addEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(89) %3, ptr noundef %i.bj)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.bp = invoke noundef i64 @_ZNK4Luau12UnionBuilder4sizeEv(ptr noundef nonnull align 8 dereferenceable(89) %3)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ugt i64 %i.bp, %i.h
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.03.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !162
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %1, ptr %i.b, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.br, align 8, !tbaa !41
  %i.bs = invoke noundef ptr @_ZN4Luau15addIntersectionENS_7NotNullINS_9TypeArenaEEENS0_INS_12BuiltinTypesEEESt16initializer_listIPKNS_4TypeEE(ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr nonnull %i.b, i64 2)
          to label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.y

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.loopexit77

bb.s:                                             ; preds = %bb.p, %bb.k
  %.134.ph = phi i1 [ true, %bb.k ], [ %11, %bb.p ]
  %.134 = zext i1 %.134.ph to i8
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %.pre.i.i = load i64, ptr %i.ac, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.bw = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cs, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.bx = load ptr, ptr %4, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !56
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !56
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.cd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.cc)
          to label %.noexc65 unwind label %.loopexit ; 2 uses

.noexc65:                                         ; preds = %bb.t
  %i.ce = load i64, ptr %i.bz, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !40
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %.not.i.i64 = icmp ult i64 %i.ce, %i.cl
  br i1 %.not.i.i64, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.noexc65
  %i.cm = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.cn = add i64 %i.cm, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.ac, align 8, !tbaa !27
  %i.co = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.aa, align 8, !tbaa !25
  %i.cq = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.cr = icmp eq i64 %i.cn, %i.cq
  br i1 %i.cr, label %bb.v, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.v, %bb.u
  %i.cs = phi i64 [ 0, %bb.v ], [ %i.cn, %bb.u ]
  %i.ct = icmp eq i64 %i.cp, 0
  br i1 %i.ct, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.t

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc65, %bb.s
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp

.loopexit77:                                      ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, %6
  %.2.mux = phi ptr [ %i.bs, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %1, %6 ]
  %brmerge = phi i1 [ true, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %8, %6 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit77
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %.loopexit77, %bb.w
  %i.cw = load ptr, ptr %5, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !37
  %i.cz = shl i64 %i.cy, 4
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i67, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68, label %bb.x

bb.x:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.db) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.x
  %i.dc = load ptr, ptr %4, align 8, !tbaa !26
  %i.dd = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.de = shl i64 %i.dd, 4
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %brmerge, label %bb.ac, label %bb.ab

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l, %bb.r, %bb.m
  %.pn55 = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bn, %bb.l ], [ %i.bt, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.y ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.g
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.z ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.af

bb.ab:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68
  %i.df = invoke noundef ptr @_ZN4Luau12UnionBuilder5buildEv(ptr noundef nonnull align 8 dereferenceable(89) %3)
          to label %bb.ac unwind label %bb.f

bb.ac:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68, %bb.ab
  %.3 = phi ptr [ %i.df, %bb.ab ], [ %.2.mux, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !157
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.ad, %bb.ac
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau12UnionBuilderD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.do) #22
  br label %_ZN4Luau12UnionBuilderD2Ev.exit

_ZN4Luau12UnionBuilderD2Ev.exit:                  ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa, %bb.f
  %.pn59 = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %.pn55.pn.pn, %bb.aa ]
  call void @_ZN4Luau12UnionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn59

bb.ag:                                            ; preds = %_ZN4Luau12UnionBuilderD2Ev.exit, %bb.a
  %.4 = phi ptr [ %i.s, %bb.a ], [ %.3, %_ZN4Luau12UnionBuilderD2Ev.exit ]
  ret ptr %.4
}

declare noundef ptr @_ZN4Luau15addIntersectionENS_7NotNullINS_9TypeArenaEEENS0_INS_12BuiltinTypesEEESt16initializer_listIPKNS_4TypeEE(ptr, ptr, ptr, i64) local_unnamed_addr #3

declare void @_ZN4Luau12UnionBuilderC1ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(89), ptr, ptr) unnamed_addr #3

declare void @_ZN4Luau12UnionBuilder7reserveEm(ptr noundef nonnull align 8 dereferenceable(89), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau14TypeSimplifier9intersectEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %3 = alloca %"class.Luau::DenseHashSet.66", align 8 ; 7 uses
  %4 = alloca %"class.Luau::DenseHashSet.66", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.Luau::RecursionLimiter", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.Luau::UnionType", align 8  ; 7 uses
  %8 = alloca %"struct.Luau::UnionType", align 8  ; 6 uses
  %i.d = alloca [2 x ptr], align 8                ; 6 uses
  %9 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  %i.e = alloca [2 x ptr], align 8                ; 6 uses
  %i.f = alloca [2 x ptr], align 8                ; 6 uses
  %10 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %i.g = alloca [2 x ptr], align 8                ; 6 uses
  %11 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !41
  store ptr %2, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 25, ptr %i.a, align 8, !tbaa !56
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %6, align 8, !tbaa !82
  %i.j = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.i, ptr noundef nonnull align 1 dereferenceable(25) @.str.63, i64 25, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !81
  %i.l = load ptr, ptr %6, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN4Luau16RecursionLimiterC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.n, i32 noundef 15)
          to label %bb.a unwind label %bb.m

bb.a:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.h, align 8, !tbaa !148
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.s = invoke noundef ptr @_ZN4Luau14TypeSimplifier8simplifyEPKNS_4TypeERNS_12DenseHashSetIS3_NS_16DenseHashPointerESt8equal_toIS3_EEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.b unwind label %bb.d       ; 40 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load ptr, ptr %4, align 8, !tbaa !183    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.t) #22
  br label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !183    ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i3.i, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.v) #22
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.s, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = invoke noundef ptr @_ZN4Luau14TypeSimplifier8simplifyEPKNS_4TypeERNS_12DenseHashSetIS3_NS_16DenseHashPointerESt8equal_toIS3_EEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.g unwind label %bb.i       ; 49 uses

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %3, align 8, !tbaa !183    ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i104, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !183    ; 2 uses
  %.not.i.i3.i102 = icmp eq ptr %i.z, null
  br i1 %.not.i.i3.i102, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i103, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #22
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i103

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit4.i103: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.w, ptr %i.c, align 8, !tbaa !41
  %i.aa = icmp eq ptr %i.s, %i.w
  br i1 %i.aa, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit, label %bb.o

bb.l:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.m:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4Luau9TypeArena7addTypeINS_16IntersectionTypeEEEPKNS_4TypeET_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !148
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.s = load i32, ptr %2, align 8, !tbaa !17
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  invoke void %i.v(ptr noundef nonnull %i.d)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.y = load i32, ptr %3, align 8, !tbaa !17
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !149
  invoke void %i.ab(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.j

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #22
  %i.af = load i32, ptr %3, align 8, !tbaa !17
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !149
  invoke void %i.ai(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %2, 3                   ; 4 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !157
  br label %bb.c

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #26
          to label %.noexc3 unwind label %bb.d    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !157
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !259

bb.a:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr align 8 %1, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %.noexc3
  %i.f = load ptr, ptr %1, align 8, !tbaa !41
  store ptr %i.f, ptr %i.c, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i
  %i.g = phi ptr [ %i.d, %bb.a ], [ %i.a, %.thread.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !58
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIPKN4Luau4TypeESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  invoke void @_ZNSt8_Rb_treeIPKN4Luau4TypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPKN4Luau4TypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZNSt8_Rb_treeIPKN4Luau4TypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau14TypeSimplifier21intersectNegatedUnionEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit:
  %3 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %4 = alloca %"class.Luau::TypeIds", align 8     ; 16 uses
  %5 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %6 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %7 = alloca %"class.Luau::TypeIds", align 8     ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.b) ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.c, null
  br i1 %.not.i.i51, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = select i1 %i.e, ptr %i.f, ptr null
  br label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit, %bb.a
  %i.h = phi ptr [ %i.g, %bb.a ], [ null, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %5, ptr noundef %i.h)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %6, ptr noundef %i.h)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.e

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.034 = phi i8 [ %.337.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ 0, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 4 uses
  %i.q = load i64, ptr %i.j, align 8, !tbaa !25
  %i.r = icmp eq i64 %i.q, 0                      ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !25
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %brmerge.i.i, label %bb.c, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !26
  %i.v = load i64, ptr %i.l, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !26
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ae, %i.ag
  %i.ai = select i1 %i.ac, i1 %i.ah, i1 false
  br i1 %i.ai, label %.loopexit77, label %bb.f

bb.c:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.r, i1 %i.t, i1 false
  br i1 %.mux.i.i, label %.loopexit77, label %bb.f

bb.d:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.split, %bb.c
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.al = load ptr, ptr %5, align 8, !tbaa !26
  %i.am = load i64, ptr %i.l, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ao = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc52 unwind label %bb.l

.noexc52:                                         ; preds = %.noexc
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.4.0.copyload.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ar)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %bb.l ; 7 uses

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %i.n, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.at = invoke noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef %i.as, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.au) #22
  br label %bb.k

bb.i:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #22
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  switch i32 %i.at, label %bb.x [
    i32 0, label %bb.n
    i32 1, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
    i32 4, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
    i32 3, label %bb.o
    i32 2, label %bb.o
  ]

bb.l:                                             ; preds = %.noexc52, %.noexc, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  invoke void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %2)
          to label %bb.x unwind label %bb.m

bb.o:                                             ; preds = %bb.k, %bb.k
  %i.az = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !140 ; 2 uses
  %i.bc = icmp eq ptr %i.as, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141 ; 2 uses
  br i1 %i.bc, label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq ptr %i.as, %i.be
  br i1 %i.bf, label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load i32, ptr %i.as, align 8, !tbaa !17
  %i.bh = icmp eq i32 %i.bg, 18
  br i1 %i.bh, label %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, label %bb.s

_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bk = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.bj)
          to label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit unwind label %bb.v

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bl = load ptr, ptr %i.o, align 8, !tbaa !143
  %i.bm = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_12NegationTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.bl, ptr %i.as)
          to label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit unwind label %bb.v

_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit: ; preds = %bb.p, %bb.o, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.s
  %.1.i = phi ptr [ %i.bb, %bb.p ], [ %i.bk, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i ], [ %i.be, %bb.o ], [ %i.bm, %bb.s ]
  %i.bn = invoke noundef ptr @_ZN4Luau14TypeSimplifier25intersectTypeWithNegationEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %.1.i, ptr noundef %2)
          to label %bb.t unwind label %bb.v       ; 4 uses

bb.t:                                             ; preds = %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit
  %i.bo = icmp ne ptr %i.bn, %2
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %.034, %8
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  %.not.i.i56 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i56, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !17
  %i.bq = icmp eq i32 %i.bp, 17
  br i1 %i.bq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.w, %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u, %bb.t
  invoke void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %i.bn)
          to label %bb.x unwind label %bb.v

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.k, %bb.k
  %i.bs = load ptr, ptr %0, align 8, !tbaa !123
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !151
  br label %.loopexit77

bb.x:                                             ; preds = %bb.w, %bb.k, %bb.n, %bb.u
  %.337.ph = phi i8 [ 1, %bb.u ], [ %11, %bb.w ], [ %.034, %bb.n ], [ %.034, %bb.k ]
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.bx = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ct, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.by = load ptr, ptr %5, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !56
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !56
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.cd)
          to label %.noexc58 unwind label %.loopexit ; 2 uses

.noexc58:                                         ; preds = %bb.y
  %i.cf = load i64, ptr %i.ca, align 8, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !40
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  %.not.i.i57 = icmp ult i64 %i.cf, %i.cm
  br i1 %.not.i.i57, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.z

bb.z:                                             ; preds = %.noexc58
  %i.cn = load i64, ptr %i.l, align 8, !tbaa !27
  %i.co = add i64 %i.cn, 1                        ; 3 uses
  store i64 %i.co, ptr %i.l, align 8, !tbaa !27
  %i.cp = load i64, ptr %i.j, align 8, !tbaa !25
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %i.j, align 8, !tbaa !25
  %i.cr = load i64, ptr %i.p, align 8, !tbaa !37
  %i.cs = icmp eq i64 %i.co, %i.cr
  br i1 %i.cs, label %bb.aa, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.l, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.ct = phi i64 [ 0, %bb.aa ], [ %i.co, %bb.z ]
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.y

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc58, %bb.x
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp

.loopexit77:                                      ; preds = %bb.c, %.split, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
  %.0.i.i122 = phi i1 [ false, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ true, %.split ], [ true, %bb.c ]
  %.241.mux = phi ptr [ %i.bu, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ undef, %.split ], [ undef, %bb.c ]
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i60, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit77
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %.loopexit77, %bb.ab
  %i.cx = load ptr, ptr %6, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !37
  %i.da = shl i64 %i.cz, 4
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i61, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62, label %bb.ac

bb.ac:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.ac
  %i.dd = load ptr, ptr %5, align 8, !tbaa !26
  %i.de = load i64, ptr %i.p, align 8, !tbaa !37
  %i.df = shl i64 %i.de, 4
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.df) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i122, label %12, label %_ZN4Luau7TypeIdsD2Ev.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, %bb.l, %bb.v
  %.pn46 = phi { ptr, i32 } [ %i.av, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i ], [ %i.ax, %bb.l ], [ %i.br, %bb.v ], [ %i.ay, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #22
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.e
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %.body ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.d
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.ad ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.am

12:                                               ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62
  %13 = trunc nuw i8 %.034 to i1
  br i1 %13, label %bb.af, label %_ZN4Luau7TypeIdsD2Ev.exit

bb.af:                                            ; preds = %12
  %i.dg = load ptr, ptr %4, align 8, !tbaa !155
  store ptr %i.dg, ptr %7, align 8, !tbaa !155
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = load <2 x i64>, ptr %i.di, align 8, !tbaa !56
  store <2 x i64> %i.dj, ptr %i.dh, align 8, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !156
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.do = load <2 x ptr>, ptr %i.i, align 8, !tbaa !161
  store <2 x ptr> %i.do, ptr %i.dn, align 8, !tbaa !161
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !157
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !160
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !160
  %i.dv = invoke noundef ptr @_ZN4Luau14TypeSimplifier18intersectFromPartsENS_7TypeIdsE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 %7)
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !157
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.ah, %bb.ag
  %i.eb = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i64, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit

bb.aj:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #22
  br label %bb.am

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %bb.ai, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %12, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62
  %.342 = phi ptr [ %2, %12 ], [ %.241.mux, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62 ], [ %i.dv, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i ], [ %i.dv, %bb.ai ]
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66, label %bb.ak

bb.ak:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !157
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66: ; preds = %bb.ak, %_ZN4Luau7TypeIdsD2Ev.exit
  %i.ej = load ptr, ptr %4, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i67, label %_ZN4Luau7TypeIdsD2Ev.exit68, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit68

_ZN4Luau7TypeIdsD2Ev.exit68:                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %.342

bb.am:                                            ; preds = %bb.aj, %bb.ae
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.ae ], [ %i.ec, %bb.aj ]
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

declare void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau14TypeSimplifier25intersectTypeWithNegationEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit:
  %3 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %4 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %5 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %6 = alloca %"class.Luau::TypeIds", align 8     ; 17 uses
  %7 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %8 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %9 = alloca %"class.Luau::TypeIds", align 8     ; 9 uses
  %10 = alloca %"class.std::set", align 8         ; 10 uses
  %11 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %12 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %13 = alloca %"struct.Luau::IntersectionType", align 8 ; 8 uses
  %14 = alloca %"struct.Luau::UnionType", align 8 ; 9 uses
  %15 = alloca %"class.Luau::Variant.64", align 8 ; 8 uses
  %16 = alloca %"class.Luau::Variant.64", align 8 ; 8 uses
  %17 = alloca %"struct.Luau::IntersectionType", align 8 ; 6 uses
  %i.a = alloca [2 x ptr], align 8                ; 6 uses
  %18 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.c) ; 8 uses
  %i.e = icmp eq ptr %i.d, %2
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  br label %bb.dm

bb.b:                                             ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %.not.i.i143 = icmp eq ptr %i.d, null           ; 2 uses
  br i1 %.not.i.i143, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !17
  %i.j = icmp eq i32 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.j, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.ao

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %7, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %8, ptr noundef nonnull %i.k)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.g

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.071 = phi i1 [ %.273.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 4 uses
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.v = load i64, ptr %i.n, align 8, !tbaa !25
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.u, i1 true, i1 %i.w
  br i1 %brmerge.i.i, label %bb.e, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.x = load ptr, ptr %7, align 8, !tbaa !26
  %i.y = load i64, ptr %i.o, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %8, align 8, !tbaa !26
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.ah, %i.aj
  %i.al = select i1 %i.af, i1 %i.ak, i1 false
  br i1 %i.al, label %.loopexit295, label %bb.h

bb.e:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %.mux.i.i, label %.loopexit295, label %bb.h

bb.f:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit290:                                     ; preds = %bb.y
  %lpad.loopexit292 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp291:                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %lpad.loopexit.split-lp293 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.split, %bb.e
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc144 unwind label %bb.n

.noexc144:                                        ; preds = %.noexc
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.4.0.copyload.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.av = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.au)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %bb.n ; 7 uses

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 0, ptr %i.q, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.aw = invoke noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef %i.av, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #22
  br label %bb.m

bb.k:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.az) #22
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i
end_hunk_1
