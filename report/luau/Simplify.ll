Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Simplify?download=true
inline.NumInlined: 2307
inline.NumDeleted: 943
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@__cxx_global_var_init.57:bb.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !15
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.58() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !15
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.59() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !15
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !15
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau23isTruthyType_DEPRECATEDEPKNS_4TypeE(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::TypeIterator", align 8 ; 24 uses
  %2 = alloca %"struct.Luau::TypeIterator", align 8 ; 10 uses
  %3 = alloca %"struct.Luau::TypeIterator", align 8 ; 10 uses
  %4 = alloca %"struct.Luau::TypeIterator", align 8 ; 10 uses
  %i.a = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %0) ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i32 %i.b, 18
  br i1 %i.c, label %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit

_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.e) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  br i1 %i.h, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i, label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %1, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %2, ptr noundef nonnull %i.i)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.l, i1 true, i1 %i.o
  %.mux.i.i = select i1 %i.l, i1 %i.o, i1 false
  br i1 %brmerge.i.i, label %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %1, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = select i1 %i.z, i1 %i.ae, i1 false
  br label %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit.i

_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i1 [ %i.af, %bb.e ], [ %.mux.i.i, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i: ; preds = %bb.f, %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !37
  %i.al = shl i64 %i.ak, 4
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0.i.i, label %.critedge97.i, label %bb.h

bb.g:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.h:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.h
  %i.an = load ptr, ptr %1, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i.i)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102.i:                                      ; preds = %.noexc.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.4.0.copyload.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.av = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.au)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit.i: ; preds = %.noexc102.i
  %i.aw = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.av)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.i:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit.i
  %.not.i.i104.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i104.i, label %.critedge97.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !17
  switch i32 %i.ax, label %.critedge97.i [
    i32 4, label %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i
    i32 5, label %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i
  ]

_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %.critedge97.i

_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %call.0.i.i, label %.critedge97.i

call.0.i.i:                                       ; preds = %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !53, !range !54, !noundef !55
  %5 = icmp eq i8 %i.bf, 0
  br i1 %5, label %bb.k, label %.critedge97.i

bb.k:                                             ; preds = %call.0.i.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i
  %.257.i = phi i1 [ false, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i ], [ true, %call.0.i.i ]
  %.152.i = phi i1 [ true, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i ], [ false, %call.0.i.i ]
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.bj = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.cf, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i ]
  %i.bk = load ptr, ptr %1, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !56
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !56
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.bp)
          to label %.noexc108.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc108.i:                                      ; preds = %bb.l
  %i.br = load i64, ptr %i.bm, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !40
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %.not.i.i107.i = icmp ult i64 %i.br, %i.by
  br i1 %.not.i.i107.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc108.i
  %i.bz = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.ca, ptr %i.ao, align 8, !tbaa !27
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, -1                       ; 2 uses
  store i64 %i.cc, ptr %i.j, align 8, !tbaa !25
  %i.cd = load i64, ptr %i.bi, align 8, !tbaa !37
  %i.ce = icmp eq i64 %i.ca, %i.cd
  br i1 %i.ce, label %bb.n, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.ao, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.cf = phi i64 [ 0, %bb.n ], [ %i.ca, %bb.m ]
  %i.cg = icmp eq i64 %i.cc, 0
  br i1 %i.cg, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i, label %bb.l

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i.i, %.noexc108.i, %bb.k
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.i: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %3, ptr noundef nonnull %i.i)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.i
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !25
  %i.ci = icmp eq i64 %i.ch, 0                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %brmerge.i110.i = select i1 %i.ci, i1 true, i1 %i.cl
  %.mux.i111.i = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %brmerge.i110.i, label %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit113.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %1, align 8, !tbaa !26
  %i.cn = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cr ; 2 uses
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !30
  %i.cv = icmp eq ptr %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = icmp eq i64 %i.cx, %i.cz
  %i.db = select i1 %i.cv, i1 %i.da, i1 false
  br label %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit113.i

_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit113.i: ; preds = %bb.p, %bb.o
  %.0.i112.i = phi i1 [ %i.db, %bb.p ], [ %.mux.i111.i, %bb.o ]
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i114.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i114.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i, label %bb.q

bb.q:                                             ; preds = %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit113.i
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i: ; preds = %bb.q, %_ZNK4Luau12TypeIteratorINS_9UnionTypeEEeqERKS2_.exit113.i
  %i.de = load ptr, ptr %3, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !37
  %i.dh = shl i64 %i.dg, 4
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i112.i, label %.critedge97.i, label %bb.s

bb.r:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.s:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119.i:                                      ; preds = %bb.s
  %i.dj = load ptr, ptr %1, align 8, !tbaa !26
  %i.dk = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %.sroa.0.0.copyload.i116.i = load ptr, ptr %i.dl, align 8
  %.sroa.4.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.4.0.copyload.i118.i = load i64, ptr %.sroa.4.0..sroa_idx.i117.i, align 8
  %i.dm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i116.i)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120.i:                                      ; preds = %.noexc119.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.4.0.copyload.i118.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !41
  %i.dq = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.dp)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit122.i: ; preds = %.noexc120.i
  %i.dr = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.dq)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.t:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit122.i
  %.not.i.i123.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i123.i, label %.critedge97.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !17
  switch i32 %i.ds, label %.critedge97.i [
    i32 4, label %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i
    i32 5, label %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i
  ]

_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i: ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !49
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %.critedge97.i

_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i: ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %call.0.i129.i, label %.critedge97.i

call.0.i129.i:                                    ; preds = %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !53, !range !54, !noundef !55
  %6 = icmp eq i8 %i.ea, 0
  br i1 %6, label %bb.v, label %.critedge97.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.l, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit122.i, %.noexc120.i, %.noexc119.i, %bb.s, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit.i, %.noexc102.i, %.noexc.i, %bb.h
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.v:                                             ; preds = %call.0.i129.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i
  %.560.i = phi i1 [ %.257.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i ], [ %.152.i, %call.0.i129.i ]
  %i.eb = load i64, ptr %i.j, align 8, !tbaa !25
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i, label %.lr.ph.i.i133.i

.lr.ph.i.i133.i:                                  ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i134.i = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i, %.lr.ph.i.i133.i
  %i.ee = phi i64 [ %.pre.i.i134.i, %.lr.ph.i.i133.i ], [ %i.fa, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i ]
  %i.ef = load ptr, ptr %1, align 8, !tbaa !26
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.ee ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !56
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !56
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !57
  %i.el = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.ek)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc138.i:                                      ; preds = %bb.w
  %i.em = load i64, ptr %i.eh, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !58
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !40
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %.not.i.i135.i = icmp ult i64 %i.em, %i.et
  br i1 %.not.i.i135.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i, label %bb.x

bb.x:                                             ; preds = %.noexc138.i
  %i.eu = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.ev = add i64 %i.eu, 1                        ; 3 uses
  store i64 %i.ev, ptr %i.ao, align 8, !tbaa !27
  %i.ew = load i64, ptr %i.j, align 8, !tbaa !25
  %i.ex = add i64 %i.ew, -1                       ; 2 uses
  store i64 %i.ex, ptr %i.j, align 8, !tbaa !25
  %i.ey = load i64, ptr %i.ed, align 8, !tbaa !37
  %i.ez = icmp eq i64 %i.ev, %i.ey
  br i1 %i.ez, label %bb.y, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.ao, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i: ; preds = %bb.y, %bb.x
  %i.fa = phi i64 [ 0, %bb.y ], [ %i.ev, %bb.x ]
  %i.fb = icmp eq i64 %i.ex, 0
  br i1 %i.fb, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i, label %bb.w

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i136.i, %.noexc138.i, %bb.v
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit140.i: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %4, ptr noundef nonnull %i.i)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit140.i
  %i.fc = load i64, ptr %i.j, align 8, !tbaa !25
  %i.fd = icmp eq i64 %i.fc, 0                    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !25
  %i.fg = icmp eq i64 %i.ff, 0                    ; 2 uses
  %brmerge.i.i.i = select i1 %i.fd, i1 true, i1 %i.fg
  %.mux.i.i.i = select i1 %i.fd, i1 %i.fg, i1 false
  br i1 %brmerge.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %1, align 8, !tbaa !26
  %i.fi = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = load ptr, ptr %4, align 8, !tbaa !26
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !27
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fm ; 2 uses
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !30
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !30
  %i.fq = icmp eq ptr %i.fo, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fs, %i.fu
  %i.fw = select i1 %i.fq, i1 %i.fv, i1 false
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i = phi i1 [ %i.fw, %bb.aa ], [ %.mux.i.i.i, %bb.z ]
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i141.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i141.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.fy) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i: ; preds = %bb.ac, %bb.ab
  %i.fz = load ptr, ptr %4, align 8, !tbaa !26
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !37
  %i.gc = shl i64 %i.gb, 4
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %spec.select.i = and i1 %.560.i, %.0.i.i.i
  br label %.critedge97.i

bb.ad:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit140.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split-lp.loopexit.split-lp.i

.critedge97.i:                                    ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i, %call.0.i129.i, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i, %bb.u, %bb.t, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i, %call.0.i.i, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.j, %bb.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i
  %.772.i = phi i1 [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit.i ], [ %spec.select.i, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit142.i ], [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit115.i ], [ false, %call.0.i129.i ], [ false, %call.0.i.i ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.u ], [ false, %bb.t ], [ false, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit.i ], [ false, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit124.i ], [ false, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.i ], [ false, %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit126.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i143.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i143.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge97.i
  call void @_ZdlPv(ptr noundef nonnull %i.gf) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit144.i: ; preds = %bb.ae, %.critedge97.i
  %i.gg = load ptr, ptr %1, align 8, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !37
  %i.gj = shl i64 %i.gi, 4
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN4LuauL22isFalsyType_DEPRECATEDEPKNS_4TypeE.exit

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.r, %bb.g
  %.pn92.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.gd, %bb.ad ], [ %i.di, %bb.r ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
end_hunk_0
begin_hunk_1_@_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE:bb.a
  br i1 %i.i, label %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit, label %bb.e

_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.k)
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.o = tail call noundef ptr @_ZN4Luau9TypeArena7addTypeINS_12NegationTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.n, ptr %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit, %bb.e
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.o, %bb.e ], [ %i.l, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.f, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_12NegationTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %3 = alloca %"class.Luau::Variant.152", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 18, ptr %3, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !41
  store i32 18, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.d, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.f, align 8, !tbaa !147
  %i.g = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 8, !tbaa !146, !range !54, !noundef !55
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.e, align 8, !tbaa !146
  br i1 %i.i, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !148
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.p = load i32, ptr %2, align 8, !tbaa !17
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149
  invoke void %i.s(ptr noundef nonnull %i.c)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.v = load i32, ptr %3, align 8, !tbaa !17
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149
  invoke void %i.y(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.g

bb.f:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #22
  %i.ac = load i32, ptr %3, align 8, !tbaa !17
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149
  invoke void %i.af(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #25
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau14TypeSimplifier18intersectFromPartsENS_7TypeIdsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::TypeIds", align 8     ; 18 uses
  %3 = alloca %"class.Luau::TypeIds", align 8     ; 17 uses
  %4 = alloca %"struct.Luau::IntersectionBuilder", align 8 ; 10 uses
  %i.a = tail call noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = invoke noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.f unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4Luau7TypeIds7reserveEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.l)
          to label %bb.g unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.h unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4Luau7TypeIds7reserveEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.m)
          to label %bb.i unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.n = invoke ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.j unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.o = invoke ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.preheader55 unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader55:                                     ; preds = %bb.j
  %.not5361 = icmp eq ptr %i.n, %i.o
  br i1 %.not5361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader55
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.046.062 = phi ptr [ %i.n, %.lr.ph ], [ %i.ao, %bb.m ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.046.062, align 8, !tbaa !41
  %i.y = invoke fastcc noundef i32 @_ZN4Luau12_GLOBAL__N_128intersectOneWithIntersectionERNS_14TypeSimplifierERNS_7TypeIdsES4_PKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %i.x)
          to label %bb.l unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %.not.not = icmp eq i32 %i.y, 0
  br i1 %.not.not, label %_ZSt4swapIN4Luau7TypeIdsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, label %.thread51

.thread51:                                        ; preds = %bb.l
  %i.z = load ptr, ptr %0, align 8, !tbaa !123
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !151
  br label %bb.v

.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSt4swapIN4Luau7TypeIdsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.j
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp57

_ZSt4swapIN4Luau7TypeIdsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %bb.l
  %i.ac = load ptr, ptr %2, align 8, !tbaa !155
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !156
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !157
  %i.af = load i64, ptr %i.s, align 8, !tbaa !160
  %i.ag = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %i.ag, ptr %2, align 8, !tbaa !155
  %i.ah = load <2 x i64>, ptr %i.t, align 8, !tbaa !56
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !156
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !156
  %i.aj = load <2 x ptr>, ptr %i.k, align 8, !tbaa !161
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !157
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !157
  %i.al = load i64, ptr %i.w, align 8, !tbaa !160
  store i64 %i.al, ptr %i.s, align 8, !tbaa !160
  store ptr %i.ac, ptr %3, align 8, !tbaa !155
  %i.am = load <2 x i64>, ptr %i.p, align 8, !tbaa !56
  store <2 x i64> %i.ah, ptr %i.p, align 8, !tbaa !56
  store <2 x i64> %i.am, ptr %i.t, align 8, !tbaa !56
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !156
  %i.an = load <2 x ptr>, ptr %i.j, align 8, !tbaa !161
  store <2 x ptr> %i.aj, ptr %i.j, align 8, !tbaa !161
  store <2 x ptr> %i.an, ptr %i.k, align 8, !tbaa !161
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !157
  store i64 %i.af, ptr %i.w, align 8, !tbaa !160
  invoke void @_ZN4Luau7TypeIds19clearWithoutReallocEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.m unwind label %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZSt4swapIN4Luau7TypeIdsEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.062, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.ao, %i.o
  br i1 %.not53, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.m, %.preheader55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !162
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !163
  invoke void @_ZN4Luau19IntersectionBuilderC1ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(89) %4, ptr %.sroa.04.0.copyload, ptr %.sroa.0.0.copyload)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.aq = invoke ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ar = invoke ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.o
  %.not5463 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not5463, label %._crit_edge66, label %.lr.ph65

._crit_edge66:                                    ; preds = %bb.q, %.preheader
  %i.as = invoke noundef ptr @_ZN4Luau19IntersectionBuilder5buildEv(ptr noundef nonnull align 8 dereferenceable(89) %4)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph65:                                         ; preds = %.preheader, %bb.q
  %.sroa.042.064 = phi ptr [ %i.av, %bb.q ], [ %i.aq, %.preheader ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.042.064, align 8, !tbaa !41
  invoke void @_ZN4Luau19IntersectionBuilder3addEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(89) %4, ptr noundef %i.au)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph65
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.042.064, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %i.av, %i.ar
  br i1 %.not54, label %._crit_edge66, label %.lr.ph65

bb.r:                                             ; preds = %._crit_edge66
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !157
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.s, %bb.r
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau19IntersectionBuilderD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #22
  br label %_ZN4Luau19IntersectionBuilderD2Ev.exit

_ZN4Luau19IntersectionBuilderD2Ev.exit:           ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.v

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph65, %bb.o, %bb.n, %._crit_edge66
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau19IntersectionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %4) #22
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.at, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split-lp57

bb.v:                                             ; preds = %.thread51, %_ZN4Luau19IntersectionBuilderD2Ev.exit
  %.3 = phi ptr [ %i.as, %_ZN4Luau19IntersectionBuilderD2Ev.exit ], [ %i.ab, %.thread51 ]
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !157
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.w, %bb.v
  %i.bl = load ptr, ptr %3, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i38, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i39, label %bb.y

bb.y:                                             ; preds = %_ZN4Luau7TypeIdsD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !157
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i39

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i39: ; preds = %bb.y, %_ZN4Luau7TypeIdsD2Ev.exit
  %i.bs = load ptr, ptr %2, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i40, label %_ZN4Luau7TypeIdsD2Ev.exit41, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i39
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit41

_ZN4Luau7TypeIdsD2Ev.exit41:                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i39, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.aa

.loopexit.split-lp57:                             ; preds = %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %bb.u ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp57.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn

bb.aa:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit41, %bb.d, %bb.b
  %.4 = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.d ], [ %.3, %_ZN4Luau7TypeIdsD2Ev.exit41 ]
  ret ptr %.4
}

declare noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN4Luau7TypeIds7reserveEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN4Luau12_GLOBAL__N_128intersectOneWithIntersectionERNS_14TypeSimplifierERNS_7TypeIdsES4_PKNS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Luau::Set", align 8         ; 8 uses
  %5 = alloca %"struct.Luau::TypeIterator.104", align 8 ; 15 uses
  %6 = alloca %"struct.Luau::TypeIterator.104", align 8 ; 11 uses
  %i.a = tail call noundef i64 @_ZNK4Luau7TypeIds5countEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %3, align 8, !tbaa !17
  %i.c = icmp eq i32 %i.b, 14
  br i1 %i.c, label %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.q

_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4Luau5beginEPKNS_16IntersectionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator.104") align 8 %5, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN4Luau3endEPKNS_16IntersectionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator.104") align 8 %6, ptr noundef nonnull %i.d)
          to label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit.preheader unwind label %bb.e

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit.preheader: ; preds = %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit: ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i
  %i.j = load i64, ptr %i.e, align 8, !tbaa !166
  %i.k = icmp eq i64 %i.j, 0                      ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !166
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.k, i1 true, i1 %i.m
  br i1 %brmerge.i.i, label %bb.d, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !167
  %i.o = load i64, ptr %i.g, align 8, !tbaa !168
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !167
  %i.r = load i64, ptr %i.h, align 8, !tbaa !168
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !171
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.x, %i.z
  %i.ab = select i1 %i.v, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.l, label %bb.f

bb.d:                                             ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.k, i1 %i.m, i1 false
  br i1 %.mux.i.i, label %bb.l, label %bb.f

bb.e:                                             ; preds = %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %.split, %bb.d
  invoke void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.ad = load ptr, ptr %5, align 8, !tbaa !167
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !168
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_16IntersectionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.noexc
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.4.0.copyload.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.aj)
          to label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEdeEv.exit: ; preds = %.noexc55
  %i.al = invoke fastcc noundef i32 @_ZN4Luau12_GLOBAL__N_128intersectOneWithIntersectionERNS_14TypeSimplifierERNS_7TypeIdsES4_PKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEdeEv.exit
  %.not51.not = icmp eq i32 %i.al, 0
  br i1 %.not51.not, label %bb.h, label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i, %.noexc55, %.noexc, %bb.f, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEdeEv.exit
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #22
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.e, align 8, !tbaa !166
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !168
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.ao = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bk, %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.ap = load ptr, ptr %5, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !56
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !56
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !172
  %i.av = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_16IntersectionTypeE(ptr noundef %i.au)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc58:                                         ; preds = %bb.i
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %.not.i.i57 = icmp ult i64 %i.aw, %i.bd
  br i1 %.not.i.i57, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc58
  %i.be = load i64, ptr %i.g, align 8, !tbaa !168
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bf, ptr %i.g, align 8, !tbaa !168
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !166
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !166
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !173
  %i.bj = icmp eq i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.g, align 8, !tbaa !168
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bk = phi i64 [ 0, %bb.k ], [ %i.bf, %bb.j ]
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i, label %bb.i

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc58, %bb.h
  invoke void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.split, %bb.d, %bb.g
  %spec.select = phi i32 [ 0, %.split ], [ 0, %bb.d ], [ 1, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !177 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #22
  br label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.bo = load ptr, ptr %6, align 8, !tbaa !167
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !173
  %i.br = shl i64 %i.bq, 4
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !177 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i60, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #22
  br label %bb.p

common.resume:                                    ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ce, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.p:                                             ; preds = %bb.n, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit
  %i.bu = load ptr, ptr %5, align 8, !tbaa !167
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !173
  %i.bw = shl i64 %i.bv, 4
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit

bb.q:                                             ; preds = %bb.c, %bb.b
  %i.bx = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3)
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.by = tail call ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %i.bz = tail call ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not7882 = icmp eq ptr %i.by, %i.bz
  br i1 %.not7882, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.063.083 = phi ptr [ %i.by, %.lr.ph ], [ %i.ck, %bb.ac ] ; 2 uses
  %i.cb = load ptr, ptr %.sroa.063.083, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i64 0, ptr %i.ca, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.cc = invoke noundef i32 @_ZN4Luau6relateEPKNS_4TypeES2_RNS_3SetISt4pairIS2_S2_ENS_12TypePairHashEEE(ptr noundef %3, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau6relateEPKNS_4TypeES2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #22
  br label %_ZN4Luau6relateEPKNS_4TypeES2_.exit

bb.w:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #22
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZN4Luau6relateEPKNS_4TypeES2_.exit:              ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  switch i32 %i.cc, label %bb.ac [
    i32 0, label %.loopexit
    i32 3, label %.sink.split
    i32 1, label %bb.y
    i32 4, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  br label %.sink.split

bb.z:                                             ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  %i.cg = call { ptr, i8 } @_ZN4Luau14TypeSimplifier14basicIntersectEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %3, ptr noundef %i.cb) ; 2 uses
  %i.ch = extractvalue { ptr, i8 } %i.cg, 1
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cj = extractvalue { ptr, i8 } %i.cg, 0
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %bb.aa, %bb.ab, %bb.y
  %.sink = phi ptr [ %i.cj, %bb.aa ], [ %i.cb, %bb.y ], [ %i.cb, %bb.ab ], [ %3, %_ZN4Luau6relateEPKNS_4TypeES2_.exit ]
  call void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %.sink)
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZN4Luau6relateEPKNS_4TypeES2_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.063.083, i64 8 ; 2 uses
  %.not78 = icmp eq ptr %i.ck, %i.bz
  br i1 %.not78, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %bb.ac, %_ZN4Luau6relateEPKNS_4TypeES2_.exit, %bb.s, %bb.p, %bb.a, %bb.r
  %.7 = phi i32 [ %spec.select, %bb.p ], [ 0, %bb.r ], [ 0, %bb.a ], [ 0, %bb.s ], [ 0, %bb.ac ], [ 1, %_ZN4Luau6relateEPKNS_4TypeES2_.exit ]
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
  br label %bb.ad

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
  %.033 = phi i1 [ %.134.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 3 uses
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
  br i1 %i.ax, label %.loopexit77, label %bb.i

bb.e:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %.mux.i.i, label %.loopexit77, label %bb.i

bb.f:                                             ; preds = %bb.y, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.g:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %.split, %bb.e
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !26
  %i.bc = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.4.0.copyload.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bi = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.bh)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc61
  %i.bj = invoke noundef ptr @_ZN4Luau14TypeSimplifier9intersectEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2, ptr noundef %i.bi)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.j:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %i.bk = icmp ne ptr %i.bj, %i.bi
  %i.bl = or i1 %.033, %i.bk
  %.not.i.i63 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !17
  %i.bn = icmp eq i32 %i.bm, 17
  br i1 %i.bn, label %bb.q, label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, %.noexc61, %.noexc, %bb.i, %bb.m, %bb.l, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN4Luau12UnionBuilder3addEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(89) %3, ptr noundef %i.bj)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke noundef i64 @_ZNK4Luau12UnionBuilder4sizeEv(ptr noundef nonnull align 8 dereferenceable(89) %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp ugt i64 %i.bo, %i.h
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.sroa.03.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !162
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %1, ptr %i.b, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.bq, align 8, !tbaa !41
  %i.br = invoke noundef ptr @_ZN4Luau15addIntersectionENS_7NotNullINS_9TypeArenaEEENS0_INS_12BuiltinTypesEEESt16initializer_listIPKNS_4TypeEE(ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr nonnull %i.b, i64 2)
          to label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.loopexit.split-lp

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.loopexit77

bb.q:                                             ; preds = %bb.n, %bb.k
  %.134.ph = phi i1 [ true, %bb.k ], [ %i.bl, %bb.n ]
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %.pre.i.i = load i64, ptr %i.ac, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.bv = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cr, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !56
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !56
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.cc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.cb)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc65:                                         ; preds = %bb.r
  %i.cd = load i64, ptr %i.by, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !40
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  %.not.i.i64 = icmp ult i64 %i.cd, %i.ck
  br i1 %.not.i.i64, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc65
  %i.cl = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  store i64 %i.cm, ptr %i.ac, align 8, !tbaa !27
  %i.cn = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.aa, align 8, !tbaa !25
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.cq = icmp eq i64 %i.cm, %i.cp
  br i1 %i.cq, label %bb.t, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.t, %bb.s
  %i.cr = phi i64 [ 0, %bb.t ], [ %i.cm, %bb.s ]
  %i.cs = icmp eq i64 %i.co, 0
  br i1 %i.cs, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.r

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc65, %bb.q
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit77:                                      ; preds = %bb.e, %.split, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
  %.2.mux = phi ptr [ %i.br, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %1, %.split ], [ %1, %bb.e ]
  %6 = phi i1 [ false, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %.033, %.split ], [ %.033, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit77
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %.loopexit77, %bb.u
  %i.cv = load ptr, ptr %5, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !37
  %i.cy = shl i64 %i.cx, 4
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i67, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.da) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.v
  %i.db = load ptr, ptr %4, align 8, !tbaa !26
  %i.dc = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.dd = shl i64 %i.dc, 4
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.dd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %6, label %bb.y, label %bb.z

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p
  %.pn55 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #22
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.h
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %.loopexit.split-lp ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.g
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.w ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ac

bb.y:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68
  %i.de = invoke noundef ptr @_ZN4Luau12UnionBuilder5buildEv(ptr noundef nonnull align 8 dereferenceable(89) %3)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68, %bb.y
  %.3 = phi ptr [ %i.de, %bb.y ], [ %.2.mux, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit68 ]
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !157
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau12UnionBuilderD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #22
  br label %_ZN4Luau12UnionBuilderD2Ev.exit

_ZN4Luau12UnionBuilderD2Ev.exit:                  ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %bb.f
  %.pn59 = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %.pn55.pn.pn, %bb.x ]
  call void @_ZN4Luau12UnionBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn59

bb.ad:                                            ; preds = %_ZN4Luau12UnionBuilderD2Ev.exit, %bb.a
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
  br label %.body132

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
  br label %.body132

bb.k:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.w, ptr %i.c, align 8, !tbaa !41
  %i.aa = icmp eq ptr %i.s, %i.w
  br i1 %i.aa, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit, label %bb.n

bb.l:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.m:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4Luau9TypeArena7addTypeINS_16IntersectionTypeEEEPKNS_4TypeET_:bb.a
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
  %.034 = phi i1 [ %.337.ph, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ false, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 5 uses
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
  br label %bb.ab

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.f:                                             ; preds = %.split, %bb.c
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.al = load ptr, ptr %5, align 8, !tbaa !26
  %i.am = load i64, ptr %i.l, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ao = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.4.0.copyload.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ar)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

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
  switch i32 %i.at, label %bb.u [
    i32 0, label %bb.l
    i32 1, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
    i32 4, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
    i32 3, label %bb.m
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %2)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.k, %bb.k
  %i.ax = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !140 ; 2 uses
  %i.ba = icmp eq ptr %i.as, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141 ; 2 uses
  br i1 %i.ba, label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = icmp eq ptr %i.as, %i.bc
  br i1 %i.bd, label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.as, align 8, !tbaa !17
  %i.bf = icmp eq i32 %i.be, 18
  br i1 %i.bf, label %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, label %bb.q

_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.bh)
          to label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !143
  %i.bk = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_12NegationTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.bj, ptr %i.as)
          to label %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit: ; preds = %bb.n, %bb.m, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.q
  %.1.i = phi ptr [ %i.az, %bb.n ], [ %i.bi, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i ], [ %i.bc, %bb.m ], [ %i.bk, %bb.q ]
  %i.bl = invoke noundef ptr @_ZN4Luau14TypeSimplifier25intersectTypeWithNegationEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %.1.i, ptr noundef %2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.r:                                             ; preds = %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit
  %i.bm = icmp ne ptr %i.bl, %2
  %8 = or i1 %.034, %i.bm
  %.not.i.i56 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !17
  %i.bo = icmp eq i32 %i.bn, 17
  br i1 %i.bo, label %bb.u, label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, %bb.q, %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit.i, %.noexc52, %.noexc, %bb.f, %bb.l, %bb.t, %_ZNK4Luau14TypeSimplifier10mkNegationEPKNS_4TypeE.exit
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #22
  br label %bb.aa

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @_ZN4Luau7TypeIds6insertEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %i.bl)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.k, %bb.k
  %i.bp = load ptr, ptr %0, align 8, !tbaa !123
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !151
  br label %.loopexit77

bb.u:                                             ; preds = %bb.t, %bb.k, %bb.l, %bb.s
  %.337.ph = phi i1 [ true, %bb.s ], [ %8, %bb.t ], [ %.034, %bb.l ], [ %.034, %bb.k ]
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.bu = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cq, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.bv = load ptr, ptr %5, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !56
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !56
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.cb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.ca)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc58:                                         ; preds = %bb.v
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !58
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !40
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %.not.i.i57 = icmp ult i64 %i.cc, %i.cj
  br i1 %.not.i.i57, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.w

bb.w:                                             ; preds = %.noexc58
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !27
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.l, align 8, !tbaa !27
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !25
  %i.cn = add i64 %i.cm, -1                       ; 2 uses
  store i64 %i.cn, ptr %i.j, align 8, !tbaa !25
  %i.co = load i64, ptr %i.p, align 8, !tbaa !37
  %i.cp = icmp eq i64 %i.cl, %i.co
  br i1 %i.cp, label %bb.x, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.l, align 8, !tbaa !27
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cq = phi i64 [ 0, %bb.x ], [ %i.cl, %bb.w ]
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.v

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc58, %bb.u
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit77:                                      ; preds = %bb.c, %.split, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
  %.0.i.i111 = phi i1 [ false, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %.034, %.split ], [ %.034, %bb.c ]
  %.241.mux = phi ptr [ %i.br, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %2, %.split ], [ %2, %bb.c ]
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i60, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit77
  call void @_ZdlPv(ptr noundef nonnull %i.ct) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %.loopexit77, %bb.y
  %i.cu = load ptr, ptr %6, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !37
  %i.cx = shl i64 %i.cw, 4
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i61, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62, label %bb.z

bb.z:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #22
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.z
  %i.da = load ptr, ptr %5, align 8, !tbaa !26
  %i.db = load i64, ptr %i.p, align 8, !tbaa !37
  %i.dc = shl i64 %i.db, 4
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i111, label %bb.ac, label %_ZN4Luau7TypeIdsD2Ev.exit

bb.aa:                                            ; preds = %.body, %bb.e
  %.pn46.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.d
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %bb.aa ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aj

bb.ac:                                            ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62
  %i.dd = load ptr, ptr %4, align 8, !tbaa !155
  store ptr %i.dd, ptr %7, align 8, !tbaa !155
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = load <2 x i64>, ptr %i.df, align 8, !tbaa !56
  store <2 x i64> %i.dg, ptr %i.de, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !156
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.i, align 8, !tbaa !161
  store <2 x ptr> %i.dl, ptr %i.dk, align 8, !tbaa !161
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !157
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !160
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !160
  %i.ds = invoke noundef ptr @_ZN4Luau14TypeSimplifier18intersectFromPartsENS_7TypeIdsE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 %7)
          to label %bb.ad unwind label %bb.ag     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !157
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.ae, %bb.ad
  %i.dy = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i64, label %_ZN4Luau7TypeIdsD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dy) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit

bb.ag:                                            ; preds = %bb.ac
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %7) #22
  br label %bb.aj

_ZN4Luau7TypeIdsD2Ev.exit:                        ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62, %bb.af, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  %.342 = phi ptr [ %i.ds, %bb.af ], [ %.241.mux, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit62 ], [ %i.ds, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i ]
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66, label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !157
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66: ; preds = %bb.ah, %_ZN4Luau7TypeIdsD2Ev.exit
  %i.eg = load ptr, ptr %4, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i67, label %_ZN4Luau7TypeIdsD2Ev.exit68, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66
  call void @_ZdlPv(ptr noundef nonnull %i.eg) #22
  br label %_ZN4Luau7TypeIdsD2Ev.exit68

_ZN4Luau7TypeIdsD2Ev.exit68:                      ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i66, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %.342

bb.aj:                                            ; preds = %bb.ag, %bb.ab
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.ab ], [ %i.dz, %bb.ag ]
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
  br label %bb.di

bb.b:                                             ; preds = %_ZN4Luau3getINS_12NegationTypeEEEPKT_PKNS_4TypeE.exit
  %.not.i.i143 = icmp eq ptr %i.d, null           ; 2 uses
  br i1 %.not.i.i143, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !17
  %i.j = icmp eq i32 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.j, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.am

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
  br label %bb.ac

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %.split, %bb.e
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %.noexc unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc144 unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %.noexc
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.sroa.4.0.copyload.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.av = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.au)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

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

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit4.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  switch i32 %i.aw, label %bb.v [
    i32 1, label %bb.u
    i32 4, label %bb.u
end_hunk_2
