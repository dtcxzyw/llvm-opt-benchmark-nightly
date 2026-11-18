Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii.omp_outlined:bb.a

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !224
  %i.m = load ptr, ptr %3, align 8, !tbaa !224
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !203
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 4, !tbaa !203
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.t = load i32, ptr %i.b, align 4, !tbaa !203
  %i.u = sext i32 %i.t to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !203    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.h = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !203
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !203
  %i.k = load i32, ptr %i.a, align 4, !tbaa !203  ; 3 uses
  %.not14 = icmp sgt i32 %i.k, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !307    ; 8 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !307    ; 8 uses
  %i.n = sext i32 %i.k to i64                     ; 6 uses
  %i.o = add nsw i32 %i.j, 1
  %i.p = sub i32 %i.j, %i.k                       ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.s = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = add nsw i64 %i.n, %i.q
  %i.v = shl nsw i64 %i.u, 3
  %i.w = add nsw i64 %i.v, 8                      ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.l, i64 %i.s
  %i.z = getelementptr i8, ptr %i.l, i64 %i.w
  %bound0 = icmp ult ptr %i.t, %i.z
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 8589934588               ; 3 uses
  %i.aa = add nsw i64 %n.vec, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %index, %i.n                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x i64>, ptr %i.ac, align 8, !tbaa !251, !alias.scope !384
  %wide.load22 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !251, !alias.scope !384
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ab ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load23 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %wide.load24 = load <2 x i64>, ptr %i.af, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %i.ag = add nsw <2 x i64> %wide.load23, %wide.load
  %i.ah = add nsw <2 x i64> %wide.load24, %wide.load22
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.aa, %middle.block ] ; 3 uses
  %i.aj = add i32 %i.j, 1
  %i.ak = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = sub i32 %i.j, %i.ak
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !251
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.prol ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !251
  %i.ar = add nsw i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !251
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !382

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp ult i32 %i.am, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !251
  %i.av = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !251
  %i.ax = add nsw i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !251
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !251
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !251
  %i.bc = add nsw i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !251
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !251
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.1 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !251
  %i.bh = add nsw i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !251
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !251
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.2 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !251
  %i.bm = add nsw i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !251
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.o, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !383

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 23 uses
  %7 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %8 = alloca %"class.std::vector.40", align 16   ; 21 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.35", align 8    ; 12 uses
  %10 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %12 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !309
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 1, ptr %i.i, align 8, !tbaa !310
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !393
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.s = sext i32 %3 to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !199, !noalias !395
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !177, !noalias !395 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !178, !noalias !395 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !292

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33
          to label %.noexc60 unwind label %bb.j

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !224, !noalias !395 ; 2 uses
  %.pre1.i = load ptr, ptr %i.v, align 8, !tbaa !224, !noalias !395
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc60, %bb.b
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc60 ], [ %i.z, %bb.b ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc60 ], [ %i.y, %bb.b ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %.noexc60 ], [ %i.x, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc60 ], [ null, %bb.b ] ; 10 uses
  %i.af = sub i64 %.pre-phi.i, %.pre-phi4.i       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !291

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ad, i64 %i.af, i1 false), !noalias !395
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !203, !noalias !395
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !203, !noalias !395
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %6, ptr %5, align 8, !tbaa !397
  %.not6.i.i.i = icmp ne i64 %.pre-phi.i, %.pre-phi4.i ; 3 uses
  br i1 %.not6.i.i.i, label %.lr.ph.i.i.i, label %.loopexit284

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc61
  %.sroa.03.07.i.i.i = phi ptr [ %i.al, %.noexc61 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc61 unwind label %bb.k   ; 0 uses

.noexc61:                                         ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i, label %.loopexit284, label %.lr.ph.i.i.i, !llvm.loop !388

.loopexit284:                                     ; preds = %.noexc61, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !394 ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !394 ; 2 uses
  %.not290 = icmp eq ptr %i.am, %i.an
  br i1 %.not290, label %._crit_edge, label %.lr.ph292

.lr.ph292:                                        ; preds = %.loopexit284
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.at = lshr exact i64 %i.af, 2
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %.loopexit284
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.l:                                             ; preds = %.lr.ph292, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %.sroa.0221.0291 = phi ptr [ %i.am, %.lr.ph292 ], [ %i.fe, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !309
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !310
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !310
  store ptr null, ptr %i.ap, align 8, !tbaa !311
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !312
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !312
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !399
  store ptr null, ptr %i.as, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %7, ptr %4, align 8, !tbaa !397
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0221.0291, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bd = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not6.i.i.i64 = icmp eq ptr %i.bd, null
  %or.cond = select i1 %.not6.i.i.i, i1 true, i1 %.not6.i.i.i64
  br i1 %or.cond, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.m, %.noexc68
  %.sroa.03.07.i.i.i66 = phi ptr [ %i.ck, %.noexc68 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i66, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !312
  %.not.not.i = icmp eq i64 %i.bf, 0
  %i.bg = load i32, ptr %i.be, align 4            ; 5 uses
  br i1 %.not.not.i, label %.preheader441, label %.thread34.i

.thread34.i:                                      ; preds = %.lr.ph.i.i.i65
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.bj = urem i64 %i.bh, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !309
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i158, label %.critedge.i, label %bb.p

.preheader441:                                    ; preds = %.lr.ph.i.i.i65, %bb.n
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.n ], [ %i.j, %.lr.ph.i.i.i65 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !311 ; 3 uses
  %.not.i160 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i160, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader441
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !203
  %i.bp = icmp eq i32 %i.bg, %i.bo
  br i1 %i.bp, label %.noexc68, label %.preheader441, !llvm.loop !389

bb.o:                                             ; preds = %.preheader441
  %i.bq = sext i32 %i.bg to i64                   ; 2 uses
  %i.br = load i64, ptr %i.i, align 8, !tbaa !310
  %i.bs = urem i64 %i.bq, %i.br
  br label %.critedge.i

end_hunk_0
begin_hunk_1_@_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %._crit_edge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ff = load ptr, ptr %1, align 8, !tbaa !316
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !400 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 3 uses
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.aj, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc80 unwind label %bb.aq

.noexc80:                                         ; preds = %bb.aj
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i79 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i79, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i, label %bb.ak

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #33
          to label %.noexc81 unwind label %bb.aq  ; 5 uses

.noexc81:                                         ; preds = %bb.ak
  store ptr %i.fl, ptr %8, align 16, !tbaa !225
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !401
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fn, ptr %i.fo, align 16, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fl, i8 0, i64 %i.fi, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %.noexc81, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i
  %i.fp = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fl, %.noexc81 ] ; 2 uses
  %i.fq = phi ptr [ %i.fk, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fm, %.noexc81 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fn, %.noexc81 ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.fq, align 8, !tbaa !401
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !402 ; 3 uses
  %i.ft = fcmp ult double %i.fs, 1.000000e+00
  br i1 %i.ft, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fx = load ptr, ptr %1, align 8, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !400 ; 3 uses
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = icmp slt i32 %i.fz, 0
  br i1 %i.gb, label %bb.ao, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc86 unwind label %bb.ar

.noexc86:                                         ; preds = %bb.ao
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82: ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.i.i83, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85, label %bb.ap

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.cu

bb.ap:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #33
          to label %.noexc87 unwind label %bb.ar  ; 4 uses

.noexc87:                                         ; preds = %bb.ap
  store ptr %i.gd, ptr %0, align 8, !tbaa !225
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !401
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gd, i8 1, i64 %i.ga, i1 false)
  %.pr.pre = load ptr, ptr %8, align 16, !tbaa !225
  br label %bb.cu

bb.aq:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit157

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.as:                                            ; preds = %bb.am
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %.not255293 = icmp eq ptr %i.gj, null
  %i.gk = insertelement <2 x ptr> poison, ptr %i.fp, i64 0
  %i.gl = insertelement <2 x ptr> %i.gk, ptr %.0.i.i.i.i.i.i.i, i64 1
  br i1 %.not255293, label %._crit_edge297, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %bb.as
  %.pre324 = load ptr, ptr %1, align 8, !tbaa !316
  br label %.lr.ph296

._crit_edge297.loopexit:                          ; preds = %bb.au
  %i.gm = load <2 x ptr>, ptr %8, align 16, !tbaa !403
  %.phi.trans.insert327 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre328 = load ptr, ptr %.phi.trans.insert327, align 16, !tbaa !281
  br label %._crit_edge297

._crit_edge297:                                   ; preds = %._crit_edge297.loopexit, %bb.as
  %i.gn = phi ptr [ %.pre328, %._crit_edge297.loopexit ], [ %.0.i.i.i.i.i.i.i, %bb.as ]
  %i.go = phi <2 x ptr> [ %i.gm, %._crit_edge297.loopexit ], [ %i.gl, %bb.as ]
  store <2 x ptr> %i.go, ptr %0, align 8, !tbaa !403
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !281
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %bb.au
  %i.gq = phi ptr [ %i.hc, %bb.au ], [ %.pre324, %.lr.ph296.preheader ] ; 2 uses
  %.sroa.0207.0294 = phi ptr [ %i.hd, %bb.au ], [ %i.gj, %.lr.ph296.preheader ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0207.0294, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !203
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gu = sext i32 %i.gs to i64
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !178
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !203 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph296
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = load ptr, ptr %8, align 16, !tbaa !225
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 1, ptr %i.hb, align 1, !tbaa !226
  %.pre = load ptr, ptr %1, align 8, !tbaa !316
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph296
  %i.hc = phi ptr [ %.pre, %bb.at ], [ %i.gq, %.lr.ph296 ]
  %i.hd = load ptr, ptr %.sroa.0207.0294, align 8, !tbaa !311 ; 2 uses
  %.not255 = icmp eq ptr %i.hd, null
  br i1 %.not255, label %._crit_edge297.loopexit, label %.lr.ph296

bb.av:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !404, !range !154, !noundef !155
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.aw, label %bb.bu

bb.aw:                                            ; preds = %bb.av
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !177 ; 3 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !178 ; 3 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2                 ; 2 uses
  %i.hp = trunc i64 %i.ho to i32
  %.sroa.speculated5.i = call i32 @llvm.smin.i32(i32 %i.hp, i32 1)
  %i.hq = uitofp i64 %i.ho to double
  %i.hr = fmul double %i.fs, %i.hq
  %i.hs = fadd double %i.hr, 5.000000e-01
  %i.ht = fptosi double %i.hs to i32
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i, i32 %i.ht) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.hv = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %bb.bi, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %.not257302 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not257302, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.preheader
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ax

._crit_edge305.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %13 = ptrtoint ptr %i.jz to i64
  %i.ib = ptrtoint ptr %i.jx to i64
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.loopexit, %.preheader
  %.pre333 = phi i64 [ %i.ib, %._crit_edge305.loopexit ], [ 0, %.preheader ] ; 2 uses
  %14 = phi i64 [ %13, %._crit_edge305.loopexit ], [ 0, %.preheader ]
  %i.ic = sub i64 %14, %.pre333
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = trunc i64 %i.id to i32
  %.sroa.speculated194 = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.ie)
  br label %bb.bi

bb.ax:                                            ; preds = %.lr.ph304, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.if = phi ptr [ null, %.lr.ph304 ], [ %i.jx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.ig = phi ptr [ null, %.lr.ph304 ], [ %i.jy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ih = phi ptr [ null, %.lr.ph304 ], [ %i.jz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.sroa.0200.0303 = phi ptr [ %i.hk, %.lr.ph304 ], [ %i.ka, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ii = load i32, ptr %.sroa.0200.0303, align 4, !tbaa !203 ; 3 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !178
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ij
  %i.im = load i64, ptr %i.hy, align 8, !tbaa !312
  %.not.not.i.i.i89 = icmp eq i64 %i.im, 0
  %i.in = load i32, ptr %i.il, align 4            ; 4 uses
  br i1 %.not.not.i.i.i89, label %.preheader431, label %bb.az

.preheader431:                                    ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.in.i.i.i99 = phi ptr [ %.sroa.06.0.i.i.i100, %bb.ay ], [ %i.j, %bb.ax ]
  %.sroa.06.0.i.i.i100 = load ptr, ptr %.sroa.06.0.in.i.i.i99, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.06.0.i.i.i100, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ay

bb.ay:                                            ; preds = %.preheader431
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i100, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !203
  %i.iq = icmp eq i32 %i.in, %i.ip
  br i1 %i.iq, label %.loopexit, label %.preheader431, !llvm.loop !391

bb.az:                                            ; preds = %bb.ax
  %i.ir = sext i32 %i.in to i64
  %i.is = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.it = urem i64 %i.ir, %i.is                   ; 2 uses
  %i.iu = load ptr, ptr %6, align 8, !tbaa !309
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i90, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !311 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !203
  %i.ja = icmp eq i32 %i.in, %i.iz
  br i1 %i.ja, label %.loopexit, label %.lr.ph.i.i.i.i.i91

bb.bb:                                            ; preds = %bb.bc
  %i.jb = icmp eq i32 %i.in, %i.je
  br i1 %i.jb, label %.loopexit, label %.lr.ph.i.i.i.i.i91, !llvm.loop !392

.lr.ph.i.i.i.i.i91:                               ; preds = %bb.ba, %bb.bb
  %.020.i.i.i.i.i92 = phi ptr [ %i.jc, %bb.bb ], [ %i.ix, %bb.ba ]
  %i.jc = load ptr, ptr %.020.i.i.i.i.i92, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i93 = icmp eq ptr %i.jc, null
  br i1 %.not18.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i91
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !203 ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = urem i64 %i.jf, %i.is
  %.not19.i.i.i.i.i94 = icmp eq i64 %i.jg, %i.it
  br i1 %.not19.i.i.i.i.i94, label %bb.bb, label %..loopexit_crit_edge21.i.i.i.i.i95, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i95:               ; preds = %bb.bc
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !392

.loopexit:                                        ; preds = %bb.bb, %bb.ay, %bb.ba
  %.not.i = icmp eq ptr %i.ih, %i.ig
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !203
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  store ptr %i.jh, ptr %i.hz, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.be:                                            ; preds = %.loopexit
  %i.ji = ptrtoint ptr %i.ig to i64
  %i.jj = ptrtoint ptr %i.if to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 6 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775804
  br i1 %i.jl, label %bb.bf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.jm = ashr exact i64 %i.jk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 2305843009213693951)
  %i.jq = select i1 %i.jo, i64 2305843009213693951, i64 %i.jp ; 3 uses
  %.not.i.i.i103 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i103)
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #33
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jk ; 2 uses
  store i32 %i.ii, ptr %i.jt, align 4, !tbaa !203
  %i.ju = icmp sgt i64 %i.jk, 0
  br i1 %i.ju, label %bb.bg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bg:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %i.if, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bg, %.noexc105
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.js, ptr %9, align 8, !tbaa !178
  store ptr %i.jv, ptr %i.hz, align 8, !tbaa !177
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jq ; 2 uses
  store ptr %i.jw, ptr %i.ia, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.bf
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.lr.ph.i.i.i.i.i91, %.preheader431, %bb.az, %..loopexit_crit_edge21.i.i.i.i.i95, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bd
  %i.jx = phi ptr [ %i.if, %.preheader431 ], [ %i.if, %bb.bd ], [ %i.if, %bb.az ], [ %i.if, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.if, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.jy = phi ptr [ %i.ig, %.preheader431 ], [ %i.ig, %bb.bd ], [ %i.ig, %bb.az ], [ %i.ig, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ig, %.lr.ph.i.i.i.i.i91 ]
  %i.jz = phi ptr [ %i.ih, %.preheader431 ], [ %i.jh, %bb.bd ], [ %i.ih, %bb.az ], [ %i.ih, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ih, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0200.0303, i64 4 ; 2 uses
  %.not257 = icmp eq ptr %i.ka, %i.hj
  br i1 %.not257, label %._crit_edge305.loopexit, label %bb.ax

bb.bi:                                            ; preds = %bb.aw, %._crit_edge305
  %.pre-phi = phi i64 [ %i.hm, %bb.aw ], [ %.pre333, %._crit_edge305 ]
  %.0236 = phi i32 [ %.sroa.speculated.i, %bb.aw ], [ %.sroa.speculated194, %._crit_edge305 ]
  %storemerge = phi ptr [ %i.hh, %bb.aw ], [ %9, %._crit_edge305 ] ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.kc = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !177
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %.pre-phi
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = trunc i64 %i.kg to i32
  invoke void @_ZN8LightGBM6Random6SampleEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.kb, i32 noundef %i.kh, i32 noundef %.0236)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !177
  %i.kk = load ptr, ptr %10, align 8, !tbaa !178
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = lshr exact i64 %i.kn, 2
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  store i32 %i.kp, ptr %i.b, align 4, !tbaa !203
  %i.kq = invoke i32 @OMP_NUM_THREADS()
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.kq)
  %i.kr = icmp sgt i32 %i.kp, 1023
  br i1 %i.kr, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %10, ptr nonnull %8)
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

bb.bn:                                            ; preds = %bb.bj
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ku = load ptr, ptr %10, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i106 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit107, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !202
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

bb.bp:                                            ; preds = %bb.bk
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.c, align 4, !tbaa !203
  call void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.b, ptr nonnull %1, ptr %i.a, ptr %10, ptr %8) #20
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.la = load ptr, ptr %10, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIiSaIiEED2Ev.exit109, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !202
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit109

_ZNSt6vectorIiSaIiEED2Ev.exit109:                 ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.lg = load ptr, ptr %9, align 8, !tbaa !178   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit111, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit109
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !202
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ll) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit109, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ct

_ZNSt6vectorIiSaIiEED2Ev.exit107:                 ; preds = %bb.bo, %bb.bn, %bb.bm
  %.pn52 = phi { ptr, i32 } [ %i.ks, %bb.bm ], [ %i.kt, %bb.bn ], [ %i.kt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.pre334 = load ptr, ptr %9, align 8, !tbaa !178
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit107
  %15 = phi ptr [ %.pre334, %_ZNSt6vectorIiSaIiEED2Ev.exit107 ], [ %i.if, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt6vectorIiSaIiEED2Ev.exit107 ], [ %lpad.loopexit.split-lp459, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i112 = icmp eq ptr %15, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIiSaIiEED2Ev.exit113, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !202
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %15 to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %i.lq) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

_ZNSt6vectorIiSaIiEED2Ev.exit113:                 ; preds = %.loopexit.split-lp, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cx

bb.bu:                                            ; preds = %bb.av
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !177 ; 3 uses
  %i.lu = load ptr, ptr %i.lr, align 8, !tbaa !178 ; 3 uses
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 2 uses
  %i.ly = ashr exact i64 %i.lx, 2                 ; 2 uses
  %i.lz = trunc i64 %i.ly to i32
  %.sroa.speculated5.i114 = call i32 @llvm.smin.i32(i32 %i.lz, i32 1)
  %i.ma = uitofp i64 %i.ly to double
  %i.mb = fmul double %i.fs, %i.ma
  %i.mc = fadd double %i.mb, 5.000000e-01
  %i.md = fptosi double %i.mc to i32
  %.sroa.speculated.i115 = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i114, i32 %i.md) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.mf = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %bb.bv, label %.preheader265

.preheader265:                                    ; preds = %bb.bu
  %.not256298 = icmp eq ptr %i.lu, %i.lt
  br i1 %.not256298, label %._crit_edge301, label %.lr.ph300

.lr.ph300:                                        ; preds = %.preheader265
  %i.mh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.lr, ptr %i.d, align 8, !tbaa !317
  %.pre338 = lshr exact i64 %i.lx, 2
  %.pre340 = trunc i64 %.pre338 to i32
  br label %bb.ch

._crit_edge301.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %i.mk = ptrtoint ptr %i.oj to i64
  %i.ml = ptrtoint ptr %i.oh to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = lshr exact i64 %i.mm, 2
  %i.mo = trunc i64 %i.mn to i32
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %._crit_edge301.loopexit, %.preheader265
  %i.mp = phi i32 [ %i.mo, %._crit_edge301.loopexit ], [ 0, %.preheader265 ] ; 2 uses
  store ptr %11, ptr %i.d, align 8, !tbaa !317
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i115, i32 %i.mp)
  br label %bb.ch

bb.bw:                                            ; preds = %.lr.ph300, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %i.mq = phi ptr [ null, %.lr.ph300 ], [ %i.oh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 9 uses
  %i.mr = phi ptr [ null, %.lr.ph300 ], [ %i.oi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 7 uses
  %i.ms = phi ptr [ null, %.lr.ph300 ], [ %i.oj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 7 uses
  %.sroa.0188.0299 = phi ptr [ %i.lu, %.lr.ph300 ], [ %i.ok, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 2 uses
  %i.mt = load i32, ptr %.sroa.0188.0299, align 4, !tbaa !203 ; 6 uses
  %i.mu = load i64, ptr %i.mh, align 8, !tbaa !312
  %.not.not.i.i.i117 = icmp eq i64 %i.mu, 0
  br i1 %.not.not.i.i.i117, label %.preheader261, label %bb.by

.preheader261:                                    ; preds = %bb.bw, %bb.bx
  %.sroa.06.0.in.i.i.i127 = phi ptr [ %.sroa.06.0.i.i.i128, %bb.bx ], [ %i.j, %bb.bw ]
  %.sroa.06.0.i.i.i128 = load ptr, ptr %.sroa.06.0.in.i.i.i127, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %.sroa.06.0.i.i.i128, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.bx

bb.bx:                                            ; preds = %.preheader261
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i128, i64 8
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !203
  %i.mx = icmp eq i32 %i.mt, %i.mw
  br i1 %i.mx, label %.loopexit262, label %.preheader261, !llvm.loop !391

bb.by:                                            ; preds = %bb.bw
  %i.my = sext i32 %i.mt to i64
  %i.mz = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.na = urem i64 %i.my, %i.mz                   ; 2 uses
  %i.nb = load ptr, ptr %6, align 8, !tbaa !309
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i118 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i118, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !311 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !203
  %i.nh = icmp eq i32 %i.mt, %i.ng
  br i1 %i.nh, label %.loopexit262, label %.lr.ph.i.i.i.i.i119

bb.ca:                                            ; preds = %bb.cb
  %i.ni = icmp eq i32 %i.mt, %i.nl
  br i1 %i.ni, label %.loopexit262, label %.lr.ph.i.i.i.i.i119, !llvm.loop !392

.lr.ph.i.i.i.i.i119:                              ; preds = %bb.bz, %bb.ca
  %.020.i.i.i.i.i120 = phi ptr [ %i.nj, %bb.ca ], [ %i.ne, %bb.bz ]
  %i.nj = load ptr, ptr %.020.i.i.i.i.i120, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i121 = icmp eq ptr %i.nj, null
  br i1 %.not18.i.i.i.i.i121, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i119
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !203 ; 2 uses
  %i.nm = sext i32 %i.nl to i64
  %i.nn = urem i64 %i.nm, %i.mz
  %.not19.i.i.i.i.i122 = icmp eq i64 %i.nn, %i.na
  br i1 %.not19.i.i.i.i.i122, label %bb.ca, label %..loopexit_crit_edge21.i.i.i.i.i123, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i123:              ; preds = %bb.cb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, !llvm.loop !392

.loopexit262:                                     ; preds = %bb.ca, %bb.bx, %bb.bz
  %.not.i131 = icmp eq ptr %i.ms, %i.mr
  br i1 %.not.i131, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.loopexit262
  store i32 %i.mt, ptr %i.ms, align 4, !tbaa !203
  %i.no = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  store ptr %i.no, ptr %i.mi, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140

bb.cd:                                            ; preds = %.loopexit262
  %i.np = ptrtoint ptr %i.mr to i64
  %i.nq = ptrtoint ptr %i.mq to i64               ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq                    ; 5 uses
  %i.ns = icmp eq i64 %i.nr, 9223372036854775804
  br i1 %i.ns, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc138 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132: ; preds = %bb.cd
  %i.nt = ashr exact i64 %i.nr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i133 = call i64 @llvm.umax.i64(i64 %i.nt, i64 1)
  %i.nu = add nsw i64 %.sroa.speculated.i.i.i133, %i.nt ; 2 uses
  %i.nv = icmp ult i64 %i.nu, %i.nt
  %i.nw = call i64 @llvm.umin.i64(i64 %i.nu, i64 2305843009213693951)
  %i.nx = select i1 %i.nv, i64 2305843009213693951, i64 %i.nw ; 3 uses
  %.not.i.i.i134 = icmp ne i64 %i.nx, 0
  call void @llvm.assume(i1 %.not.i.i.i134)
  %i.ny = shl nuw nsw i64 %i.nx, 2
  %i.nz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #33
          to label %.noexc139 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 %i.nr ; 2 uses
  store i32 %i.mt, ptr %i.oa, align 4, !tbaa !203
  %i.ob = icmp sgt i64 %i.nr, 0
  br i1 %i.ob, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

bb.cf:                                            ; preds = %.noexc139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nz, ptr align 4 %i.mq, i64 %i.nr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135: ; preds = %bb.cf, %.noexc139
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 4 ; 2 uses
  %.not.i17.i.i136 = icmp eq ptr %i.mq, null
  br i1 %.not.i17.i.i136, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  %i.od = load ptr, ptr %i.mj, align 8, !tbaa !202
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.of) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  store ptr %i.nz, ptr %11, align 8, !tbaa !178
  store ptr %i.oc, ptr %i.mi, align 8, !tbaa !177
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nx ; 2 uses
  store ptr %i.og, ptr %i.mj, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140

.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132, %bb.ce
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp267

_ZNSt6vectorIiSaIiEE9push_backERKi.exit140:       ; preds = %.lr.ph.i.i.i.i.i119, %.preheader261, %bb.by, %..loopexit_crit_edge21.i.i.i.i.i123, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, %bb.cc
  %i.oh = phi ptr [ %i.mq, %.preheader261 ], [ %i.mq, %bb.cc ], [ %i.mq, %bb.by ], [ %i.mq, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.nz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mq, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.oi = phi ptr [ %i.mr, %.preheader261 ], [ %i.mr, %bb.cc ], [ %i.mr, %bb.by ], [ %i.mr, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.og, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mr, %.lr.ph.i.i.i.i.i119 ]
  %i.oj = phi ptr [ %i.ms, %.preheader261 ], [ %i.no, %bb.cc ], [ %i.ms, %bb.by ], [ %i.ms, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.oc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.ms, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0188.0299, i64 4 ; 2 uses
  %.not256 = icmp eq ptr %i.ok, %i.lt
  br i1 %.not256, label %._crit_edge301.loopexit, label %bb.bw

end_hunk_1
