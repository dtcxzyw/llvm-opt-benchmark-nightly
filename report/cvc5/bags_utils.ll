Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bags_utils?download=true
inline.NumInlined: 2283
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory4bags9BagsUtils21constructProductTupleENS0_12NodeTemplateILb0EEES5_S5_:bb.a
  %.pn21.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn, %bb.bz ], [ %i.gr, %bb.bg ], [ %i.gq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn21.pn.pn.pn.pn.pn.pn
}

declare void @_ZN4cvc58internal6theory9datatypes10TupleUtils12concatTuplesENS0_8TypeNodeENS0_12NodeTemplateILb1EEES6_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory4bags9BagsUtils21splitTableJoinIndicesENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.203") align 8 %0, ptr noundef nonnull align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::ProjectOp", align 8 ; 10 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.std::vector.205", align 8   ; 12 uses
  %5 = alloca %"class.std::vector.205", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %3, align 8, !tbaa !25
  %i.b = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit unwind label %bb.o ; 3 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i, label %.noexc24, label %bb.b

bb.b:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !27

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %.pre50 = load ptr, ptr %i.c, align 8, !tbaa !60
  %.pre51 = ptrtoint ptr %.pre50 to i64
  %.pre52 = ptrtoint ptr %.pre to i64
  br label %.noexc24

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit
  %.pre-phi53 = phi i64 [ %.pre52, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge ], [ %i.g, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit ]
  %.pre-phi = phi i64 [ %.pre51, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge ], [ %i.f, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge ], [ %i.e, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc24_crit_edge ], [ null, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_9ProjectOpEEERKT_v.exit ] ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58
  %i.p = sub i64 %.pre-phi, %.pre-phi53           ; 4 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc24
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.k, align 4, !tbaa !61
  store i32 %i.s, ptr %i.l, align 4, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !59
  %i.u = load ptr, ptr %3, align 8, !tbaa !25     ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.w, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.x = add i64 %i.v, 1152920405095219200
  %i.y = and i64 %i.x, 1152920405095219200        ; 2 uses
  %i.z = and i64 %i.v, -1152920405095219201
  %i.aa = or disjoint i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.u, align 8
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !27

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProjectOp10getIndicesEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.p       ; 3 uses

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2                 ; 3 uses
  %i.am = lshr i64 %i.al, 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.an = icmp ugt i64 %i.al, 4611686018427387903
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
          to label %.noexc25 unwind label %bb.q

.noexc25:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = shl nuw nsw i64 %i.am, 2                ; 2 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc26 unwind label %bb.q   ; 11 uses

.noexc26:                                         ; preds = %bb.l
  store ptr %i.ap, ptr %4, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !58
  store i32 0, ptr %i.ap, align 4, !tbaa !61
  %i.as = getelementptr i8, ptr %i.ap, i64 4      ; 3 uses
  %i.at = add nsw i64 %i.am, -1                   ; 3 uses
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.au, label %bb.m, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc26
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.at, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %.noexc26, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.av, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.as, %.noexc26 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.aw, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc34 unwind label %bb.r   ; 11 uses

.noexc34:                                         ; preds = %bb.m
  store ptr %i.ax, ptr %5, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.am
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !58
  store i32 0, ptr %i.ax, align 4, !tbaa !61
  %i.ba = getelementptr i8, ptr %i.ax, i64 4      ; 3 uses
  br i1 %i.au, label %.lr.ph, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29: ; preds = %.noexc34
  %.idx.i.i.i.i.i.i.i30 = shl nuw nsw i64 %i.at, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %.idx.i.i.i.i.i.i.i30, i1 false), !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i30
  br label %.lr.ph

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29, %.noexc34
  %.0.i.i.i.i.i31.ph = phi ptr [ %i.bb, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29 ], [ %i.ba, %.noexc34 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i31.ph, ptr %i.bc, align 8, !tbaa !59
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 8 uses
  %i.be = add nsw i64 %i.am, -1                   ; 2 uses
  %i.bf = lshr i64 %i.be, 1                       ; 5 uses
  %i.bg = add nuw i64 %i.bf, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 94
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bh = shl i64 %i.bf, 2
  %i.bi = add i64 %i.bh, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.bi ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bj = shl i64 %i.bf, 3
  %i.bk = getelementptr i8, ptr %i.bd, i64 %i.bj
  %scevgep69 = getelementptr i8, ptr %i.bk, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.ap, %scevgep68
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound070 = icmp ult ptr %i.ap, %scevgep69
  %bound171 = icmp ult ptr %i.bd, %scevgep
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx = or i1 %found.conflict, %found.conflict72
  %bound073 = icmp ult ptr %i.ax, %scevgep69
  %bound174 = icmp ult ptr %i.bd, %scevgep68
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx, %found.conflict75
  br i1 %conflict.rdx76, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -8                      ; 4 uses
  %i.bl = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bm = shl nuw i64 %index, 1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %wide.vec = load <8 x i32>, ptr %i.bn, align 4, !tbaa !61, !alias.scope !386 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec77 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec78 = load <8 x i32>, ptr %i.bp, align 4, !tbaa !61, !alias.scope !386 ; 2 uses
  %strided.vec79 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x i32> %strided.vec, ptr %i.bq, align 4, !tbaa !61, !alias.scope !387, !noalias !388
  store <4 x i32> %strided.vec79, ptr %i.br, align 4, !tbaa !61, !alias.scope !387, !noalias !388
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %strided.vec77, ptr %i.bs, align 4, !tbaa !61, !alias.scope !389, !noalias !386
  store <4 x i32> %strided.vec80, ptr %i.bt, align 4, !tbaa !61, !alias.scope !389, !noalias !386
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.049.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.01448.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.bl, %middle.block ] ; 3 uses
  %i.bv = and i64 %i.be, 2
  %lcmp.mod.not.not = icmp eq i64 %i.bv, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.01448.ph ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !61
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.049.ph
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !61
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.049.ph
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !61
  %i.cc = add nuw i64 %.01448.ph, 2
  %i.cd = or disjoint i64 %.049.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.049.unr = phi i64 [ %.049.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %.01448.unr = phi i64 [ %.01448.ph, %scalar.ph.preheader ], [ %i.cc, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %i.bf, %.049.ph
  br i1 %i.ce, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.n
  invoke void @_ZNSt4pairISt6vectorIjSaIjEES2_EC2IRS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZSt9make_pairIRSt6vectorIjSaIjEES3_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit unwind label %bb.v

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN4cvc58internal9ProjectOpD2Ev.exit45

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

bb.r:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit41

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.049 = phi i64 [ %i.cy, %scalar.ph ], [ %.049.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.01448 = phi i64 [ %i.cx, %scalar.ph ], [ %.01448.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.01448 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !61
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.049
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !61
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.049
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !61
  %i.cp = add nuw nsw i64 %.049, 1                ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.01448 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !61
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cp
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !61
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cp
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !61
  %i.cx = add nuw i64 %.01448, 4
  %i.cy = add nuw nsw i64 %.049, 2
  %exitcond.not.1 = icmp eq i64 %i.cp, %i.bf
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !385

_ZSt9make_pairIRSt6vectorIjSaIjEES3_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit: ; preds = %._crit_edge
  %i.cz = load ptr, ptr %5, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt9make_pairIRSt6vectorIjSaIjEES3_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !58
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZSt9make_pairIRSt6vectorIjSaIjEES3_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.df = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIjSaIjEED2Ev.exit38, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit38

_ZNSt6vectorIjSaIjEED2Ev.exit38:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dl = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i39, label %_ZN4cvc58internal9ProjectOpD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit38
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #25
  br label %_ZN4cvc58internal9ProjectOpD2Ev.exit

_ZN4cvc58internal9ProjectOpD2Ev.exit:             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit38, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.v:                                             ; preds = %._crit_edge
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %5, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIjSaIjEED2Ev.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !58
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit41

_ZNSt6vectorIjSaIjEED2Ev.exit41:                  ; preds = %bb.w, %bb.v, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.r ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dx = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit43, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit41
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !58
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %bb.x, %_ZNSt6vectorIjSaIjEED2Ev.exit41, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.q ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit41 ], [ %.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit43, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit43 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ed = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i44, label %_ZN4cvc58internal9ProjectOpD2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !58
end_hunk_0
