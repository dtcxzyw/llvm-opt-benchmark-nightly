Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM17SerialTreeLearner14FindBestSplitsEPKNS_4TreeEPKSt3setIiSt4lessIiESaIiEE.omp_outlined:bb.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !294
  %.not19 = icmp eq i8 %i.v, 0
  br i1 %.not19, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !346    ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !450  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i, label %.critedge2, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !198
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp sgt i64 %indvars.iv, %i.ad         ; 2 uses
  %.19.i.i.i = select i1 %i.ae, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2206

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = icmp eq ptr %.19.i.i.i, %i.aa
  br i1 %i.af, label %.critedge2, label %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit:       ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !341 ; 2 uses
  %.not20 = icmp eq ptr %i.ak, null
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds [96 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !460, !range !232, !noundef !233
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !350
  %i.aq = getelementptr inbounds [96 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !460
  br label %.critedge2

bb.g:                                             ; preds = %bb.e, %.critedge
  %i.as = load ptr, ptr %4, align 8, !tbaa !347
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  store i8 1, ptr %i.at, align 1, !tbaa !294
  %.pre = load i32, ptr %i.b, align 4, !tbaa !198
  br label %.critedge2

.critedge2:                                       ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.d, %bb.c, %bb.f, %bb.g, %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.au = phi i32 [ %i.s, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i ], [ %i.s, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.f ], [ %.pre, %bb.g ], [ %i.s, %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.av = sext i32 %i.au to i64
  %.not18.not = icmp slt i64 %indvars.iv, %i.av
  br i1 %.not18.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.critedge2
  %.pre34 = load i32, ptr %i.a, align 4, !tbaa !198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aw = phi i32 [ %i.q, %.preheader ], [ %.pre34, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.p, %.preheader ], [ %i.au, %._crit_edge.loopexit ]
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !198 ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.aw                ; 3 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !198
  %i.az = add nsw i32 %i.ax, %.lcssa
  %i.ba = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.g) ; 3 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !198
  %.not = icmp sgt i32 %i.ay, %i.ba
  br i1 %.not, label %._crit_edge31, label %.preheader

._crit_edge31:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge31, %bb.a
  ret void
}

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb0ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb0ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb0ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 1, ptr %i.i, align 8, !tbaa !371
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !387
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2213
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2213
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.s = sext i32 %3 to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !528, !noalias !2214
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290, !noalias !2214 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !195, !noalias !2214 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !365

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #40
          to label %.noexc60 unwind label %bb.j

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !329, !noalias !2214 ; 2 uses
  %.pre1.i = load ptr, ptr %i.v, align 8, !tbaa !329, !noalias !2214
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc60, %bb.b
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc60 ], [ %i.z, %bb.b ] ; 3 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc60 ], [ %i.y, %bb.b ] ; 3 uses
  %i.ad = phi ptr [ %.pre.i, %.noexc60 ], [ %i.x, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc60 ], [ null, %bb.b ] ; 10 uses
  %i.af = sub i64 %.pre-phi.i, %.pre-phi4.i       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !366

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ad, i64 %i.af, i1 false), !noalias !2214
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !198, !noalias !2214
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !198, !noalias !2214
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %6, ptr %5, align 8, !tbaa !378
  %.not6.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i ; 2 uses
  br i1 %.not6.i.i.i, label %.loopexit279, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc61
  %.sroa.03.07.i.i.i = phi ptr [ %i.al, %.noexc61 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc61 unwind label %bb.k   ; 0 uses

.noexc61:                                         ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i, label %.loopexit279, label %.lr.ph.i.i.i, !llvm.loop !9

.loopexit279:                                     ; preds = %.noexc61, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !2213 ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !2213 ; 2 uses
  %.not285 = icmp eq ptr %i.am, %i.an
  br i1 %.not285, label %._crit_edge, label %.lr.ph287

.lr.ph287:                                        ; preds = %.loopexit279
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.at = lshr exact i64 %i.af, 2
  %13 = icmp ne i64 %.pre-phi.i, %.pre-phi4.i
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %.loopexit279
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aa) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %.lr.ph287, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %.sroa.0221.0286 = phi ptr [ %i.am, %.lr.ph287 ], [ %i.fg, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !370
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !371
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !371
  store ptr null, ptr %i.ap, align 8, !tbaa !372
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !373
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !373
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !375
  store ptr null, ptr %i.as, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %7, ptr %4, align 8, !tbaa !378
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0221.0286, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bd = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not6.i.i.i64 = icmp eq ptr %i.bd, null
  %or.cond = select i1 %13, i1 true, i1 %.not6.i.i.i64
  br i1 %or.cond, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.m, %.noexc68
  %.sroa.03.07.i.i.i66 = phi ptr [ %i.ck, %.noexc68 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i66, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !373
  %.not.not.i = icmp eq i64 %i.bf, 0
  %i.bg = load i32, ptr %i.be, align 4            ; 5 uses
  br i1 %.not.not.i, label %.preheader426, label %.thread34.i

.thread34.i:                                      ; preds = %.lr.ph.i.i.i65
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !371 ; 2 uses
  %i.bj = urem i64 %i.bh, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !370
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i158, label %.critedge.i, label %bb.p

.preheader426:                                    ; preds = %.lr.ph.i.i.i65, %bb.n
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.n ], [ %i.j, %.lr.ph.i.i.i65 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !372 ; 3 uses
  %.not.i160 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i160, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader426
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !198
  %i.bp = icmp eq i32 %i.bg, %i.bo
  br i1 %i.bp, label %.noexc68, label %.preheader426, !llvm.loop !2209

bb.o:                                             ; preds = %.preheader426
  %i.bq = sext i32 %i.bg to i64                   ; 2 uses
  %i.br = load i64, ptr %i.i, align 8, !tbaa !371
  %i.bs = urem i64 %i.bq, %i.br
  br label %.critedge.i

bb.p:                                             ; preds = %.thread34.i
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !372 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = icmp eq i32 %i.bg, %i.bv
  br i1 %i.bw, label %.noexc68, label %.lr.ph.i.i.i159

bb.q:                                             ; preds = %bb.r
  %i.bx = icmp eq i32 %i.bg, %i.ca
  br i1 %i.bx, label %.noexc68, label %.lr.ph.i.i.i159, !llvm.loop !10

.lr.ph.i.i.i159:                                  ; preds = %bb.p, %bb.q
  %.020.i.i.i = phi ptr [ %i.by, %bb.q ], [ %i.bt, %bb.p ]
  %i.by = load ptr, ptr %.020.i.i.i, align 8, !tbaa !372 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i159
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !198 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bi
  %.not19.i.i.i = icmp eq i64 %i.cc, %i.bj
  br i1 %.not19.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !10

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.r
  br label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %.lr.ph.i.i.i159, %..loopexit_crit_edge21.i.i.i, %bb.o, %.thread34.i
  %i.cd = phi i64 [ %i.bs, %bb.o ], [ %i.bj, %.thread34.i ], [ %i.bj, %..loopexit_crit_edge21.i.i.i ], [ %i.bj, %.lr.ph.i.i.i159 ]
  %i.ce = phi i64 [ %i.bq, %bb.o ], [ %i.bh, %.thread34.i ], [ %i.bh, %..loopexit_crit_edge21.i.i.i ], [ %i.bh, %.lr.ph.i.i.i159 ]
  %i.cf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #40
          to label %.noexc161 unwind label %bb.t  ; 4 uses

.noexc161:                                        ; preds = %.critedge.i
  store ptr null, ptr %i.cf, align 8, !tbaa !372
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.be, align 4, !tbaa !198
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !198
  %i.ci = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.cd, i64 noundef %i.ce, ptr noundef nonnull %i.cf, i64 noundef 1)
          to label %.noexc68 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc161
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 16) #39
  br label %.body

.noexc68:                                         ; preds = %bb.q, %bb.n, %.noexc161, %bb.p
  %i.ck = load ptr, ptr %.sroa.03.07.i.i.i66, align 8, !tbaa !372 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i67, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65, !llvm.loop !2210

bb.s:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.t:                                             ; preds = %.critedge.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit: ; preds = %.noexc68, %bb.m
  br i1 %.not6.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit
  %i.cn = load i64, ptr %i.aq, align 8, !tbaa !373
  %.not.not.i.i.i = icmp eq i64 %i.cn, 0
  %i.co = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.cp = load ptr, ptr %7, align 8
  br i1 %.not.not.i.i.i, label %.preheader272.us, label %.lr.ph.split

.preheader272.us:                                 ; preds = %.lr.ph, %bb.u
  %.039283.us = phi i32 [ %i.cv, %bb.u ], [ 0, %.lr.ph ]
  %.sroa.0217.0282.us = phi ptr [ %i.cr, %bb.u ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.cq = load i32, ptr %.sroa.0217.0282.us, align 4, !tbaa !198
  br label %bb.v

bb.u:                                             ; preds = %.loopexit273.us
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0217.0282.us, i64 4 ; 2 uses
  %.not254.us = icmp eq ptr %i.cr, %i.aj
  br i1 %.not254.us, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.preheader272.us

bb.v:                                             ; preds = %.preheader272.us, %bb.w
  %.sroa.06.0.in.i.i.i.us = phi ptr [ %.sroa.06.0.i.i.i.us, %bb.w ], [ %i.ap, %.preheader272.us ]
  %.sroa.06.0.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.us, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i70.us = icmp eq ptr %.sroa.06.0.i.i.i.us, null
  br i1 %.not.i.i.i70.us, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !198
  %i.cu = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cu, label %.loopexit273.us, label %bb.v, !llvm.loop !2211

.loopexit273.us:                                  ; preds = %bb.w
  %i.cv = add nuw nsw i32 %.039283.us, 1          ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.av
  br i1 %i.cw, label %.split.us, label %bb.u

bb.x:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0217.0282, i64 4 ; 2 uses
  %.not254 = icmp eq ptr %i.cx, %i.aj
  br i1 %.not254, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.039283 = phi i32 [ %i.do, %bb.x ], [ 0, %.lr.ph ]
  %.sroa.0217.0282 = phi ptr [ %i.cx, %bb.x ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.0217.0282, align 4, !tbaa !198 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = urem i64 %i.cz, %i.co                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i69, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !372 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !198
  %i.dg = icmp eq i32 %i.cy, %i.df
  br i1 %i.dg, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, label %.lr.ph.i.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.dh = icmp eq i32 %i.cy, %i.dk
  br i1 %i.dh, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, label %.lr.ph.i.i.i.i.i, !llvm.loop !2212

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %bb.z
  %.020.i.i.i.i.i = phi ptr [ %i.di, %bb.z ], [ %i.dd, %bb.y ]
  %i.di = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !372 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !198 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = urem i64 %i.dl, %i.co
  %.not19.i.i.i.i.i = icmp eq i64 %i.dm, %i.da
  br i1 %.not19.i.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2212

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.aa
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, !llvm.loop !2212

bb.ab:                                            ; preds = %.critedge.i170
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76: ; preds = %bb.z, %bb.y
  %i.do = add nuw nsw i32 %.039283, 1             ; 2 uses
  %i.dp = icmp eq i32 %i.do, %i.av
  br i1 %i.dp, label %.split.us, label %bb.x

.split.us:                                        ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, %.loopexit273.us
  %i.dq = load ptr, ptr %i.ap, align 8, !tbaa !379 ; 2 uses
  %.not6.i.i.i71 = icmp eq ptr %i.dq, null
  br i1 %.not6.i.i.i71, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.split.us, %.noexc75
  %.sroa.03.07.i.i.i73 = phi ptr [ %i.ex, %.noexc75 ], [ %i.dq, %.split.us ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i73, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.au, align 8, !tbaa !373
  %.not.not.i162 = icmp eq i64 %i.ds, 0
  %i.dt = load i32, ptr %i.dr, align 4            ; 5 uses
  br i1 %.not.not.i162, label %.preheader423, label %.thread34.i163

.thread34.i163:                                   ; preds = %.lr.ph.i.i.i72
  %i.du = sext i32 %i.dt to i64                   ; 4 uses
  %i.dv = load i64, ptr %i.i, align 8, !tbaa !371 ; 2 uses
  %i.dw = urem i64 %i.du, %i.dv                   ; 5 uses
  %i.dx = load ptr, ptr %6, align 8, !tbaa !370
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i164, label %.critedge.i170, label %bb.ae

.preheader423:                                    ; preds = %.lr.ph.i.i.i72, %bb.ac
  %.sroa.028.0.in.i176 = phi ptr [ %.sroa.028.0.i177, %bb.ac ], [ %i.j, %.lr.ph.i.i.i72 ]
  %.sroa.028.0.i177 = load ptr, ptr %.sroa.028.0.in.i176, align 8, !tbaa !372 ; 3 uses
  %.not.i178 = icmp eq ptr %.sroa.028.0.i177, null
  br i1 %.not.i178, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader423
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i177, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !198
  %i.ec = icmp eq i32 %i.dt, %i.eb
  br i1 %i.ec, label %.noexc75, label %.preheader423, !llvm.loop !2209

bb.ad:                                            ; preds = %.preheader423
  %i.ed = sext i32 %i.dt to i64                   ; 2 uses
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !371
  %i.ef = urem i64 %i.ed, %i.ee
  br label %.critedge.i170

bb.ae:                                            ; preds = %.thread34.i163
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !372 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !198
  %i.ej = icmp eq i32 %i.dt, %i.ei
  br i1 %i.ej, label %.noexc75, label %.lr.ph.i.i.i165

bb.af:                                            ; preds = %bb.ag
  %i.ek = icmp eq i32 %i.dt, %i.en
  br i1 %i.ek, label %.noexc75, label %.lr.ph.i.i.i165, !llvm.loop !10

.lr.ph.i.i.i165:                                  ; preds = %bb.ae, %bb.af
  %.020.i.i.i166 = phi ptr [ %i.el, %bb.af ], [ %i.eg, %bb.ae ]
  %i.el = load ptr, ptr %.020.i.i.i166, align 8, !tbaa !372 ; 3 uses
  %.not18.i.i.i167 = icmp eq ptr %i.el, null
  br i1 %.not18.i.i.i167, label %.critedge.i170, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i165
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !198 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.dv
  %.not19.i.i.i168 = icmp eq i64 %i.ep, %i.dw
  br i1 %.not19.i.i.i168, label %bb.af, label %..loopexit_crit_edge21.i.i.i169, !llvm.loop !10

..loopexit_crit_edge21.i.i.i169:                  ; preds = %bb.ag
  br label %.critedge.i170, !llvm.loop !10

.critedge.i170:                                   ; preds = %.lr.ph.i.i.i165, %..loopexit_crit_edge21.i.i.i169, %bb.ad, %.thread34.i163
  %i.eq = phi i64 [ %i.ef, %bb.ad ], [ %i.dw, %.thread34.i163 ], [ %i.dw, %..loopexit_crit_edge21.i.i.i169 ], [ %i.dw, %.lr.ph.i.i.i165 ]
  %i.er = phi i64 [ %i.ed, %bb.ad ], [ %i.du, %.thread34.i163 ], [ %i.du, %..loopexit_crit_edge21.i.i.i169 ], [ %i.du, %.lr.ph.i.i.i165 ]
  %i.es = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #40
          to label %.noexc179 unwind label %bb.ab ; 4 uses

.noexc179:                                        ; preds = %.critedge.i170
  store ptr null, ptr %i.es, align 8, !tbaa !372
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.dr, align 4, !tbaa !198
  store i32 %i.eu, ptr %i.et, align 8, !tbaa !198
  %i.ev = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %.noexc75 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171 ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171: ; preds = %.noexc179
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 16) #39
  br label %.body

.noexc75:                                         ; preds = %bb.af, %bb.ac, %.noexc179, %bb.ae
  %i.ex = load ptr, ptr %.sroa.03.07.i.i.i73, align 8, !tbaa !372 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i74, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph.i.i.i72, !llvm.loop !2210

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread: ; preds = %bb.x, %.lr.ph.split, %bb.u, %.noexc75, %.lr.ph.i.i.i.i.i, %bb.v, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, %..loopexit_crit_edge21.i.i.i.i.i
  %.pr252 = load ptr, ptr %i.ap, align 8, !tbaa !379 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pr252, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %.pr252, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread ] ; 2 uses
  %i.ey = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !372 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #39
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.split.us, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread
  %i.ez = load ptr, ptr %7, align 8, !tbaa !370
  %i.fa = load i64, ptr %i.ao, align 8, !tbaa !371
  %i.fb = shl i64 %i.fa, 3
end_hunk_0
