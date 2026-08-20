inline.NumInlined: 1922
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN22cmComputeTargetDependsD2Ev:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !212  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit2 ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
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
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !213

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit2
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorImSaImEED2Ev.exit2 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !215
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
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
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !210
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !209
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %_ZN22cmComputeTargetDepends14CollectDependsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN22cmComputeTargetDepends20CollectTargetDependsEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %.03.i)
  %i.l = add nuw i64 %.03.i, 1                    ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %.lr.ph.i, label %_ZN22cmComputeTargetDepends14CollectDependsEv.exit, !llvm.loop !238

_ZN22cmComputeTargetDepends14CollectDependsEv.exit: ; preds = %.lr.ph.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !205, !range !239, !noundef !240
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %_ZN22cmComputeTargetDepends14CollectDependsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.w, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.x, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.y, align 1, !tbaa !203
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.z = load ptr, ptr %1, align 8, !tbaa !202    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !203
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %1, align 8, !tbaa !202   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.w
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.c
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !203
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !244 ; 2 uses
  %.not2843.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not2843.i, label %.loopexit90, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv i64 %i.ao, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph.i27
  %.02344.i = phi i64 [ 0, %.lr.ph.i27 ], [ %i.bi, %.loopexit.i ] ; 3 uses
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !244
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.02344.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245 ; 3 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !207 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.ay, 9
  br i1 %i.az, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %i.aq, align 1, !tbaa !206, !range !239, !noundef !240
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.critedge30.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.not3541.i = icmp eq ptr %i.av, %i.au
  br i1 %.not3541.i, label %.loopexit.i, label %.critedge.i

bb.h:                                             ; preds = %.noexc29
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.042.i, i64 8 ; 2 uses
  %.not35.i = icmp eq ptr %i.bc, %i.au
  br i1 %.not35.i, label %.loopexit.i, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.i, %bb.h
  %.sroa.031.042.i = phi ptr [ %i.bc, %bb.h ], [ %i.av, %.preheader.i ] ; 2 uses
  %i.bd = load i64, ptr %.sroa.031.042.i, align 8, !tbaa !201
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !246
  %i.bh = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.bg)
          to label %.noexc29 unwind label %.loopexit84.a

.noexc29:                                         ; preds = %.critedge.i
  %.not.i28 = icmp eq i32 %i.bh, 1
  br i1 %.not.i28, label %bb.h, label %.critedge30.sink.split.i

.loopexit.i:                                      ; preds = %bb.h, %.preheader.i, %bb.f
  %i.bi = add nuw i64 %.02344.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %umax.i
  br i1 %exitcond.not.i, label %.loopexit90, label %bb.f, !llvm.loop !248

.critedge30.sink.split.i:                         ; preds = %bb.g, %.noexc29
  invoke void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(224) %2, i64 noundef %.02344.i, i1 noundef zeroext false)
          to label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit unwind label %.loopexit.split-lp85

.loopexit84.a:                                    ; preds = %.critedge.i
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
  %i.bj = load i8, ptr %i.t, align 8, !tbaa !205, !range !239, !noundef !240
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN22cmComputeTargetDepends18DisplaySideEffectsEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
          to label %._crit_edge.i.i31 unwind label %.loopexit.split-lp85

._crit_edge.i.i31:                                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bl, ptr %3, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.bm, align 8, !tbaa !204
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.bn, align 4, !tbaa !203
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i31
  %i.bp = load ptr, ptr %3, align 8, !tbaa !202   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bl
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.l
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !203
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i31
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !202   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bl
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.m
  %i.bw = load i64, ptr %i.bl, align 8, !tbaa !203
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
  %i.bz = load i8, ptr %i.t, align 8, !tbaa !205, !range !239, !noundef !240
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %._crit_edge.i.i41, label %bb.t

._crit_edge.i.i41:                                ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.cb, ptr %5, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.cc, align 8, !tbaa !204
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.cd, align 4, !tbaa !203
  invoke void @_ZN22cmComputeTargetDepends17DisplayComponentsERK23cmComputeComponentGraphRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %._crit_edge.i.i41
  %i.ce = load ptr, ptr %5, align 8, !tbaa !202   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cb
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.q
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !203
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
  %i.ck = load ptr, ptr %5, align 8, !tbaa !202   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.s
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !203
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ab

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !241 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !244 ; 2 uses
  %.not2843.i51 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not2843.i51, label %.loopexit83, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.t
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv i64 %i.cu, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %umax.i53 = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i62, %.lr.ph.i52
  %.02344.i53 = phi i64 [ 0, %.lr.ph.i52 ], [ %i.do, %.loopexit.i62 ] ; 3 uses
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !244
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.02344.i53 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !245 ; 3 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !207 ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 9
  br i1 %i.df, label %.loopexit.i62, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.cw, align 1, !tbaa !206, !range !239, !noundef !240
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.critedge30.sink.split.i59, label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.v
  %.not3541.i55 = icmp eq ptr %i.db, %i.da
  br i1 %.not3541.i55, label %.loopexit.i62, label %.critedge.i56

bb.w:                                             ; preds = %.noexc64
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.031.042.i57, i64 8 ; 2 uses
  %.not35.i61 = icmp eq ptr %i.di, %i.da
  br i1 %.not35.i61, label %.loopexit.i62, label %.critedge.i56

.critedge.i56:                                    ; preds = %.preheader.i54, %bb.w
  %.sroa.031.042.i57 = phi ptr [ %i.di, %bb.w ], [ %i.db, %.preheader.i54 ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.031.042.i57, align 8, !tbaa !201
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !246
  %i.dn = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.dm)
          to label %.noexc64 unwind label %.loopexit

.noexc64:                                         ; preds = %.critedge.i56
  %.not.i58 = icmp eq i32 %i.dn, 1
  br i1 %.not.i58, label %bb.w, label %.critedge30.sink.split.i59

.loopexit.i62:                                    ; preds = %bb.w, %.preheader.i54, %bb.u
  %i.do = add nuw i64 %.02344.i53, 1              ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %i.do, %umax.i53
  br i1 %exitcond.not.i63, label %.loopexit83, label %bb.u, !llvm.loop !248

.critedge30.sink.split.i59:                       ; preds = %bb.v, %.noexc64
  invoke void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull readonly align 8 dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(224) %4, i64 noundef %.02344.i53, i1 noundef zeroext false)
          to label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66 unwind label %.loopexit.split-lp

.loopexit83:                                      ; preds = %.loopexit.i62, %bb.t
  %i.dp = invoke noundef zeroext i1 @_ZN22cmComputeTargetDepends19ComputeFinalDependsERK23cmComputeComponentGraph(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %4)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit83
  br i1 %i.dp, label %bb.y, label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

bb.y:                                             ; preds = %bb.x
  %i.dq = load i8, ptr %i.t, align 8, !tbaa !205, !range !239, !noundef !240
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._crit_edge.i.i67, label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

._crit_edge.i.i67:                                ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ds, ptr %6, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ds, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.dt, align 8, !tbaa !204
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.du, align 1, !tbaa !203
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i67
  %i.dw = load ptr, ptr %6, align 8, !tbaa !202   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ds
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.z
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !203
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN22cmComputeTargetDepends15CheckComponentsERK23cmComputeComponentGraph.exit66

bb.aa:                                            ; preds = %._crit_edge.i.i67
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %6, align 8, !tbaa !202   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ds
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.aa
  %i.ed = load i64, ptr %i.ds, align 8, !tbaa !203
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

bb.ad:                                            ; preds = %.loopexit84.a, %.loopexit.split-lp85, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %bb.ac ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %lpad.loopexit86, %.loopexit84.a ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ]
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !249  ; 2 uses
  %.not22 = icmp eq ptr %i.c, %i.e
  br i1 %.not22, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %.sroa.016.023 = phi ptr [ %i.c, %.lr.ph25 ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.016.023, align 8, !tbaa !250 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !252  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !252  ; 2 uses
  %.not1920 = icmp eq ptr %i.o, %i.q
  br i1 %.not1920, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !237
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.016.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.e
  br i1 %.not, label %._crit_edge26, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit
  %i.s = phi ptr [ %i.br, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit ], [ %.pre, %.lr.ph.preheader ]
  %.sroa.012.021 = phi ptr [ %i.bs, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = load ptr, ptr %.sroa.012.021, align 8, !tbaa !246 ; 3 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %.lr.ph ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !246
  %i.ac = icmp ult ptr %i.ab, %i.y                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !254 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !255

_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.ad, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !256
  %i.ag = icmp ult ptr %i.y, %i.af
  br i1 %i.ag, label %.critedge.i, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE11lower_boundERS6_.exit.i ], [ %i.j, %.lr.ph ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !258
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
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !246
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %i.as = phi i1 [ %i.ar, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #23
  %i.at = load i64, ptr %i.k, align 8, !tbaa !259
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.k, align 8, !tbaa !259
  br label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 48) #24
  resume { ptr, i32 } %i.av

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 48) #24
  br label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit

_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit: ; preds = %bb.c, %.thread.i.i, %bb.g
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %i.ah, %.thread.i.i ], [ %i.al, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %i.x, ptr %i.aw, align 8, !tbaa !201
  %i.ax = load ptr, ptr %.sroa.012.021, align 8, !tbaa !246 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !237 ; 4 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !210
  %.not.i.i9 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !246
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !237
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit

bb.i:                                             ; preds = %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixEOS2_.exit
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !209 ; 4 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
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
  store ptr %i.ax, ptr %i.bn, align 8, !tbaa !246
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #24
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !209
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !237
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !210
  br label %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.br = phi ptr [ %i.ba, %bb.h ], [ %i.bp, %_ZNSt6vectorIPK17cmGeneratorTargetSaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.bs, %i.q
  br i1 %.not19, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends14CollectDependsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !209
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN22cmComputeTargetDepends20CollectTargetDependsEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %.03)
  %i.l = add nuw i64 %.03, 1                      ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.l, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !238
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends12DisplayGraphERK20cmGraphAdjacencyListRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.b = load ptr, ptr %2, align 8, !tbaa !202
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.11, ptr noundef %i.b) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !216    ; 2 uses
  %.not27 = icmp eq ptr %i.e, %i.f
  br i1 %.not27, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !260
  %fputc = tail call i32 @fputc(i32 10, ptr %i.l) ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %.023 = phi i64 [ 0, %.lr.ph25 ], [ %i.y, %._crit_edge ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !216
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.023 ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !209
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.023
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.q)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !202
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.12, i64 noundef %.023, ptr noundef %i.t) #28 ; 0 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !262  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262  ; 2 uses
  %.not21 = icmp eq ptr %i.v, %i.x
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.y = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %umax
  br i1 %exitcond.not, label %._crit_edge26, label %bb.b, !llvm.loop !263

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.018.022 = phi ptr [ %i.al, %.lr.ph ], [ %i.v, %bb.b ] ; 3 uses
  %i.z = load i64, ptr %.sroa.018.022, align 8, !tbaa !264 ; 2 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !209
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !246
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.ae = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.ac)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !271, !range !239, !noundef !240
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %.not2843 = icmp eq ptr %i.c, %i.d
  br i1 %.not2843, label %.critedge30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.02344 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %.loopexit ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !244
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.02344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !245  ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 9
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.i, align 1, !tbaa !206, !range !239, !noundef !240
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.critedge30.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not3541 = icmp eq ptr %i.o, %i.n
  br i1 %.not3541, label %.loopexit, label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.v, %i.n
  br i1 %.not35, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.d
  %.sroa.031.042 = phi ptr [ %i.v, %bb.d ], [ %i.o, %.preheader ] ; 2 uses
  %i.w = load i64, ptr %.sroa.031.042, align 8, !tbaa !201
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !246
  %i.aa = tail call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.z)
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %bb.d, label %.critedge30.sink.split

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.b
  %i.ab = add nuw i64 %.02344, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %umax
  br i1 %exitcond.not, label %.critedge30, label %bb.b, !llvm.loop !248

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !211  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
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
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !213

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !212
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !211
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.d, %bb.a ], [ %.pre, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.c, %bb.a ], [ %i.d, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !217
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !216
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
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
  br i1 %.not.i.i.i.i11, label %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12, label %.lr.ph.i.i.i.i7, !llvm.loop !213

_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12: ; preds = %_ZSt8_DestroyIN22cmComputeTargetDepends17TargetSideEffectsEEvPT_.exit.i.i.i.i10
  store ptr %i.af, ptr %i.b, align 8, !tbaa !212
  br label %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13

_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN22cmComputeTargetDepends17TargetSideEffectsES1_EvT_S3_RSaIT0_E.exit.i.i12
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !217 ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.as, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.as, ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.as, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !259
  %.not = icmp eq ptr %i.aq, %i.ar
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN22cmComputeTargetDepends17TargetSideEffectsESaIS1_EE6resizeEm.exit13
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv i64 %i.az, 24
  %umax = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre15 = load ptr, ptr %i.at, align 8, !tbaa !16
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
  %exitcond.not = icmp eq i64 %i.be, %umax
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !272

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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.j)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !216  ; 2 uses
  %.not32 = icmp eq ptr %i.k, %i.l
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv i64 %i.o, 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.02131 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.j ] ; 4 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.02131 ; 4 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !216
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.02131 ; 4 uses
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.02131
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !246  ; 4 uses
  %i.aa = call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.z)
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.z)
  %.not22 = icmp eq i32 %i.ab, 4
  br i1 %.not22, label %.noexc.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11cmGraphEdgeSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  br label %bb.j

.noexc.i:                                         ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.r, ptr %1, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 21, ptr %i.a, align 8, !tbaa !201
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !202
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !201 ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ad, ptr noundef nonnull align 1 dereferenceable(21) @.str.10, i64 21, i1 false)
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !204
  %i.af = load ptr, ptr %1, align 8, !tbaa !202
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 0, ptr %i.ag, align 1, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ah = invoke ptr @_ZNK17cmGeneratorTarget11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %.noexc.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !202   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.r
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !203
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.not29 = icmp eq ptr %i.ah, null
  br i1 %.not29, label %bb.i, label %_ZNK7cmValue4IsOnEv.exit

_ZNK7cmValue4IsOnEv.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !202
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = call noundef zeroext i1 @_ZN7cmValue4IsOnESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ao, ptr %i.am) #23
  br i1 %i.ap, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK7cmValue4IsOnEv.exit
  call void @_ZN22cmComputeTargetDepends24OptimizeLinkDependenciesEPK17cmGeneratorTargetR15cmGraphEdgeListRKS3_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.j

bb.g:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %1, align 8, !tbaa !202   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.r
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.g
  %i.at = load i64, ptr %i.r, align 8, !tbaa !203
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.aq

bb.h:                                             ; preds = %_ZNK7cmValue4IsOnEv.exit
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11cmGraphEdgeSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI11cmGraphEdgeSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %i.ax = add nuw i64 %.02131, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !273
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends18DisplaySideEffectsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.17, i64 22, i64 1, ptr %i.c) #29 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !211  ; 2 uses
  %.not44 = icmp eq ptr %i.g, %i.h
  br i1 %.not44, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv i64 %i.k, 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %bb.b

._crit_edge43:                                    ; preds = %._crit_edge39, %bb.a
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !260
  %fputc = call i32 @fputc(i32 10, ptr %i.o)      ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph42, %._crit_edge39
  %.040 = phi i64 [ 0, %.lr.ph42 ], [ %i.ax, %._crit_edge39 ] ; 6 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.040
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !246
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.r)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.12, i64 noundef %.040, ptr noundef %i.u) #28 ; 0 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !211  ; 2 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.w, i64 %.040
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !259
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.ac = call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %i.ab) #29 ; 0 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.040 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.025.031 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !246
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.am = load i64, ptr %i.al, align 8, !tbaa !201
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.an)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !202
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.19, i64 noundef %i.am, ptr noundef %i.ap) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ar = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.025.031) #30 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.ah
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !211
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.b
  %i.as = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.ad, %bb.c ], [ %i.w, %bb.b ]
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %.040 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 2 uses
  %.not2835 = icmp eq ptr %i.av, %i.aw
  br i1 %.not2835, label %._crit_edge39, label %.lr.ph38

._crit_edge39:                                    ; preds = %._crit_edge, %.loopexit
  %i.ax = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %umax
  br i1 %exitcond.not, label %._crit_edge43, label %bb.b, !llvm.loop !274

.lr.ph38:                                         ; preds = %.loopexit, %._crit_edge
  %.sroa.021.036 = phi ptr [ %i.bf, %._crit_edge ], [ %i.av, %.loopexit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 32
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !202
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.20, ptr noundef %i.ba) #28 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 72 ; 2 uses
  %.not2932 = icmp eq ptr %i.bd, %i.be
  br i1 %.not2932, label %._crit_edge, label %.lr.ph34

._crit_edge:                                      ; preds = %.lr.ph34, %.lr.ph38
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.036) #30 ; 2 uses
  %.not28 = icmp eq ptr %i.bf, %i.aw
  br i1 %.not28, label %._crit_edge39, label %.lr.ph38

.lr.ph34:                                         ; preds = %.lr.ph38, %.lr.ph34
  %.sroa.017.033 = phi ptr [ %i.bp, %.lr.ph34 ], [ %i.bd, %.lr.ph38 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.033, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !246
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !246
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !201
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.bl)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !202
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.19, i64 noundef %i.bk, ptr noundef %i.bn) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.017.033) #30 ; 2 uses
  %.not29 = icmp eq ptr %i.bp, %i.be
  br i1 %.not29, label %._crit_edge, label %.lr.ph34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends17DisplayComponentsERK23cmComputeComponentGraphRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.b = load ptr, ptr %2, align 8, !tbaa !202
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.b) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %.not23 = icmp eq ptr %i.f, %i.g
  br i1 %.not23, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv i64 %i.j, 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  br label %bb.b

._crit_edge22:                                    ; preds = %._crit_edge, %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !260
  %fputc = tail call i32 @fputc(i32 10, ptr %i.m) ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph21, %._crit_edge
  %.019 = phi i64 [ 0, %.lr.ph21 ], [ %i.u, %._crit_edge ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.019 ; 2 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.22, i64 noundef %.019) #28 ; 0 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !275  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !275  ; 2 uses
  %.not17 = icmp eq ptr %i.r, %i.t
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.u = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %umax
  br i1 %exitcond.not, label %._crit_edge22, label %bb.b, !llvm.loop !276

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.014.018 = phi ptr [ %i.ad, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %i.v = load i64, ptr %.sroa.014.018, align 8, !tbaa !201 ; 2 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !260
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !246
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.z)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !202
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.23, i64 noundef %i.v, ptr noundef %i.ab) #28 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22cmComputeTargetDepends19ComputeFinalDependsERK23cmComputeComponentGraph(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %2 = alloca %"class.std::set.960", align 8      ; 13 uses
  %3 = alloca %"class.std::set.960", align 8      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241  ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !244  ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24                  ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245  ; 2 uses
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !207  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3                 ; 3 uses
  %i.ac = icmp ugt i64 %i.u, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = sub nuw nsw i64 %i.u, %i.ab
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ad)
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !241 ; 2 uses
  %.pre125 = load ptr, ptr %i.b, align 8, !tbaa !244 ; 2 uses
  %.pre130 = ptrtoint ptr %.pre to i64
  %.pre131 = ptrtoint ptr %.pre125 to i64
  %.pre133 = sub i64 %.pre130, %.pre131
  %.pre135 = sdiv exact i64 %.pre133, 24
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %i.u, %i.ab
  br i1 %i.ae, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.af, ptr %i.v, align 8, !tbaa !245
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi136 = phi i64 [ %.pre135, %bb.b ], [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = phi ptr [ %.pre125, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ah = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !245 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !207 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 3 uses
  %i.aq = icmp ugt i64 %.pre-phi136, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ar = sub nuw nsw i64 %.pre-phi136, %i.ap
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.ar)
  %.pre126 = load ptr, ptr %i.o, align 8, !tbaa !241 ; 2 uses
  %.pre127 = load ptr, ptr %i.b, align 8, !tbaa !244 ; 2 uses
  %.pre137 = ptrtoint ptr %.pre126 to i64
  %.pre139 = ptrtoint ptr %.pre127 to i64
  %.pre141 = sub i64 %.pre137, %.pre139
  %.pre143 = sdiv i64 %.pre141, 24
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit70

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.as = icmp ult i64 %.pre-phi136, %i.ap
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorImSaImEE6resizeEm.exit70

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.pre-phi136 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i68, label %_ZNSt6vectorImSaImEE6resizeEm.exit70, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69:      ; preds = %bb.g
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !245
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit70

_ZNSt6vectorImSaImEE6resizeEm.exit70:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69
  %.pre-phi144 = phi i64 [ %.pre143, %bb.e ], [ %.pre-phi136, %bb.f ], [ %.pre-phi136, %bb.g ], [ %.pre-phi136, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69 ]
  %i.au = phi ptr [ %.pre127, %bb.e ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ], [ %i.ag, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69 ]
  %i.av = phi ptr [ %.pre126, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.ah, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i69 ]
  %.not110 = icmp eq ptr %i.av, %i.au
  br i1 %.not110, label %.critedge65, label %.lr.ph113

.lr.ph113:                                        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit70
  %i.aw = load i64, ptr @_ZN23cmComputeComponentGraph17INVALID_COMPONENTE, align 8, !tbaa !201 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre-phi144, i64 1)
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bc, i64 0
  %i.bh = shufflevector <2 x ptr> %i.bg, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph113, %bb.q
  %.057111 = phi i64 [ 0, %.lr.ph113 ], [ %i.cc, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 0, ptr %i.ax, align 8, !tbaa !9
  store ptr null, ptr %i.ay, align 8, !tbaa !16
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !17
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !18
  store i64 0, ptr %i.bb, align 8, !tbaa !259
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %.057111 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !275, !noalias !277 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !275, !noalias !282 ; 2 uses
  %.not89108 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not89108, label %.critedge61, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.o
  %.sroa.087.0109 = phi ptr [ %i.bn, %bb.o ], [ %i.bl, %bb.h ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.087.0109, i64 -8 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 0, ptr %i.bc, align 8, !tbaa !9
  store ptr null, ptr %i.bd, align 8, !tbaa !16
  store <2 x ptr> %i.bh, ptr %i.be, align 8, !tbaa !254
  store i64 0, ptr %i.bf, align 8, !tbaa !259
  %i.bp = invoke noundef zeroext i1 @_ZN22cmComputeTargetDepends14IntraComponentERKSt6vectorImSaImEEmmPmRSt3setImSt4lessImES1_ESA_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.057111, i64 noundef %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.i unwind label %.loopexit91

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.bp, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN22cmComputeTargetDepends25ComplainAboutBadComponentERK23cmComputeComponentGraphmb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %.057111, i1 noundef zeroext true)
          to label %bb.l unwind label %.loopexit.split-lp

.loopexit91:                                      ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit91
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit91 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %lpad.phi

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bq)
          to label %.critedge63 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #26
  unreachable

.critedge:                                        ; preds = %bb.i
  %i.bt = load ptr, ptr %i.bd, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bt)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

bb.o:                                             ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not89 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not89, label %.critedge61.loopexit, label %.lr.ph

.critedge61.loopexit:                             ; preds = %bb.o
  %.pre128 = load i64, ptr %i.a, align 8, !tbaa !201
  %.pre129 = load ptr, ptr %i.ay, align 8, !tbaa !16
  br label %.critedge61

.critedge61:                                      ; preds = %.critedge61.loopexit, %bb.h
  %i.bw = phi ptr [ %.pre129, %.critedge61.loopexit ], [ null, %bb.h ]
  %i.bx = phi i64 [ %.pre128, %.critedge61.loopexit ], [ %i.aw, %bb.h ]
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.057111
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !201
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bw)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.critedge61
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

bb.q:                                             ; preds = %.critedge61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cc = add nuw i64 %.057111, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %umax
  br i1 %exitcond.not, label %.critedge65, label %bb.h, !llvm.loop !285

.critedge63:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.cd)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit74 unwind label %bb.r

bb.r:                                             ; preds = %.critedge63
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit74:           ; preds = %.critedge63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.loopexit

.critedge65:                                      ; preds = %bb.q, %_ZNSt6vectorImSaImEE6resizeEm.exit70
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !217 ; 2 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.ci
  br i1 %.not, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.critedge65
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv i64 %i.cl, 24
  %umax123 = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %._crit_edge
  %.048117 = phi i64 [ %i.cv, %._crit_edge ], [ 0, %.lr.ph118.preheader ] ; 3 uses
  %i.cn = load ptr, ptr %i.ai, align 8, !tbaa !207
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.048117
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !201
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.048117 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !262 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !262 ; 2 uses
  %.not90114 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not90114, label %._crit_edge, label %.lr.ph116

._crit_edge:                                      ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit, %.lr.ph118
  %i.cv = add nuw i64 %.048117, 1                 ; 2 uses
  %exitcond124.not = icmp eq i64 %i.cv, %umax123
  br i1 %exitcond124.not, label %.loopexit, label %.lr.ph118, !llvm.loop !286

.lr.ph116:                                        ; preds = %.lr.ph118, %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit
  %.sroa.083.0115 = phi ptr [ %i.fi, %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit ], [ %i.cs, %.lr.ph118 ] ; 7 uses
  %i.cw = load i64, ptr %.sroa.083.0115, align 8, !tbaa !264
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !201 ; 2 uses
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !216
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cp ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 8
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !271, !range !239, !noundef !240 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 9
  %i.df = load i8, ptr %i.de, align 1, !tbaa !287, !range !239, !noundef !240 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !221 ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !234
  %.not.i = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.lr.ph116
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !222 ; 2 uses
  %i.dn = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !288
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !203
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !231
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !231
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ds = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.dh, align 8, !tbaa !221
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %i.dt = phi ptr [ %.pre.i, %bb.v ], [ %i.di, %bb.u ], [ %i.di, %bb.s ]
  store i64 %i.cz, ptr %i.di, align 8, !tbaa !264
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.dd, ptr %i.du, align 8, !tbaa !271
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 9
  store i8 %i.df, ptr %i.dv, align 1, !tbaa !287
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x ptr> %i.dn, ptr %i.dw, align 8, !tbaa !288
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store ptr %i.dx, ptr %i.dh, align 8, !tbaa !221
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit

bb.w:                                             ; preds = %.lr.ph116
  %i.dy = load ptr, ptr %i.db, align 8, !tbaa !218 ; 5 uses
  %i.dz = ptrtoint ptr %i.di to i64
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775776
  br i1 %i.ec, label %bb.x, label %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #25
  unreachable

_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.ed = ashr exact i64 %i.eb, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 288230376151711743)
  %i.eh = select i1 %i.ef, i64 288230376151711743, i64 %i.eg ; 3 uses
  %.not.i.i75 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i75, label %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ei = shl nuw nsw i64 %i.eh, 5
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #27
  br label %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.y, %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ek = phi ptr [ %i.ej, %bb.y ], [ null, %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i ] ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eb ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !222 ; 2 uses
  %i.eo = load <2 x ptr>, ptr %i.dg, align 8, !tbaa !288
  %.not.i.i.i.i.i.i76 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i.i76, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !203
  %.not.i.i.i.i.i.i.i77 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i.i77, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !231
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !231
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.et = atomicrmw volatile add ptr %i.ep, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i
  store i64 %i.cz, ptr %i.el, align 8, !tbaa !264
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i8 %i.dd, ptr %i.eu, align 8, !tbaa !271
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 9
  store i8 %i.df, ptr %i.ev, align 1, !tbaa !287
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x ptr> %i.eo, ptr %i.ew, align 8, !tbaa !288
  %.not10.i.i.i.i = icmp eq ptr %i.dy, %i.di
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ek, %bb.ac ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i ], [ %i.dy, %bb.ac ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 10, i1 false), !alias.scope !294
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.fa = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !288, !alias.scope !292, !noalias !289
  store ptr null, ptr %i.ez, align 8, !tbaa !222, !alias.scope !292, !noalias !289
  store <2 x ptr> %i.fa, ptr %i.ex, align 8, !tbaa !288, !alias.scope !289, !noalias !292
  store ptr null, ptr %i.ey, align 8, !tbaa !295, !alias.scope !292, !noalias !289
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %i.fb, %i.di
  br i1 %.not.i.i.i29.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, label %.lr.ph.i.i.i.i, !llvm.loop !296

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i: ; preds = %.lr.ph.i.i.i.i, %bb.ac
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ek, %bb.ac ], [ %i.fc, %.lr.ph.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i37.i = icmp eq ptr %i.dy, null
  br i1 %.not.i37.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i
  %i.fe = load ptr, ptr %i.dj, align 8, !tbaa !234
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.fg) #24
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit: ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, %bb.ad
  store ptr %i.ek, ptr %i.db, align 8, !tbaa !218
  store ptr %i.fd, ptr %i.dh, align 8, !tbaa !221
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.eh
  store ptr %i.fh, ptr %i.dj, align 8, !tbaa !234
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit: ; preds = %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.083.0115, i64 32 ; 2 uses
  %.not90 = icmp eq ptr %i.fi, %i.cu
  br i1 %.not90, label %._crit_edge, label %.lr.ph116

.loopexit:                                        ; preds = %._crit_edge, %.critedge65, %_ZNSt3setImSt4lessImESaImEED2Ev.exit74
  %.not99 = phi i1 [ false, %_ZNSt3setImSt4lessImESaImEED2Ev.exit74 ], [ true, %.critedge65 ], [ true, %._crit_edge ]
  ret i1 %.not99
}

; Function Attrs: nounwind
declare void @_ZN23cmComputeComponentGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmComputeTargetDepends22GetTargetDirectDependsEPK17cmGeneratorTargetR17cmTargetDependSet(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(232) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.cmTargetDepend, align 8      ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE4findERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !254 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !255

_ZNSt8_Rb_treeIPK17cmGeneratorTargetSt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPK17cmGeneratorTargetmSt4lessIS2_ESaISt4pairIKS2_mEEE4findERS6_.exit, label %bb.b

end_hunk_0
