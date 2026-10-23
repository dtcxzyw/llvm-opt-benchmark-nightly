Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Simplify?download=true
inline.NumInlined: 2307
inline.NumDeleted: 943
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau23isTruthyType_DEPRECATEDEPKNS_4TypeE:bb.a
  br i1 %brmerge.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %1, align 8, !tbaa !26
  %i.fk = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = load ptr, ptr %4, align 8, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !30
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fs = icmp eq ptr %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = icmp eq i64 %i.fu, %i.fw
  %i.fy = select i1 %i.fs, i1 %i.fx, i1 false
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i = phi i1 [ %i.fy, %bb.aa ], [ %.mux.i.i.i, %bb.z ]
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i141.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i141.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.ga) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i: ; preds = %bb.ac, %bb.ab
  %i.gb = load ptr, ptr %4, align 8, !tbaa !26
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !37
  %i.ge = shl i64 %i.gd, 4
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %spec.select.i = and i1 %.560.i, %.0.i.i.i
  br label %.critedge97.i

bb.ad:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit140.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split-lp.loopexit.split-lp.i

.critedge97.i:                                    ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i, %call.0.i129.i, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i, %bb.u, %bb.t, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i, %call.0.i.i, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.j, %bb.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i
  %.772.i = phi i1 [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i ], [ %spec.select.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i ], [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i ], [ false, %call.0.i129.i ], [ false, %call.0.i.i ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.u ], [ false, %bb.t ], [ false, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i ], [ false, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i ], [ false, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i ], [ false, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i143.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i143.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge97.i
  call void @_ZdlPv(ptr noundef nonnull %i.gh) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i: ; preds = %bb.ae, %.critedge97.i
  %i.gi = load ptr, ptr %1, align 8, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !37
  %i.gl = shl i64 %i.gk, 4
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.r, %bb.g
  %.pn92.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.gf, %bb.ad ], [ %i.dj, %bb.r ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn92.pn.pn.i

_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit: ; preds = %bb.a, %bb.b, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i, %bb.c, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %.0 = phi i1 [ false, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit ], [ %.772.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4Luau4flipENS_8RelationE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 3, label %bb.d
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %0, %bb.c ], [ 3, %bb.b ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN4Luau6invertENS_8RelationE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau6invertENS_8RelationE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 5) i32 @_ZN4Luau23relateTableToExternTypeEPKNS_9TableTypeEPKNS_10ExternTypeERNS_3SetISt4pairIPKNS_4TypeESA_ENS_12TypePairHashEEE(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !60, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load i8, ptr %i.d, align 8, !tbaa !60, !range !54, !noundef !55
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not2829 = icmp eq ptr %i.h, %i.i
  br i1 %.not2829, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.020.030 = phi ptr [ %i.q, %bb.e ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.030, i64 32
  %i.k = tail call noundef ptr @_ZN4Luau20lookupExternTypePropEPKNS_10ExternTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.020.030, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = tail call noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef %i.m, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  switch i32 %i.p, label %bb.e [
    i32 0, label %.loopexit.loopexit
    i32 3, label %.loopexit
    i32 2, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.020.030) #24 ; 2 uses
  %.not28 = icmp eq ptr %i.q, %i.i
  br i1 %.not28, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.d, %bb.e
  %.3.ph = phi i32 [ %i.p, %bb.d ], [ 4, %bb.e ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.d, %.loopexit.loopexit, %bb.c, %bb.a, %bb.b
  %.3 = phi i32 [ 2, %bb.b ], [ 2, %bb.a ], [ %.3.ph, %.loopexit.loopexit ], [ 4, %bb.c ], [ 2, %bb.d ], [ 2, %bb.d ]
  ret i32 %.3
}

declare noundef ptr @_ZN4Luau20lookupExternTypePropEPKNS_10ExternTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.52", align 8     ; 6 uses
  %4 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %5 = alloca %"struct.Luau::TypeIterator", align 8 ; 9 uses
  %6 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %7 = alloca %"struct.Luau::TypeIterator", align 8 ; 9 uses
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %0) ; 28 uses
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %1) ; 40 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.cg, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.a, ptr %3, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !68
  %i.e = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_EbNS_12TypePairHashESt8equal_toIS5_EEixERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !69, !range !54, !noundef !55
  %8 = trunc nuw i8 %i.f to i1
  br i1 %8, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 1, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.a, null              ; 11 uses
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 16
  br i1 %i.k, label %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit, label %bb.f

_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.d
  %.not.i.i256 = icmp eq ptr %i.b, null
  br i1 %.not.i.i256, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit
  %i.l = load i32, ptr %i.b, align 8, !tbaa !17
  %switch.tableidx = add i32 %i.l, -1             ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 16
  br i1 %i.m, label %switch.lookup, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

switch.edge:                                      ; preds = %bb.bq, %bb.bp, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not.i.i260 = icmp eq ptr %i.b, null           ; 19 uses
  br i1 %.not.i.i260, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.b, align 8, !tbaa !17
  %i.o = icmp eq i32 %i.n, 16
  br i1 %i.o, label %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit261, label %bb.i

_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit261: ; preds = %bb.g
  %i.p = call noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  switch i32 %i.p, label %bb.h [
    i32 3, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit
    i32 4, label %bb.ce
  ]

bb.h:                                             ; preds = %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit261
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.a, align 8, !tbaa !17
  %i.r = icmp eq i32 %i.q, 12
  br i1 %i.r, label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit263, label %bb.l

_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit263: ; preds = %bb.j
  br i1 %.not.i.i260, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit263
  %i.s = load i32, ptr %i.b, align 8, !tbaa !17
  %.not664 = icmp eq i32 %i.s, 12
  %i.t = select i1 %.not664, i32 1, i32 4
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  br i1 %.not.i.i260, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load i32, ptr %i.b, align 8, !tbaa !17
  %i.v = icmp eq i32 %i.u, 12
  br i1 %i.v, label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit267, label %bb.o

_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit267: ; preds = %bb.m
  %i.w = call noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  switch i32 %i.w, label %bb.n [
    i32 3, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit
    i32 4, label %bb.ce
  ]

bb.n:                                             ; preds = %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit267
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  br i1 %.not.i.i, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit.thread, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit

_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit:       ; preds = %bb.o
  %i.x = load i32, ptr %i.a, align 8, !tbaa !17
  %i.y = add i32 %i.x, -2
  %switch.and.i = and i32 %i.y, -6
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit.thread

_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit.thread: ; preds = %bb.o, %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit
  br i1 %.not.i.i260, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273.thread, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273

_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273:    ; preds = %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit.thread
  %i.z = load i32, ptr %i.b, align 8, !tbaa !17
  %i.aa = add i32 %i.z, -2
  %switch.and.i271 = and i32 %i.aa, -6
  %switch.selectcmp.i272 = icmp eq i32 %switch.and.i271, 0
  br i1 %switch.selectcmp.i272, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273.thread

_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273.thread: ; preds = %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit.thread, %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273.thread
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ac = icmp eq i32 %i.ab, 20
  br i1 %i.ac, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4LuauL14isTypeVariableEPKNS_4TypeE.exit273.thread
  br i1 %.not.i.i260, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 20
  br i1 %i.ae, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit278, label %bb.w

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit278: ; preds = %bb.t
  br i1 %.not.i.i260, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit278
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not665 = icmp eq i32 %i.ah, 12
  %i.aj = select i1 %.not665, i32 3, i32 0
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.w:                                             ; preds = %bb.t, %bb.s
  br i1 %.not.i.i260, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !17
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit284, label %bb.z

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit284: ; preds = %bb.x
  %i.am = call noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  switch i32 %i.am, label %bb.y [
    i32 3, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit
    i32 4, label %bb.ce
  ]

bb.y:                                             ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit284
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  br i1 %.not.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ao = icmp eq i32 %i.an, 17
  br i1 %i.ao, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.ac

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.aa
  br i1 %.not.i.i260, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !17
  %.not666 = icmp eq i32 %i.ap, 17
  %i.aq = select i1 %.not666, i32 1, i32 3
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not.i.i260, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !17
  %i.as = icmp eq i32 %i.ar, 17
  br i1 %i.as, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit291, label %bb.af

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit291: ; preds = %bb.ad
  %i.at = call noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  switch i32 %i.at, label %bb.ae [
    i32 3, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit
    i32 4, label %bb.ce
  ]

bb.ae:                                            ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit291
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.au = load i32, ptr %i.a, align 8, !tbaa !17
  %i.av = icmp eq i32 %i.au, 14
  br i1 %i.av, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEE6insertERKS5_.exit, label %bb.ah

end_hunk_0
begin_hunk_1_@_ZNK4Luau14TypeSimplifier31intersectWithSimpleDiscriminantEPKNS_4TypeES3_RNS_12DenseHashSetIS3_NS_16DenseHashPointerESt8equal_toIS3_EEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pc) #23
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit272

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.ct, %bb.cs, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267, %bb.cp, %bb.cl
  %.sroa.0367.10 = phi ptr [ %i.oh, %bb.cl ], [ %i.ol, %bb.cp ], [ %.sroa.0367.9, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267 ], [ %i.oo, %bb.cs ], [ %i.oo, %bb.ct ]
  %.sroa.23.10 = phi i8 [ 1, %bb.cl ], [ 1, %bb.cp ], [ %.sroa.23.9, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267 ], [ 1, %bb.cs ], [ 1, %bb.ct ]
  %i.pd = load ptr, ptr %i.ia, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i273, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274, label %bb.cx

bb.cx:                                            ; preds = %_ZN4Luau16IntersectionTypeD2Ev.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !157
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274: ; preds = %bb.cx, %_ZN4Luau16IntersectionTypeD2Ev.exit
  %i.pj = load ptr, ptr %8, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i275, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274
  call void @_ZdlPv(ptr noundef nonnull %i.pj) #22
  br label %bb.cz

_ZN4Luau16IntersectionTypeD2Ev.exit272:           ; preds = %bb.cu, %bb.cv, %bb.cw, %bb.ci
  %.pn154.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn.pn, %bb.ci ], [ %i.ow, %bb.cv ], [ %i.ow, %bb.cw ], [ %i.ov, %bb.cu ]
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eu

bb.cz:                                            ; preds = %bb.cy, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.g
  %.not.i.i278 = icmp eq ptr %i.w, null
  br i1 %.not.i.i278, label %.thread439, label %bb.da

bb.da:                                            ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.pk = load i32, ptr %i.w, align 8, !tbaa !17
  %i.pl = icmp eq i32 %i.pk, 9
  br i1 %i.pl, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279, label %.thread439

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279: ; preds = %bb.da
  %i.pm = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !65 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !77 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not10.i.i.i, label %.critedge170, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !81 ; 4 uses
  %i.pu = load ptr, ptr %i.po, align 8            ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.pq, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.pr, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !81 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.pt, i64 %i.pw) ; 2 uses
  %i.px = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.px, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.db
  %i.py = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !82
  %i.qa = tail call i32 @memcmp(ptr noundef %i.pz, ptr noundef %i.pu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.db
  %i.qb = sub i64 %i.pw, %i.pt
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.qb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.qa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.qc = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.qc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 10 uses
  %.1.in.v.i.i.i = select i1 %i.qc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i280, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.db, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.qd = icmp eq ptr %.19.i.i.i, %i.pr
  br i1 %i.qd, label %.critedge170, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !81 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.qf, i64 %i.pt) ; 2 uses
  %i.qg = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.qg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.dc
  %i.qh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !82
  %i.qj = tail call i32 @memcmp(ptr noundef %i.pu, ptr noundef %i.qi, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.dc
  %i.qk = sub i64 %i.pt, %i.qf
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.qk, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.qj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ql = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ql, label %.critedge170, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.qm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  call void @_ZNK4Luau14TypeSimplifier17intersectPropertyERKNS_8PropertyES3_RNS_12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS7_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.112") align 8 %14, ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.qn, ptr noundef nonnull align 8 dereferenceable(176) %i.qo, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.qp = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 3 uses
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !207, !range !54, !noundef !55
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.de, label %bb.ds

bb.de:                                            ; preds = %bb.dd
  %i.qs = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !85, !range !54, !noundef !55
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %.sroa.023.0.copyload = load ptr, ptr %i.qs, align 8
  %i.qw = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.023.0.copyload)
          to label %bb.dg unwind label %bb.dl     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %.not.i.i.i.not.i284 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i.not.i284, label %.critedge, label %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit

_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit: ; preds = %bb.dg
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !17
  %i.qy = icmp eq i32 %i.qx, 17
  br i1 %i.qy, label %bb.dh, label %.critedge

bb.dh:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit
  %i.qz = load ptr, ptr %0, align 8, !tbaa !123
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 160
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !41
  br label %bb.ds

.critedge:                                        ; preds = %bb.dg, %bb.de, %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %14, i64 168 ; 2 uses
  %i.re = load i8, ptr %i.rd, align 8, !tbaa !85, !range !54, !noundef !55
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.di, label %.critedge14

bb.di:                                            ; preds = %.critedge
  %.sroa.021.0.copyload = load ptr, ptr %i.rc, align 8
  %i.rg = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.021.0.copyload)
          to label %bb.dj unwind label %bb.dl     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %.not.i.i.i.not.i293 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.not.i293, label %.critedge14, label %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294

_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294: ; preds = %bb.dj
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !17
  %i.ri = icmp eq i32 %i.rh, 17
  br i1 %i.ri, label %bb.dk, label %.critedge14

bb.dk:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294
  %i.rj = load ptr, ptr %0, align 8, !tbaa !123
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 160
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !41
  br label %bb.ds

bb.dl:                                            ; preds = %bb.df, %bb.di
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.critedge14:                                      ; preds = %bb.dj, %.critedge, %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294
  %i.rn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 208
  %i.ro = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 216
  %i.rp = load i8, ptr %i.ro, align 8, !tbaa !85, !range !54, !noundef !55 ; 2 uses
  %19 = trunc nuw i8 %i.rp to i1
  %20 = load i8, ptr %i.qt, align 8, !tbaa !85, !range !54, !noundef !55
  %i.rq = icmp eq i8 %i.rp, %20                   ; 2 uses
  %brmerge.not.i = and i1 %i.rq, %19
  %i.rr = load ptr, ptr %i.rn, align 8
  %i.rs = load ptr, ptr %i.qs, align 8
  %i.rt = icmp eq ptr %i.rr, %i.rs
  %i.ru = select i1 %brmerge.not.i, i1 %i.rt, i1 %i.rq
  br i1 %i.ru, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.critedge14
  %i.rv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 224
  %i.rw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 232
  %i.rx = load i8, ptr %i.rw, align 8, !tbaa !85, !range !54, !noundef !55 ; 2 uses
  %21 = trunc nuw i8 %i.rx to i1
  %22 = load i8, ptr %i.rd, align 8, !tbaa !85, !range !54, !noundef !55
  %i.ry = icmp eq i8 %i.rx, %22                   ; 2 uses
  %brmerge.not.i295 = and i1 %i.ry, %21
  %i.rz = load ptr, ptr %i.rv, align 8
  %i.sa = load ptr, ptr %i.rc, align 8
  %i.sb = icmp eq ptr %i.rz, %i.sa
  %i.sc = select i1 %brmerge.not.i295, i1 %i.sb, i1 %i.ry
  br i1 %i.sc, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.critedge14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.sd = load i64, ptr %0, align 8, !tbaa !163
  store i64 %i.sd, ptr %15, align 8, !tbaa !163
  %i.se = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.sg, ptr %i.se, align 8, !tbaa !214
  %i.sh = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %i.sh, align 8, !tbaa !215
  %i.si = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.si, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.sj, align 8, !tbaa !269
  %i.sk = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.sl = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.sk, i8 0, i64 56, i1 false)
  store ptr %i.sm, ptr %i.sl, align 8, !tbaa !217
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 1, ptr %i.sn, align 8, !tbaa !218
  %i.so = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.so, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.sp, align 8, !tbaa !269
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i8 0, i64 16, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !143
  %i.st = invoke noundef ptr @_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb(ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.ss, ptr noundef nonnull align 8 dereferenceable(120) %15, i1 noundef zeroext true)
          to label %bb.do unwind label %bb.dr     ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.su = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.st)
          to label %.noexc297 unwind label %bb.dr ; 3 uses

.noexc297:                                        ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.su) ]
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.sv, ptr noundef nonnull align 8 dereferenceable(32) %i.qm)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %.noexc297
  %i.sx = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.sw, ptr noundef nonnull align 8 dereferenceable(176) %14)
          to label %bb.dq unwind label %bb.dr     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.sy = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !190
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 104
  store ptr %i.sz, ptr %i.ta, align 8, !tbaa !190
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do, %bb.dn, %bb.dp, %.noexc297
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.du

bb.ds:                                            ; preds = %bb.dm, %bb.dd, %bb.dq, %bb.dk, %bb.dh
  %.sroa.0367.12 = phi ptr [ %i.rb, %bb.dh ], [ %i.rl, %bb.dk ], [ undef, %bb.dd ], [ %i.st, %bb.dq ], [ %i.v, %bb.dm ]
  %.sroa.23.12 = phi i8 [ 1, %bb.dh ], [ 1, %bb.dk ], [ 0, %bb.dd ], [ 1, %bb.dq ], [ 1, %bb.dm ]
  %i.tc = load i8, ptr %i.qp, align 8, !tbaa !207, !range !54, !noundef !55
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.dt, label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit

bb.dt:                                            ; preds = %bb.ds
  call void @_ZNSt22_Optional_payload_baseIN4Luau8PropertyEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %14) #22
  br label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit: ; preds = %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.du:                                            ; preds = %bb.dr, %bb.dl
  %.pn145.pn = phi { ptr, i32 } [ %i.tb, %bb.dr ], [ %i.rm, %bb.dl ]
  %i.te = load i8, ptr %i.qp, align 8, !tbaa !207, !range !54, !noundef !55
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.dv, label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298

bb.dv:                                            ; preds = %bb.du
  call void @_ZNSt22_Optional_payload_baseIN4Luau8PropertyEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %14) #22
  br label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298

_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298: ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.eu

.critedge170:                                     ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.tg = load i64, ptr %0, align 8, !tbaa !163
  store i64 %i.tg, ptr %16, align 8, !tbaa !163
  %i.th = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.ti, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store ptr %i.tj, ptr %i.th, align 8, !tbaa !214
  %i.tk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i64 1, ptr %i.tk, align 8, !tbaa !215
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.tm, align 8, !tbaa !269
  %i.tn = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.to = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.tn, i8 0, i64 56, i1 false)
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !217
  %i.tq = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 3 uses
  store i64 1, ptr %i.tq, align 8, !tbaa !218
  %i.tr = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ts, align 8, !tbaa !269
  %i.tt = getelementptr inbounds nuw i8, ptr %16, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tt, i8 0, i64 16, i1 false)
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !143
  %i.tw = invoke noundef ptr @_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb(ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.tv, ptr noundef nonnull align 8 dereferenceable(120) %16, i1 noundef zeroext true)
          to label %bb.dw unwind label %bb.ea     ; 2 uses

bb.dw:                                            ; preds = %.critedge170
  %i.tx = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.tw)
          to label %.noexc300 unwind label %bb.ea ; 3 uses

.noexc300:                                        ; preds = %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tx) ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.ua = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_RKS7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ty, ptr noundef nonnull align 8 dereferenceable(32) %i.po, ptr noundef nonnull align 8 dereferenceable(176) %i.tz)
          to label %bb.dx unwind label %bb.ea     ; 0 uses

bb.dx:                                            ; preds = %.noexc300
  %i.ub = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !190
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 104
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !190
  %i.ue = load ptr, ptr %i.tr, align 8, !tbaa !219 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ue, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dx, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i ], [ %i.ue, %bb.dx ] ; 2 uses
  %i.uf = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !220 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i.i302 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i.i302, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.dx
  %i.ug = load ptr, ptr %i.to, align 8, !tbaa !217
  %i.uh = load i64, ptr %i.tq, align 8, !tbaa !218
  %i.ui = shl i64 %i.uh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ug, i8 0, i64 %i.ui, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, i8 0, i64 16, i1 false)
  %i.uj = load ptr, ptr %i.to, align 8, !tbaa !217 ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.tp
  br i1 %i.uk, label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ul = load i64, ptr %i.tq, align 8, !tbaa !218
  %i.um = shl i64 %i.ul, 3
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #23
  br label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i

_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i: ; preds = %bb.dy, %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.un = load ptr, ptr %i.tl, align 8, !tbaa !221 ; 2 uses
  %.not5.i.i.i.i1.i = icmp eq ptr %i.un, null
  br i1 %.not5.i.i.i.i1.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i

.lr.ph.i.i.i.i2.i:                                ; preds = %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, %.lr.ph.i.i.i.i2.i
  %.06.i.i.i.i3.i = phi ptr [ %i.uo, %.lr.ph.i.i.i.i2.i ], [ %i.un, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i ] ; 2 uses
  %i.uo = load ptr, ptr %.06.i.i.i.i3.i, align 8, !tbaa !220 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3.i, i64 noundef 24) #23
  %.not.i.i.i.i4.i = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i4.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i, !llvm.loop !5

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i
  %i.up = load ptr, ptr %i.th, align 8, !tbaa !214
  %i.uq = load i64, ptr %i.tk, align 8, !tbaa !215
  %i.ur = shl i64 %i.uq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.up, i8 0, i64 %i.ur, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tl, i8 0, i64 16, i1 false)
  %i.us = load ptr, ptr %i.th, align 8, !tbaa !214 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.tj
  br i1 %i.ut, label %_ZN4Luau10CloneStateD2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.uu = load i64, ptr %i.tk, align 8, !tbaa !215
  %i.uv = shl i64 %i.uu, 3
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uv) #23
  br label %_ZN4Luau10CloneStateD2Ev.exit

_ZN4Luau10CloneStateD2Ev.exit:                    ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
end_hunk_1
