inline.NumInlined: 6448
inline.NumDeleted: 2427
begin_hunk_0_@_ZN6google8protobuf24MergedDescriptorDatabase23FindAllExtensionNumbersESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIiSaIiEE:bb.a

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.af, %.critedge.loopexit23.i.i.i, %bb.ad
  %.sroa.052.1 = phi ptr [ %.116.i.i.i, %bb.af ], [ %.sroa.052.090, %bb.ad ], [ %i.gx, %.critedge.loopexit23.i.i.i ], [ %.sroa.052.090, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.af ], [ %i.gs, %bb.ad ], [ %i.hn, %.critedge.loopexit23.i.i.i ], [ %i.gs, %.lr.ph.i.i.i ] ; 2 uses
  %i.ho = icmp ne ptr %.sroa.052.1, %i.ev
  %i.hp = icmp ne i32 %.sroa.8.1, %i.fa
  %.not3.i = select i1 %i.ho, i1 true, i1 %i.hp
  br i1 %.not3.i, label %bb.x, label %._crit_edge94.loopexit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.t
  %.pn27.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ep, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.hq = load ptr, ptr %6, align 8, !tbaa !137   ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !136
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit40

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn27.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !356
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16clear_and_deleteEPS8_PS6_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf24MergedDescriptorDatabase16FindAllFileNamesEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.112", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344  ; 2 uses
  %.not33 = icmp eq ptr %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.171, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph36, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.035 = phi i1 [ false, %.lr.ph36 ], [ %.171, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %.sroa.023.034 = phi ptr [ %i.b, %.lr.ph36 ], [ %i.cw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.023.034, align 8, !tbaa !337 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre38 = load ptr, ptr %2, align 8, !tbaa !30  ; 2 uses
  %.pre40 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  br i1 %i.m, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.o = load ptr, ptr %1, align 8, !tbaa !30
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5
  %i.t = ptrtoint ptr %.pre40 to i64
  %i.u = ptrtoint ptr %.pre38 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 5
  %i.x = add nsw i64 %i.w, %i.s
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.x)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not2631 = icmp eq ptr %i.y, %i.z
  br i1 %.not2631, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %.lr.ph

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ab = phi ptr [ %i.ch, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ], [ %.pre, %.lr.ph.preheader ] ; 8 uses
  %.sroa.019.032 = phi ptr [ %i.ci, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ], [ %i.y, %.lr.ph.preheader ] ; 12 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !85
  %i.ae = load ptr, ptr %.sroa.019.032, align 8, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !21
  %i.al = load i64, ptr %i.af, align 8, !tbaa !29
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !25
  store ptr %i.af, ptr %.sroa.019.032, align 8, !tbaa !21
  store i64 0, ptr %i.am, align 8, !tbaa !25
  store i8 0, ptr %i.af, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %1, align 8, !tbaa !30    ; 5 uses
  %i.as = ptrtoint ptr %i.ab to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775776
  br i1 %i.av, label %bb.j, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #32
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.aw = ashr exact i64 %i.au, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 288230376151711743)
  %i.ba = select i1 %i.ay, i64 288230376151711743, i64 %i.az ; 3 uses
  %.not.i.i15 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i15, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %4 = shl nuw nsw i64 %i.ba, 5
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %.loopexit27

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %3, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %6 = phi ptr [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %5, %3 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 %i.au ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !85
  %i.bd = load ptr, ptr %.sroa.019.032, align 8, !tbaa !21 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !21
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !29
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !29
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.bl = phi i64 [ %i.bh, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !25
  store ptr %i.be, ptr %.sroa.019.032, align 8, !tbaa !21
  store i64 0, ptr %i.bm, align 8, !tbaa !25
  store i8 0, ptr %i.be, align 8, !tbaa !29
  %.not10.i.i.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.bo, ptr %.012.i.i.i.i, align 8, !tbaa !85, !alias.scope !375, !noalias !378
  %i.bp = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !21, !alias.scope !378, !noalias !375 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25, !alias.scope !378, !noalias !375 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false), !alias.scope !380
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bp, ptr %.012.i.i.i.i, align 8, !tbaa !21, !alias.scope !375, !noalias !378
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !29, !alias.scope !378, !noalias !375
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !29, !alias.scope !375, !noalias !378
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !25, !alias.scope !378, !noalias !375
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16, %bb.l
  %i.bx = phi i64 [ %i.bt, %bb.l ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !25, !alias.scope !375, !noalias !378
  store ptr %i.bq, ptr %.0911.i.i.i.i, align 8, !tbaa !21, !alias.scope !378, !noalias !375
  store i64 0, ptr %i.by, align 8, !tbaa !25, !alias.scope !378, !noalias !375
  store i8 0, ptr %i.bq, align 8, !tbaa !29, !alias.scope !378, !noalias !375
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !381

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.cb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.ar, null
  br i1 %.not.i27.i, label %.noexc, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.cf) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.m, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %6, ptr %1, align 8, !tbaa !30
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.ba
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ch = phi ptr [ %i.cc, %.noexc ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.019.032, i64 32 ; 2 uses
  %.not26 = icmp eq ptr %i.ci, %i.z
  br i1 %.not26, label %.loopexit.loopexit, label %.lr.ph

.loopexit27:                                      ; preds = %3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %.pre37 = load ptr, ptr %2, align 8, !tbaa !30
  %.pre39 = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.cj = phi ptr [ %.pre40, %bb.c ], [ %.pre39, %.loopexit.loopexit ] ; 2 uses
  %i.ck = phi ptr [ %.pre38, %bb.c ], [ %.pre37, %.loopexit.loopexit ] ; 3 uses
  %.1 = phi i1 [ %.035, %bb.c ], [ true, %.loopexit.loopexit ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ck, %.loopexit ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !29
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, %i.cj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %.171 = phi i1 [ %.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.1, %.loopexit ], [ true, %bb.e ] ; 2 uses
  %i.cr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %.loopexit ], [ %i.y, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.023.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cw, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %.loopexit27, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit27 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !382, !noalias !385
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !385, !noalias !382 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25, !alias.scope !385, !noalias !382 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !387
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !382, !noalias !385
  %i.x = load i64, ptr %i.r, align 8, !tbaa !29, !alias.scope !385, !noalias !382
  store i64 %i.x, ptr %i.p, align 8, !tbaa !29, !alias.scope !382, !noalias !385
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !25, !alias.scope !385, !noalias !382
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !25, !alias.scope !382, !noalias !385
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !385, !noalias !382
  store i64 0, ptr %i.z, align 8, !tbaa !25, !alias.scope !385, !noalias !382
  store i8 0, ptr %i.r, align 8, !tbaa !29, !alias.scope !385, !noalias !382
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !381

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !29
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
end_hunk_0
