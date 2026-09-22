Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmComputeTargetDepends?download=true
inline.NumInlined: 1922
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN22cmComputeTargetDependsD2Ev:bb.a
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPK17cmGeneratorTargetSt4lessISB_ESaISB_EEESt10_Select1stISG_ESC_IS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.u)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(96) %.05.i.i.i, ptr noundef %i.y)
          to label %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ab, %i.r
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit2
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit2 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !227
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #24
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit

_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aj) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef %i.an)
          to label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26
  unreachable

_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEED2Ev.exit: ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !223
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #24
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EED2Ev.exit

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EED2Ev.exit: ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22cmComputeTargetDepends7ComputeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %class.cmComputeComponentGraph, align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %class.cmComputeComponentGraph, align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN22cmComputeTargetDepends14CollectTargetsEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %_ZN22cmComputeTargetDepends14CollectDependsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN22cmComputeTargetDepends20CollectTargetDependsEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %.03.i)
  %i.l = add nuw i64 %.03.i, 1                    ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %.lr.ph.i, label %_ZN22cmComputeTargetDepends14CollectDependsEv.exit, !llvm.loop !3

_ZN22cmComputeTargetDepends14CollectDependsEv.exit: ; preds = %.lr.ph.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !218, !range !247, !noundef !248
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %_ZN22cmComputeTargetDepends14CollectDependsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.w, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.x, align 8, !tbaa !217
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.y, align 1, !tbaa !216
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.z = load ptr, ptr %1, align 8, !tbaa !215    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !216
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %1, align 8, !tbaa !215   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.c
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !216
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.ae

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN22cmComputeTargetDepends14CollectDependsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN23cmComputeComponentGraphC1ERK20cmGraphAdjacencyList(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  invoke void @_ZN23cmComputeComponentGraph7ComputeEv(ptr noundef nonnull align 8 dereferenceable(224) %2)
          to label %bb.e unwind label %.loopexit.split-lp85

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !251 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !252 ; 2 uses
  %.not2843.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not2843.i, label %.loopexit90, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph.i27
  %.02344.i = phi i64 [ 0, %.lr.ph.i27 ], [ %i.bi, %.loopexit.i ] ; 3 uses
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.02344.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !220 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.ay, 9
  br i1 %i.az, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %i.aq, align 1, !tbaa !219, !range !247, !noundef !248
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.critedge30.sink.split.i, label %.critedge.i

bb.h:                                             ; preds = %.noexc29
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.042.i, i64 8 ; 2 uses
  %.not35.i = icmp eq ptr %i.bc, %i.au
  br i1 %.not35.i, label %.loopexit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.h
  %.sroa.031.042.i = phi ptr [ %i.bc, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %i.bd = load i64, ptr %.sroa.031.042.i, align 8, !tbaa !214
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !255
  %i.bh = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.bg)
          to label %.noexc29 unwind label %.loopexit84

.noexc29:                                         ; preds = %.critedge.i
  %.not.i28 = icmp eq i32 %i.bh, 1
  br i1 %.not.i28, label %bb.h, label %.critedge30.sink.split.i

.loopexit.i:                                      ; preds = %bb.h, %bb.f
  %i.bi = add nuw i64 %.02344.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %i.ap
  br i1 %exitcond.not.i, label %.loopexit90, label %bb.f, !llvm.loop !4

.critedge30.sink.split.i:                         ; preds = %bb.g, %.noexc29
  invoke void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(224) %2, i64 noundef %.02344.i, i1 noundef zeroext false)
          to label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit unwind label %.loopexit.split-lp85

.loopexit84:                                      ; preds = %.critedge.i
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp85:                             ; preds = %bb.d, %.loopexit90, %bb.i, %bb.k, %.critedge30.sink.split.i
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit90:                                      ; preds = %.loopexit.i, %bb.e
  invoke void @_ZN22cmComputeTargetDepends18CollectSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.i unwind label %.loopexit.split-lp85

bb.i:                                             ; preds = %.loopexit90
  invoke void @_ZN22cmComputeTargetDepends24ComputeIntermediateGraphEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.j unwind label %.loopexit.split-lp85

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.t, align 8, !tbaa !218, !range !247, !noundef !248
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN22cmComputeTargetDepends18DisplaySideEffectsEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %._crit_edge.i.i31 unwind label %.loopexit.split-lp85

._crit_edge.i.i31:                                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bl, ptr %3, align 8, !tbaa !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.bm, align 8, !tbaa !217
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.bn, align 4, !tbaa !216
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i31
  %i.bp = load ptr, ptr %3, align 8, !tbaa !215   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bl
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !216
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i31
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !215   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bl
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.m
  %i.bw = load i64, ptr %i.bl, align 8, !tbaa !216
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ad

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN23cmComputeComponentGraphC1ERK20cmGraphAdjacencyList(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN23cmComputeComponentGraph7ComputeEv(ptr noundef nonnull align 8 dereferenceable(224) %4)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.t, align 8, !tbaa !218, !range !247, !noundef !248
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %._crit_edge.i.i41, label %bb.t

._crit_edge.i.i41:                                ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.cb, ptr %5, align 8, !tbaa !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.cc, align 8, !tbaa !217
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.cd, align 4, !tbaa !216
  invoke void @_ZN22cmComputeTargetDepends17DisplayComponentsERK23cmComputeComponentGraphRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %._crit_edge.i.i41
  %i.ce = load ptr, ptr %5, align 8, !tbaa !215   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cb
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.q
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !216
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit:                                        ; preds = %.critedge.i56
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.o, %.loopexit83, %.critedge30.sink.split.i59
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %._crit_edge.i.i41
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %5, align 8, !tbaa !215   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.s
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !216
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ab

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !251 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !252 ; 2 uses
  %.not2843.i51 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not2843.i51, label %.loopexit83, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.t
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i62, %.lr.ph.i52
  %.02344.i53 = phi i64 [ 0, %.lr.ph.i52 ], [ %i.do, %.loopexit.i62 ] ; 3 uses
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !252
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.02344.i53 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !253 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !220 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 9
  br i1 %i.df, label %.loopexit.i62, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cw, align 1, !tbaa !219, !range !247, !noundef !248
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.critedge30.sink.split.i59, label %.critedge.i56

bb.w:                                             ; preds = %.noexc64
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.031.042.i57, i64 8 ; 2 uses
  %.not35.i61 = icmp eq ptr %i.di, %i.da
  br i1 %.not35.i61, label %.loopexit.i62, label %.critedge.i56

.critedge.i56:                                    ; preds = %bb.v, %bb.w
  %.sroa.031.042.i57 = phi ptr [ %i.di, %bb.w ], [ %i.db, %bb.v ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.031.042.i57, align 8, !tbaa !214
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !255
  %i.dn = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.dm)
          to label %.noexc64 unwind label %.loopexit

.noexc64:                                         ; preds = %.critedge.i56
  %.not.i58 = icmp eq i32 %i.dn, 1
  br i1 %.not.i58, label %bb.w, label %.critedge30.sink.split.i59

.loopexit.i62:                                    ; preds = %bb.w, %bb.u
  %i.do = add nuw i64 %.02344.i53, 1              ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.do, %i.cv
  br i1 %exitcond.not.i63, label %.loopexit83, label %bb.u, !llvm.loop !4

.critedge30.sink.split.i59:                       ; preds = %bb.v, %.noexc64
  invoke void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(224) %4, i64 noundef %.02344.i53, i1 noundef zeroext false)
          to label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66 unwind label %.loopexit.split-lp

.loopexit83:                                      ; preds = %.loopexit.i62, %bb.t
  %i.dp = invoke noundef zeroext i1 @_ZN22cmComputeTargetDepends19ComputeFinalDependsERK23cmComputeComponentGraph(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %4)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit83
  br i1 %i.dp, label %bb.y, label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

bb.y:                                             ; preds = %bb.x
  %i.dq = load i8, ptr %i.t, align 8, !tbaa !218, !range !247, !noundef !248
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._crit_edge.i.i67, label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

._crit_edge.i.i67:                                ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ds, ptr %6, align 8, !tbaa !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ds, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.dt, align 8, !tbaa !217
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.du, align 1, !tbaa !216
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i67
  %i.dw = load ptr, ptr %6, align 8, !tbaa !215   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ds
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.z
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !216
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

bb.aa:                                            ; preds = %._crit_edge.i.i67
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %6, align 8, !tbaa !215   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ds
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.aa
  %i.ed = load i64, ptr %i.ds, align 8, !tbaa !216
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66: ; preds = %.critedge30.sink.split.i59, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.x
  %.011 = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ false, %.critedge30.sink.split.i59 ]
  call void @_ZN23cmComputeComponentGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn18.pn = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN23cmComputeComponentGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %4) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.r
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.ab ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ad

_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit: ; preds = %.critedge30.sink.split.i, %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66
  %.112 = phi i1 [ %.011, %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66 ], [ false, %.critedge30.sink.split.i ]
  call void @_ZN23cmComputeComponentGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.112

bb.ad:                                            ; preds = %.loopexit84, %.loopexit.split-lp85, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %bb.ac ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %lpad.loopexit86, %.loopexit84 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ]
  call void @_ZN23cmComputeComponentGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn18.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn.pn, %bb.ad ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn18.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends14CollectTargetsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !416  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !416  ; 2 uses
  %.not24 = icmp eq ptr %i.c, %i.e
  br i1 %.not24, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.b

._crit_edge28:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %.sroa.018.025 = phi ptr [ %i.c, %.lr.ph27 ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.018.025, align 8, !tbaa !417 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !419  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !419  ; 2 uses
  %.not2122 = icmp eq ptr %i.o, %i.q
  br i1 %.not2122, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !246
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.e
  br i1 %.not, label %._crit_edge28, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit
  %i.s = phi ptr [ %i.bu, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit ], [ %.pre, %.lr.ph.preheader ]
  %.sroa.014.023 = phi ptr [ %i.bv, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !222
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = load ptr, ptr %.sroa.014.023, align 8, !tbaa !255 ; 3 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %.lr.ph ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !255
  %i.ac = icmp ult ptr %i.ab, %i.y                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !257 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.ad, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !259
  %i.ag = icmp ult ptr %i.y, %i.af
  br i1 %i.ag, label %.critedge.i, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i ], [ %i.j, %.lr.ph ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !259
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !260
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.j
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN22cmComputeTargetDepends14CollectTargetsEv:bb.a
  store i64 %i.x, ptr %i.aw, align 8, !tbaa !214
  %i.ax = load ptr, ptr %.sroa.014.023, align 8, !tbaa !255 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !246 ; 4 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !223
  %.not.i.i9 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !246
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !222 ; 4 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIPK17cmGeneratorTargetSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
  unreachable

_ZNKSt6vectorIPK17cmGeneratorTargetSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i10 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #27 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store ptr %i.ax, ptr %i.bn, align 8, !tbaa !255
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.k, label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPK17cmGeneratorTargetSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPK17cmGeneratorTargetSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !223
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bs) #24
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !222
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !246
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bt, ptr %i.l, align 8, !tbaa !223
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bu = phi ptr [ %i.ba, %bb.h ], [ %i.bp, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.bv, %i.q
  br i1 %.not21, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends14CollectDependsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !222
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN22cmComputeTargetDepends20CollectTargetDependsEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %.03)
  %i.l = add nuw i64 %.03, 1                      ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !263
  %i.b = load ptr, ptr %2, align 8, !tbaa !215
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef %i.b) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !228    ; 2 uses
  %.not27 = icmp eq ptr %i.e, %i.f
  br i1 %.not27, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !263
  %fputc = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %.023 = phi i64 [ 0, %.lr.ph25 ], [ %i.y, %._crit_edge ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !228
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.023 ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !222
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.023
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !255
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !263
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.q)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !215
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.12, i64 noundef %.023, ptr noundef %i.t) #28 ; 0 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !264  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !264  ; 2 uses
  %.not21 = icmp eq ptr %i.v, %i.x
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.y = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not, label %._crit_edge26, label %bb.b, !llvm.loop !420

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.018.022 = phi ptr [ %i.al, %.lr.ph ], [ %i.v, %bb.b ] ; 3 uses
  %i.z = load i64, ptr %.sroa.018.022, align 8, !tbaa !271 ; 2 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !222
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !255
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !263
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.ac)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !215
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !272, !range !247, !noundef !248
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, ptr @.str.14, ptr @.str.15
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.13, i64 noundef %i.z, ptr noundef %i.af, ptr noundef nonnull %i.aj) #28 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN23cmComputeComponentGraphC1ERK20cmGraphAdjacencyList(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN23cmComputeComponentGraph7ComputeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !252  ; 2 uses
  %.not2843 = icmp eq ptr %i.c, %i.d
  br i1 %.not2843, label %.critedge30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02344 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %.loopexit ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !252
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.02344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !253  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !220  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 9
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.i, align 1, !tbaa !219, !range !247, !noundef !248
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.critedge30.sink.split, label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.v, %i.n
  br i1 %.not35, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %.sroa.031.042 = phi ptr [ %i.v, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.w = load i64, ptr %.sroa.031.042, align 8, !tbaa !214
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !255
  %i.aa = tail call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.z)
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %bb.d, label %.critedge30.sink.split

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.ab = add nuw i64 %.02344, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %.critedge30, label %bb.b, !llvm.loop !4

.critedge30.sink.split:                           ; preds = %bb.c, %.critedge
  tail call void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %.02344, i1 noundef zeroext false)
  br label %.critedge30

.critedge30:                                      ; preds = %.loopexit, %.critedge30.sink.split, %bb.a
  %.not2838 = phi i1 [ true, %bb.a ], [ false, %.critedge30.sink.split ], [ true, %.loopexit ]
  ret i1 %.not2838
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends18CollectSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set.960", align 8      ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !224  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPK17cmGeneratorTargetSt4lessISB_ESaISB_EEESt10_Select1stISG_ESC_IS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(96) %.05.i.i.i.i, ptr noundef %i.k)
          to label %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !225
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !224
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.c, %bb.a ], [ %i.d, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !229
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !228
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 4 uses
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 96                ; 3 uses
  %i.ac = icmp ugt i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit
  %i.ad = sub nuw nsw i64 %i.x, %i.ab
  tail call void @_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ad)
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13

bb.e:                                             ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit
  %i.ae = icmp ult i64 %i.x, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.x ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.p, %i.af
  br i1 %.not.i.i6, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.f, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10
  %.05.i.i.i.i8 = phi ptr [ %i.ap, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10 ], [ %i.af, %bb.f ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPK17cmGeneratorTargetSt4lessISB_ESaISB_EEESt10_Select1stISG_ESC_IS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.ai)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i9 unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i7
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPK17cmGeneratorTargetS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(96) %.05.i.i.i.i8, ptr noundef %i.am)
          to label %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10 unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i9
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPK17cmGeneratorTargetSt4lessIS9_ESaIS9_EESA_IS5_ESaISt4pairIKS5_SD_EEED2Ev.exit.i.i.i.i.i.i9
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 96 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ap, %i.p
  br i1 %.not.i.i.i.i11, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12, label %.lr.ph.i.i.i.i7, !llvm.loop !0

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10
  store ptr %i.af, ptr %i.b, align 8, !tbaa !225
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13

_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !229 ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.as, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.as, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.as, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !261
  %.not = icmp eq ptr %i.aq, %i.ar
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre15 = load ptr, ptr %i.at, align 8, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13
  %i.bb = phi ptr [ %.pre15, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13 ]
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.bb)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.014 = phi i64 [ %i.be, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  invoke void @_ZN22cmComputeTargetDepends27CollectSideEffectsForTargetERSt3setImSt4lessImESaImEEm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.014)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.be = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.ba
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !421

bb.k:                                             ; preds = %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends24ComputeIntermediateGraphEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
end_hunk_1
