inline.NumInlined: 5768
inline.NumDeleted: 1912
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_117index_factory_subEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10MetricTypeEb:bb.a
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %.sroa.0.0.copyload.i.i695 = load ptr, ptr %i.aec, align 8, !tbaa !62, !noalias !117
  store ptr %i.pg, ptr %43, align 8, !tbaa !16, !alias.scope !117
  store i64 0, ptr %i.ph, align 8, !tbaa !23, !alias.scope !117
  %i.aed = ptrtoint ptr %.sroa.0.0.copyload.i.i695 to i64
  %i.aee = ptrtoint ptr %.sroa.05.0.copyload.i.i694 to i64
  %i.aef = sub i64 %i.aed, %i.aee                 ; 8 uses
  %i.aeg = icmp ugt i64 %i.aef, 15
  br i1 %i.aeg, label %bb.gp, label %._crit_edge.i.i.i.i696

bb.gp:                                            ; preds = %bb.go
  %i.aeh = icmp slt i64 %i.aef, 0
  br i1 %i.aeh, label %.noexc.i.i.i699, label %bb.gq

.noexc.i.i.i699:                                  ; preds = %bb.gp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc700 unwind label %.loopexit.split-lp1233

.noexc700:                                        ; preds = %.noexc.i.i.i699
  unreachable

bb.gq:                                            ; preds = %bb.gp
  %i.aei = add nuw i64 %i.aef, 1                  ; 2 uses
  %i.aej = icmp slt i64 %i.aei, 0
  br i1 %i.aej, label %.noexc5.i.i.i698, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i697, !prof !19

.noexc5.i.i.i698:                                 ; preds = %bb.gq
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc701 unwind label %.loopexit.split-lp1233

.noexc701:                                        ; preds = %.noexc5.i.i.i698
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i697: ; preds = %bb.gq
  %i.aek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aei) #36
          to label %.noexc702 unwind label %.loopexit1232 ; 2 uses

.noexc702:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i697
  store ptr %i.aek, ptr %43, align 8, !tbaa !20, !alias.scope !117
  store i64 %i.aef, ptr %i.pg, align 8, !tbaa !22, !alias.scope !117
  br label %._crit_edge.i.i.i.i696

._crit_edge.i.i.i.i696:                           ; preds = %.noexc702, %bb.go
  %i.ael = phi ptr [ %i.aek, %.noexc702 ], [ %i.pg, %bb.go ] ; 3 uses
  switch i64 %i.aef, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gu
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i.i.i696
  %i.aem = load i8, ptr %.sroa.05.0.copyload.i.i694, align 1, !tbaa !22
  store i8 %i.aem, ptr %i.ael, align 1, !tbaa !22
  br label %bb.gu

bb.gs:                                            ; preds = %._crit_edge.i.i.i.i696
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ael, ptr align 1 %.sroa.05.0.copyload.i.i694, i64 %i.aef, i1 false)
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNKSt7__cxx1113match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISA_EEEEixEm.exit692
  store ptr %i.pg, ptr %43, align 8, !tbaa !16, !alias.scope !117
  store i64 0, ptr %i.ph, align 8, !tbaa !23, !alias.scope !117
  store i8 0, ptr %i.pg, align 8, !tbaa !22, !alias.scope !117
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit703

bb.gu:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i.i.i696
  store i64 %i.aef, ptr %i.ph, align 8, !tbaa !23, !alias.scope !117
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aef
  store i8 0, ptr %i.aen, align 1, !tbaa !22
  br label %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit703

_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit703: ; preds = %bb.gu, %bb.gt
  %i.aeo = load ptr, ptr %2, align 8, !tbaa !20   ; 6 uses
  %i.aep = icmp eq ptr %i.aeo, %i.pi
  %i.aeq = load ptr, ptr %43, align 8, !tbaa !20  ; 6 uses
  %i.aer = icmp eq ptr %i.aeq, %i.pg              ; 2 uses
  %.pre2130 = load i64, ptr %i.ph, align 8, !tbaa !23 ; 5 uses
  br i1 %i.aep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit703
  br i1 %i.aer, label %bb.gv, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEcvS9_Ev.exit703
  br i1 %i.aer, label %bb.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.gv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aes = icmp ult i64 %.pre2130, 16
  call void @llvm.assume(i1 %i.aes)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.gw, !prof !19

bb.gw:                                            ; preds = %bb.gv
  switch i64 %.pre2130, label %bb.gy [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.gx
  ]

bb.gx:                                            ; preds = %bb.gw
  %i.aet = load i8, ptr %i.aeq, align 1, !tbaa !22
  store i8 %i.aet, ptr %i.aeo, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeo, ptr align 1 %i.aeq, i64 %.pre2130, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.gy, %bb.gx, %bb.gw
  %i.aeu = load i64, ptr %i.ph, align 8, !tbaa !23 ; 2 uses
  store i64 %i.aeu, ptr %i.pj, align 8, !tbaa !23
  %i.aev = load ptr, ptr %2, align 8, !tbaa !20
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.aeu
  store i8 0, ptr %i.aew, align 1, !tbaa !22
  %.pre.i705 = load ptr, ptr %43, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aeq, ptr %2, align 8, !tbaa !20
  store i64 %.pre2130, ptr %i.pj, align 8, !tbaa !23
  %i.aex = load i64, ptr %i.pg, align 8, !tbaa !22
  store i64 %i.aex, ptr %i.pi, align 8, !tbaa !22
  br label %bb.ha

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aey = load i64, ptr %i.pi, align 8, !tbaa !22
  store ptr %i.aeq, ptr %2, align 8, !tbaa !20
  store i64 %.pre2130, ptr %i.pj, align 8, !tbaa !23
  %i.aez = load i64, ptr %i.pg, align 8, !tbaa !22
  store i64 %i.aez, ptr %i.pi, align 8, !tbaa !22
  %.not.i704 = icmp eq ptr %i.aeo, null
  br i1 %.not.i704, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aeo, ptr %43, align 8, !tbaa !20
  store i64 %i.aey, ptr %i.pg, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ha:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.pg, ptr %43, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.gz, %bb.ha
  %i.afa = phi ptr [ %.pre.i705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aeo, %bb.gz ], [ %i.pg, %bb.ha ], [ %i.aeq, %bb.gv ]
  store i64 0, ptr %i.ph, align 8, !tbaa !23
  store i8 0, ptr %i.afa, align 1, !tbaa !22
  %i.afb = load ptr, ptr %43, align 8, !tbaa !20  ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.pg
  br i1 %i.afc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.afd = load i64, ptr %i.pg, align 8, !tbaa !22
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afe) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #35
  %i.aff = load ptr, ptr %i.pk, align 8, !tbaa !118 ; 6 uses
  %i.afg = load ptr, ptr %i.pl, align 8, !tbaa !121
  %.not.i709 = icmp eq ptr %i.aff, %i.afg
  br i1 %.not.i709, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708
  store ptr %.110941117, ptr %i.aff, align 8, !tbaa !122
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 2 uses
  store ptr %i.afh, ptr %i.pk, align 8, !tbaa !118
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPS2_EEERS5_DpOT_.exit

bb.hc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708
  %i.afi = load ptr, ptr %40, align 8, !tbaa !124 ; 10 uses
  %i.afj = ptrtoint ptr %i.aff to i64             ; 3 uses
  %i.afk = ptrtoint ptr %i.afi to i64             ; 3 uses
  %i.afl = sub i64 %i.afj, %i.afk                 ; 4 uses
  %i.afm = icmp eq i64 %i.afl, 9223372036854775800
  br i1 %i.afm, label %bb.hd, label %_ZNKSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
          to label %.noexc710 unwind label %.loopexit.split-lp1238

.noexc710:                                        ; preds = %bb.hd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.hc
  %i.afn = ashr exact i64 %i.afl, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.afn, i64 1)
  %i.afo = add nsw i64 %.sroa.speculated.i.i.i, %i.afn ; 2 uses
  %i.afp = icmp ult i64 %i.afo, %i.afn
  %i.afq = call i64 @llvm.umin.i64(i64 %i.afo, i64 1152921504606846975)
  %i.afr = select i1 %i.afp, i64 1152921504606846975, i64 %i.afq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.afr, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.afs = shl nuw nsw i64 %i.afr, 3
  %i.aft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afs) #36
          to label %.noexc711 unwind label %.loopexit1237 ; 10 uses

.noexc711:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afl
  store ptr %.110941117, ptr %i.afu, align 8, !tbaa !122
  %.not10.i.i.i.i.i = icmp eq ptr %i.afi, %i.aff
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc711
  %86 = sub i64 %i.afj, %i.afk
  %87 = add i64 %86, -8                           ; 2 uses
  %i.afv = lshr i64 %87, 3
  %i.afw = add nuw nsw i64 %i.afv, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %87, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader3026, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aft, i64 8
  %i.afx = add i64 %i.afj, -8
  %i.afy = sub i64 %i.afx, %i.afk
  %i.afz = and i64 %i.afy, -8                     ; 2 uses
  %scevgep2904 = getelementptr i8, ptr %scevgep, i64 %i.afz
  %scevgep2905 = getelementptr i8, ptr %i.afi, i64 8
  %scevgep2906 = getelementptr i8, ptr %scevgep2905, i64 %i.afz
  %bound0 = icmp ult ptr %i.aft, %scevgep2906
  %bound1 = icmp ult ptr %i.afi, %scevgep2904
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader3026, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.afw, 4611686018427387900    ; 3 uses
  %i.aga = shl i64 %n.vec, 3                      ; 2 uses
  %i.agb = getelementptr i8, ptr %i.aft, i64 %i.aga ; 2 uses
  %i.agc = getelementptr i8, ptr %i.afi, i64 %i.aga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agd = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aft, i64 %i.agd ; 2 uses
  %next.gep2907 = getelementptr i8, ptr %i.afi, i64 %i.agd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.age = getelementptr i8, ptr %next.gep2907, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep2907, align 8, !tbaa !122, !alias.scope !130, !noalias !125
  %wide.load2908 = load <2 x i64>, ptr %i.age, align 8, !tbaa !122, !alias.scope !130, !noalias !125
  %i.agf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !122, !alias.scope !133, !noalias !130
  store <2 x i64> %wide.load2908, ptr %i.agf, align 8, !tbaa !122, !alias.scope !133, !noalias !130
  %i.agg = getelementptr i8, ptr %next.gep2907, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2907, align 8, !tbaa !122, !alias.scope !130, !noalias !125
  store <2 x ptr> splat (ptr null), ptr %i.agg, align 8, !tbaa !122, !alias.scope !130, !noalias !125
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agh = icmp eq i64 %index.next, %n.vec
  br i1 %i.agh, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader3026

.lr.ph.i.i.i.i.i.preheader3026:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aft, %vector.memcheck ], [ %i.aft, %.lr.ph.i.i.i.i.i.preheader ], [ %i.agb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.afi, %vector.memcheck ], [ %i.afi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.agc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader3026, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.agk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3026 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.agj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3026 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.agi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !128, !noalias !125
  store i64 %i.agi, ptr %.012.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !125, !noalias !128
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !128, !noalias !125
  %i.agj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.agj, %i.aff
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !138

_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc711
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aft, %.noexc711 ], [ %i.agb, %middle.block ], [ %i.agk, %.lr.ph.i.i.i.i.i ]
  %i.agl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.afi, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.afi, i64 noundef %i.afl) #38
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.he, %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.aft, ptr %40, align 8, !tbaa !124
  store ptr %i.agl, ptr %i.pk, align 8, !tbaa !118
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.afr
  store ptr %i.agm, ptr %i.pl, align 8, !tbaa !121
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12emplace_backIJRPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.hb
  %i.agn = phi ptr [ %i.agl, %_ZNSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJRPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.afh, %bb.hb ] ; 2 uses
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 -8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !122
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 12
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !139
  br label %._crit_edge.i.i652, !llvm.loop !141

bb.hf:                                            ; preds = %._crit_edge.i.i652
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

.loopexit1217:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit1219 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

.loopexit.split-lp1218:                           ; preds = %.noexc.i.i.i, %.noexc5.i.i.i
  %lpad.loopexit.split-lp1220 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit239.i
  %i.agt = load i64, ptr %i.oe, align 8, !tbaa !22
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.agu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit239.i, %.loopexit1217, %.loopexit.split-lp1218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712
  %.pn280 = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712 ], [ %lpad.loopexit.split-lp1220, %.loopexit.split-lp1218 ], [ %lpad.loopexit1219, %.loopexit1217 ], [ %.pn48.pn.pn.pn.pn.i, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit239.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #35
  br label %bb.hg

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, %bb.hf
  %.pn280.pn = phi { ptr, i32 } [ %.pn280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714 ], [ %i.ags, %bb.hf ]
  %i.agv = load ptr, ptr %41, align 8, !tbaa !20  ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.oa
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715: ; preds = %bb.hg
  %i.agx = load i64, ptr %i.oa, align 8, !tbaa !22
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit717: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i715
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #35
  br label %bb.qp

.loopexit1232:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i697
  %lpad.loopexit1234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.loopexit.split-lp1233:                           ; preds = %.noexc.i.i.i699, %.noexc5.i.i.i698
  %lpad.loopexit.split-lp1235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hh:                                            ; preds = %.loopexit.split-lp1233, %.loopexit1232
  %lpad.phi1236 = phi { ptr, i32 } [ %lpad.loopexit1234, %.loopexit1232 ], [ %lpad.loopexit.split-lp1235, %.loopexit.split-lp1233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #35
  br label %bb.qp

.loopexit1237:                                    ; preds = %_ZNKSt6vectorISt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1239 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

.loopexit.split-lp1238:                           ; preds = %bb.hd
  %lpad.loopexit.split-lp1240 = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit685
  %i.agz = load ptr, ptr %40, align 8, !tbaa !124 ; 4 uses
  %.not284 = icmp eq ptr %i.pm, %i.agz
  br i1 %.not284, label %bb.hx, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #35
  %i.aha = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  store ptr %i.aha, ptr %45, align 8, !tbaa !16
  %i.ahb = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %i.ahc = load i64, ptr %i.pj, align 8, !tbaa !23 ; 8 uses
  %i.ahd = icmp ugt i64 %i.ahc, 15
  br i1 %i.ahd, label %bb.hk, label %._crit_edge.i.i718

bb.hk:                                            ; preds = %bb.hj
  %i.ahe = icmp slt i64 %i.ahc, 0
  br i1 %i.ahe, label %.noexc.i720, label %bb.hl

.noexc.i720:                                      ; preds = %bb.hk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc721 unwind label %bb.hs

.noexc721:                                        ; preds = %.noexc.i720
  unreachable

bb.hl:                                            ; preds = %bb.hk
  %i.ahf = add nuw i64 %i.ahc, 1                  ; 2 uses
  %i.ahg = icmp slt i64 %i.ahf, 0
  br i1 %i.ahg, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i719, !prof !19

.noexc6.i:                                        ; preds = %bb.hl
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc722 unwind label %bb.hs

.noexc722:                                        ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i719: ; preds = %bb.hl
  %i.ahh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahf) #36
          to label %.noexc723 unwind label %bb.hs ; 2 uses

end_hunk_0
begin_hunk_1_@_ZN5faiss12_GLOBAL__N_117index_factory_subEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10MetricTypeEb:bb.a
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body748

bb.iq:                                            ; preds = %bb.in, %bb.if
  unreachable

bb.ir:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #35
  %i.ama = add nsw i32 %.01092, 1
  %i.amb = sext i32 %i.ama to i64                 ; 5 uses
  %i.amc = icmp ult i64 %i.aka, %i.amb
  br i1 %i.amc, label %bb.is, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.is:                                            ; preds = %bb.ir
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.244, i64 noundef %i.amb, i64 noundef %i.aka) #34
          to label %.noexc752 unwind label %.loopexit.split-lp

.noexc752:                                        ; preds = %bb.is
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.ir
  %i.amd = trunc i64 %.03959.i to i32
  %i.ame = xor i32 %.01092, -1
  %i.amf = add i32 %i.amd, %i.ame
  %i.amg = sext i32 %i.amf to i64
  store ptr %i.ajj, ptr %47, align 8, !tbaa !16, !alias.scope !154
  %i.amh = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.amb ; 2 uses
  %i.ami = sub nuw i64 %i.aka, %i.amb
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.amg, i64 %i.ami) ; 8 uses
  %i.amj = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.amj, label %bb.it, label %._crit_edge.i.i.i750

bb.it:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.amk = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.amk, label %.noexc10.i.i, label %bb.iu

.noexc10.i.i:                                     ; preds = %bb.it
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc753 unwind label %.loopexit.split-lp

.noexc753:                                        ; preds = %.noexc10.i.i
  unreachable

bb.iu:                                            ; preds = %bb.it
  %i.aml = add nuw i64 %spec.select.i.i.i, 1      ; 2 uses
  %i.amm = icmp slt i64 %i.aml, 0
  br i1 %i.amm, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i751, !prof !19

.noexc11.i.i:                                     ; preds = %bb.iu
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc754 unwind label %.loopexit.split-lp

.noexc754:                                        ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i751: ; preds = %bb.iu
  %i.amn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aml) #36
          to label %.noexc755 unwind label %.loopexit ; 2 uses

.noexc755:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i751
  store ptr %i.amn, ptr %47, align 8, !tbaa !20, !alias.scope !154
  store i64 %spec.select.i.i.i, ptr %i.ajj, align 8, !tbaa !22, !alias.scope !154
  br label %._crit_edge.i.i.i750

._crit_edge.i.i.i750:                             ; preds = %.noexc755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.amo = phi ptr [ %i.amn, %.noexc755 ], [ %i.ajj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.iw [
    i64 1, label %bb.iv
    i64 0, label %bb.ix
  ]

bb.iv:                                            ; preds = %._crit_edge.i.i.i750
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !22
  store i8 %i.amp, ptr %i.amo, align 1, !tbaa !22
  br label %bb.ix

bb.iw:                                            ; preds = %._crit_edge.i.i.i750
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amo, ptr align 1 %i.amh, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %._crit_edge.i.i.i750
  store i64 %spec.select.i.i.i, ptr %i.ajk, align 8, !tbaa !23, !alias.scope !154
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %spec.select.i.i.i
  store i8 0, ptr %i.amq, align 1, !tbaa !22
  %i.amr = load ptr, ptr %i.ajl, align 8, !tbaa !157 ; 6 uses
  %i.ams = load ptr, ptr %46, align 8, !tbaa !160 ; 10 uses
  %i.amt = ptrtoint ptr %i.amr to i64             ; 3 uses
  %i.amu = ptrtoint ptr %i.ams to i64             ; 3 uses
  %i.amv = sub i64 %i.amt, %i.amu                 ; 4 uses
  %i.amw = ashr exact i64 %i.amv, 3               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #35
  store ptr %i.ajm, ptr %49, align 8, !tbaa !16
  %i.amx = load ptr, ptr %47, align 8, !tbaa !20  ; 2 uses
  %i.amy = load i64, ptr %i.ajk, align 8, !tbaa !23 ; 8 uses
  %i.amz = icmp ugt i64 %i.amy, 15
  br i1 %i.amz, label %bb.iy, label %._crit_edge.i.i756

bb.iy:                                            ; preds = %bb.ix
  %i.ana = icmp slt i64 %i.amy, 0
  br i1 %i.ana, label %.noexc.i759, label %bb.iz

.noexc.i759:                                      ; preds = %bb.iy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc760 unwind label %.loopexit.split-lp1193

.noexc760:                                        ; preds = %.noexc.i759
  unreachable

bb.iz:                                            ; preds = %bb.iy
  %i.anb = add nuw i64 %i.amy, 1                  ; 2 uses
  %i.anc = icmp slt i64 %i.anb, 0
  br i1 %i.anc, label %.noexc6.i758, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i757, !prof !19

.noexc6.i758:                                     ; preds = %bb.iz
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc761 unwind label %.loopexit.split-lp1193

.noexc761:                                        ; preds = %.noexc6.i758
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i757: ; preds = %bb.iz
  %i.and = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anb) #36
          to label %.noexc762 unwind label %.loopexit1192 ; 2 uses

.noexc762:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i757
  store ptr %i.and, ptr %49, align 8, !tbaa !20
  store i64 %i.amy, ptr %i.ajm, align 8, !tbaa !22
  br label %._crit_edge.i.i756

._crit_edge.i.i756:                               ; preds = %.noexc762, %bb.ix
  %i.ane = phi ptr [ %i.and, %.noexc762 ], [ %i.ajm, %bb.ix ] ; 3 uses
  switch i64 %i.amy, label %bb.jb [
    i64 1, label %bb.ja
    i64 0, label %bb.jc
  ]

bb.ja:                                            ; preds = %._crit_edge.i.i756
  %i.anf = load i8, ptr %i.amx, align 1, !tbaa !22
  store i8 %i.anf, ptr %i.ane, align 1, !tbaa !22
  br label %bb.jc

bb.jb:                                            ; preds = %._crit_edge.i.i756
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ane, ptr align 1 %i.amx, i64 %i.amy, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %._crit_edge.i.i756
  store i64 %i.amy, ptr %i.ajn, align 8, !tbaa !23
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 %i.amy
  store i8 0, ptr %i.ang, align 1, !tbaa !22
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_117index_factory_subEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10MetricTypeEb(ptr dead_on_unwind noalias writable align 8 %48, i32 noundef %.0, ptr noundef align 8 %49, i32 noundef %3, i1 noundef zeroext true)
          to label %bb.jd unwind label %bb.ks

bb.jd:                                            ; preds = %bb.jc
  %i.anh = load ptr, ptr %i.ajo, align 8, !tbaa !161
  %.not.i.i = icmp eq ptr %i.amr, %i.anh
  br i1 %.not.i.i, label %bb.je, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.jd
  %i.ani = load i64, ptr %48, align 8, !tbaa !48
  store i64 %i.ani, ptr %i.amr, align 8, !tbaa !48
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  store ptr %i.anj, ptr %i.ajl, align 8, !tbaa !157
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit767

bb.je:                                            ; preds = %bb.jd
  %i.ank = icmp eq i64 %i.amv, 9223372036854775800
  br i1 %i.ank, label %bb.jf, label %_ZNKSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
          to label %.noexc1078 unwind label %.loopexit.split-lp1198

.noexc1078:                                       ; preds = %bb.jf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.je
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.amw, i64 1)
  %i.anl = add nsw i64 %.sroa.speculated.i.i, %i.amw ; 2 uses
  %i.anm = icmp ult i64 %i.anl, %i.amw
  %i.ann = call i64 @llvm.umin.i64(i64 %i.anl, i64 1152921504606846975)
  %i.ano = select i1 %i.anm, i64 1152921504606846975, i64 %i.ann ; 3 uses
  %.not.i.i1076 = icmp ne i64 %i.ano, 0
  call void @llvm.assume(i1 %.not.i.i1076)
  %i.anp = shl nuw nsw i64 %i.ano, 3
  %i.anq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anp) #36
          to label %.noexc1079 unwind label %.loopexit1197 ; 10 uses

.noexc1079:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.amv
  %i.ans = load i64, ptr %48, align 8, !tbaa !48
  store i64 %i.ans, ptr %i.anr, align 8, !tbaa !48
  %.not10.i.i.i.i = icmp eq ptr %i.ams, %i.amr
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc1079
  %88 = sub i64 %i.amt, %i.amu
  %89 = add i64 %88, -8                           ; 2 uses
  %i.ant = lshr i64 %89, 3
  %i.anu = add nuw nsw i64 %i.ant, 1              ; 2 uses
  %min.iters.check2919 = icmp ult i64 %89, 56
  br i1 %min.iters.check2919, label %.lr.ph.i.i.i.i.preheader2933, label %vector.memcheck2910

vector.memcheck2910:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep2911 = getelementptr i8, ptr %i.anq, i64 8
  %i.anv = add i64 %i.amt, -8
  %i.anw = sub i64 %i.anv, %i.amu
  %i.anx = and i64 %i.anw, -8                     ; 2 uses
  %scevgep2912 = getelementptr i8, ptr %scevgep2911, i64 %i.anx
  %scevgep2913 = getelementptr i8, ptr %i.ams, i64 8
  %scevgep2914 = getelementptr i8, ptr %scevgep2913, i64 %i.anx
  %bound02915 = icmp ult ptr %i.anq, %scevgep2914
  %bound12916 = icmp ult ptr %i.ams, %scevgep2912
  %found.conflict2917 = and i1 %bound02915, %bound12916
  br i1 %found.conflict2917, label %.lr.ph.i.i.i.i.preheader2933, label %vector.ph2920

vector.ph2920:                                    ; preds = %vector.memcheck2910
  %n.vec2921 = and i64 %i.anu, 4611686018427387900 ; 3 uses
  %i.any = shl i64 %n.vec2921, 3                  ; 2 uses
  %i.anz = getelementptr i8, ptr %i.anq, i64 %i.any ; 2 uses
  %i.aoa = getelementptr i8, ptr %i.ams, i64 %i.any
  br label %vector.body2922

vector.body2922:                                  ; preds = %vector.body2922, %vector.ph2920
  %index2923 = phi i64 [ 0, %vector.ph2920 ], [ %index.next2928, %vector.body2922 ] ; 2 uses
  %i.aob = shl i64 %index2923, 3                  ; 2 uses
  %next.gep2924 = getelementptr i8, ptr %i.anq, i64 %i.aob ; 2 uses
  %next.gep2925 = getelementptr i8, ptr %i.ams, i64 %i.aob ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.aoc = getelementptr i8, ptr %next.gep2925, i64 16
  %wide.load2926 = load <2 x i64>, ptr %next.gep2925, align 8, !tbaa !48, !alias.scope !167, !noalias !162
  %wide.load2927 = load <2 x i64>, ptr %i.aoc, align 8, !tbaa !48, !alias.scope !167, !noalias !162
  %i.aod = getelementptr i8, ptr %next.gep2924, i64 16
  store <2 x i64> %wide.load2926, ptr %next.gep2924, align 8, !tbaa !48, !alias.scope !170, !noalias !167
  store <2 x i64> %wide.load2927, ptr %i.aod, align 8, !tbaa !48, !alias.scope !170, !noalias !167
  %i.aoe = getelementptr i8, ptr %next.gep2925, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2925, align 8, !tbaa !48, !alias.scope !167, !noalias !162
  store <2 x ptr> splat (ptr null), ptr %i.aoe, align 8, !tbaa !48, !alias.scope !167, !noalias !162
  %index.next2928 = add nuw i64 %index2923, 4     ; 2 uses
  %i.aof = icmp eq i64 %index.next2928, %n.vec2921
  br i1 %i.aof, label %middle.block2929, label %vector.body2922, !llvm.loop !172

middle.block2929:                                 ; preds = %vector.body2922
  %cmp.n2930 = icmp eq i64 %i.anu, %n.vec2921
  br i1 %cmp.n2930, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader2933

.lr.ph.i.i.i.i.preheader2933:                     ; preds = %vector.memcheck2910, %.lr.ph.i.i.i.i.preheader, %middle.block2929
  %.012.i.i.i.i.ph = phi ptr [ %i.anq, %vector.memcheck2910 ], [ %i.anq, %.lr.ph.i.i.i.i.preheader ], [ %i.anz, %middle.block2929 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ams, %vector.memcheck2910 ], [ %i.ams, %.lr.ph.i.i.i.i.preheader ], [ %i.aoa, %middle.block2929 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader2933, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aoi, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader2933 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aoh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader2933 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.aog = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !165, !noalias !162
  store i64 %i.aog, ptr %.012.i.i.i.i, align 8, !tbaa !48, !alias.scope !162, !noalias !165
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !48, !alias.scope !165, !noalias !162
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i1077 = icmp eq ptr %i.aoh, %i.amr
  br i1 %.not.i.i.i.i1077, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !173

_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block2929, %.noexc1079
  %.0.lcssa.i.i.i.i = phi ptr [ %i.anq, %.noexc1079 ], [ %i.anz, %middle.block2929 ], [ %i.aoi, %.lr.ph.i.i.i.i ]
  %i.aoj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ams, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.jg

bb.jg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ams, i64 noundef %i.amv) #38
  br label %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.jg
  store ptr %i.anq, ptr %46, align 8, !tbaa !160
  store ptr %i.aoj, ptr %i.ajl, align 8, !tbaa !157
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.anq, i64 %i.ano
  store ptr %i.aok, ptr %i.ajo, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit767

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit767: ; preds = %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5faiss5IndexESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.aol = load ptr, ptr %49, align 8, !tbaa !20  ; 2 uses
  %i.aom = icmp eq ptr %i.aol, %i.ajm
  br i1 %i.aom, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768: ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit767
  %i.aon = load i64, ptr %i.ajm, align 8, !tbaa !22
  %i.aoo = add i64 %i.aon, 1
  call void @_ZdlPvm(ptr noundef %i.aol, i64 noundef %i.aoo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770: ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit767, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.aop = load i64, ptr %i.pj, align 8, !tbaa !23, !noalias !174
  store ptr %i.ajp, ptr %53, align 8, !tbaa !16, !alias.scope !174
  %i.aoq = load ptr, ptr %2, align 8, !tbaa !20, !noalias !174 ; 2 uses
  %spec.select.i.i.i772 = call noundef i64 @llvm.umin.i64(i64 %i.amb, i64 %i.aop) ; 8 uses
  %i.aor = icmp ugt i64 %spec.select.i.i.i772, 15
  br i1 %i.aor, label %bb.jh, label %._crit_edge.i.i.i773

bb.jh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770
  %i.aos = icmp slt i64 %spec.select.i.i.i772, 0
  br i1 %i.aos, label %.noexc10.i.i776, label %bb.ji

.noexc10.i.i776:                                  ; preds = %bb.jh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc777 unwind label %.loopexit.split-lp1203

.noexc777:                                        ; preds = %.noexc10.i.i776
  unreachable

bb.ji:                                            ; preds = %bb.jh
  %i.aot = add nuw i64 %spec.select.i.i.i772, 1   ; 2 uses
  %i.aou = icmp slt i64 %i.aot, 0
  br i1 %i.aou, label %.noexc11.i.i775, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i774, !prof !19

.noexc11.i.i775:                                  ; preds = %bb.ji
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc778 unwind label %.loopexit.split-lp1203

.noexc778:                                        ; preds = %.noexc11.i.i775
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i774: ; preds = %bb.ji
  %i.aov = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aot) #36
          to label %.noexc779 unwind label %.loopexit1202 ; 2 uses

.noexc779:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i774
  store ptr %i.aov, ptr %53, align 8, !tbaa !20, !alias.scope !174
  store i64 %spec.select.i.i.i772, ptr %i.ajp, align 8, !tbaa !22, !alias.scope !174
  br label %._crit_edge.i.i.i773

._crit_edge.i.i.i773:                             ; preds = %.noexc779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770
  %i.aow = phi ptr [ %i.aov, %.noexc779 ], [ %i.ajp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ] ; 3 uses
  switch i64 %spec.select.i.i.i772, label %bb.jk [
    i64 1, label %bb.jj
    i64 0, label %bb.jl
  ]

bb.jj:                                            ; preds = %._crit_edge.i.i.i773
  %i.aox = load i8, ptr %i.aoq, align 1, !tbaa !22
  store i8 %i.aox, ptr %i.aow, align 1, !tbaa !22
  br label %bb.jl

bb.jk:                                            ; preds = %._crit_edge.i.i.i773
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aow, ptr align 1 %i.aoq, i64 %spec.select.i.i.i772, i1 false)
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %._crit_edge.i.i.i773
  store i64 %spec.select.i.i.i772, ptr %i.ajq, align 8, !tbaa !23, !alias.scope !174
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 %spec.select.i.i.i772
  store i8 0, ptr %i.aoy, align 1, !tbaa !22
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.aoz = load i64, ptr %i.ajq, align 8, !tbaa !23, !noalias !177 ; 5 uses
  %i.apa = icmp sgt i64 %i.aoz, 9223372036854775802
  br i1 %i.apa, label %bb.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.jm:                                            ; preds = %bb.jl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #34
          to label %.noexc786 unwind label %.loopexit.split-lp1208

.noexc786:                                        ; preds = %bb.jm
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.jl
  %i.apb = add nsw i64 %i.aoz, 5                  ; 3 uses
  %i.apc = load ptr, ptr %53, align 8, !tbaa !20, !noalias !177 ; 2 uses
  %i.apd = icmp eq ptr %i.apc, %i.ajp
  br i1 %i.apd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i781

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i785: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ape = icmp ult i64 %i.aoz, 16
  call void @llvm.assume(i1 %i.ape)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i781: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.apf = load i64, ptr %i.ajp, align 8, !tbaa !22, !noalias !177
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i781, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i785
  %i.apg = phi i64 [ %i.apf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i781 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i785 ]
  %.not.i.i.i782 = icmp ugt i64 %i.apb, %i.apg
  br i1 %.not.i.i.i782, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.aoz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aph, ptr noundef nonnull align 1 dereferenceable(5) @.str.49, i64 5, i1 false), !noalias !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.jo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.aoz, i64 noundef 0, ptr noundef nonnull @.str.49, i64 noundef 5)
end_hunk_1
begin_hunk_2_@_ZNKSt7__cxx1112regex_traitsIcE5valueEci:bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !22
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.g

bb.d:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #35
  br label %bb.g

_ZNSirsEPFRSt8ios_baseS0_E.exit13:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  %.sink20 = phi i32 [ 8, %_ZNSirsEPFRSt8ios_baseS0_E.exit13 ], [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !82
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !890
  %i.u = and i32 %i.t, -75
  %i.v = or disjoint i32 %i.u, %.sink20
  store i32 %i.v, ptr %i.s, align 8, !tbaa !897
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.d       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %3, align 8, !tbaa !82
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !898
  %i.ad = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !82
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !22
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #38
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.aq = and i32 %i.ac, 5
  %.not = icmp eq i32 %i.aq, 0
  %i.ar = trunc i64 %i.ad to i32
  %i.as = select i1 %.not, i32 %i.ar, i32 -1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #35
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !82
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !899
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ba) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i32 %i.as

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #23

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !901, !nonnull !27, !align !28
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.102) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !551
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !807
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !902
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !902
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !817  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !906, !noalias !903
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !906, !noalias !903
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !903, !noalias !906
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !903, !noalias !906
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !908

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !906, !noalias !903
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !903, !noalias !906
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !909

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !817
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !902
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !814
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.192, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !910

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !22 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !22
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !910

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22  ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !911

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22  ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !22
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !22
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !22
  br label %.lr.ph.i.i.3

end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !820
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !810
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !809
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !809
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !819 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !810
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #38
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !820
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !939 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !818 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #36
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !818
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !939
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !812
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !811 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !811 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bk = ptrtoaddr ptr %i.bc to i64
  %i.bl = ptrtoaddr ptr %i.bh to i64
  %i.bm = add i64 %i.bl, -2
  %i.bn = sub i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.bs = shl i64 %n.vec, 1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bc, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bv ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <8 x i16>, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load46, ptr %i.bx, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !941

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.bp, -4                    ; 3 uses
  %i.bz = shl i64 %n.vec48, 1                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bc, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = shl i64 %index49, 1                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bc, i64 %i.cc
  %next.gep51 = getelementptr i8, ptr %i.bg, i64 %i.cc
  %wide.load52 = load <4 x i16>, ptr %next.gep51, align 1
  store <4 x i16> %wide.load52, ptr %next.gep50, align 1
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !942

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.bp, %n.vec48
  br i1 %cmp.n54, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ce = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ce, ptr %.08.i.i.i.i.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.bh
  br i1 %i.ch, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !943

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bt, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !939
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !902 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !817 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #36
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cs = phi ptr [ null, %.loopexit28 ], [ %i.cr, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !817
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !902
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !814
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !813 ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !813 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %.noexc25
  %i.cz = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.da = ptrtoaddr ptr %i.cs to i64
  %i.db = ptrtoaddr ptr %i.cx to i64
  %2 = sub i64 %i.db, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.dc = lshr i64 %3, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %3, 44
  %i.de = sub i64 %i.cz, %i.da
  %diff.check58 = icmp ugt i64 %i.de, -32
  %or.cond72 = or i1 %min.iters.check59, %diff.check58
  br i1 %or.cond72, label %.lr.ph.i.i.i.i.i19.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %n.vec61 = and i64 %i.dd, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec61, 2                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cs, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.df
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.di = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.di ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cw, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 2
  %wide.load67 = load <4 x i32>, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 2
  store <4 x i32> %wide.load67, ptr %i.dk, align 2
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dl, label %middle.block69, label %vector.body62, !llvm.loop !944

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.dd, %n.vec61
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader73

.lr.ph.i.i.i.i.i19.preheader73:                   ; preds = %.lr.ph.i.i.i.i.i19.preheader, %middle.block69
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dg, %middle.block69 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dh, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader73, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.dm, ptr %.08.i.i.i.i.i20, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.cx
  br i1 %i.dp, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !945

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block69, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cs, %.noexc25 ], [ %i.dg, %middle.block69 ], [ %i.do, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.ct, align 8, !tbaa !902
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull align 8 dereferenceable(56) %i.dr, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !818 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = load ptr, ptr %i.bf, align 8, !tbaa !812
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #38
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.n ], [ %i.du, %bb.o ], [ %i.du, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #35
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.ds, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ea = load ptr, ptr %0, align 8, !tbaa !822   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !16
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !19

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !20
  store i64 %i.e, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !22
  store i8 %i.l, ptr %i.k, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !946

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.r = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #34
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.t

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !947, !nonnull !27, !align !28
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.102) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !551
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !807
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !902
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !902
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !817  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !951, !noalias !948
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !951, !noalias !948
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !948, !noalias !951
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !948, !noalias !951
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !953

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !951, !noalias !948
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !948, !noalias !951
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !954

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !817
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !902
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !814
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.204, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !910

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !22 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !22
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !910

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22  ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !955

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22  ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !22
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !22
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !22
  br label %.lr.ph.i.i.3

end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !834
  store ptr %i.a, ptr %0, align 8, !tbaa !834
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !834
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #38
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !834
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !834    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #38
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !913  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !822    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !822
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !913
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !808
  %i.m = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !925

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !22
  store i8 %i.t, ptr %i.i, align 1, !tbaa !22
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !913
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !820  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !819  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !819
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !820
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !810
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !809
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !809
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !819 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !810
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #38
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !820
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !902 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !817 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #36
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !817
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !902
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !814
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !813 ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !813 ; 3 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bl = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bm = ptrtoaddr ptr %i.be to i64
  %i.bn = ptrtoaddr ptr %i.bj to i64
  %2 = sub i64 %i.bn, %i.bl
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bl, %i.bm
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.07.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.08.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.bj
  br i1 %i.cb, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !972

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !902
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %i.cf, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #35
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ce, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !822   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !961  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !960    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !19

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !960
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !961
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !833
  %i.m = load ptr, ptr %1, align 8, !tbaa !832    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !832  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 64 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !973

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #34
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !961
  ret void

.body:                                            ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !tbaa !960    ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !833
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #38
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
end_hunk_4
begin_hunk_5_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_:bb.a
.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #36 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !22
  store i8 %i.k, ptr %i.j, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i4

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc.i7, label %bb.g

.noexc.i7:                                        ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i7
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc6.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, !prof !19

.noexc6.i6:                                       ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %.noexc6.i6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #36
          to label %.noexc9 unwind label %bb.k    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5
  store ptr %i.x, ptr %i.n, align 8, !tbaa !20
  store i64 %i.s, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.x, %.noexc9 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.q, align 1, !tbaa !22
  store i8 %i.z, ptr %i.y, align 1, !tbaa !22
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !22
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, %.noexc6.i6, %.noexc.i7
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !974, !nonnull !27, !align !28
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.102) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !551
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !807
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !902
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !902
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !817  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !978, !noalias !975
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !978, !noalias !975
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !975, !noalias !978
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !975, !noalias !978
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !978, !noalias !975
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !975, !noalias !978
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !981

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !817
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !902
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !814
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.209, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !910

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !22 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !22
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !910

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22  ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !982

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22  ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !22
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !22
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !22
  br label %.lr.ph.i.i.3

end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !820
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !810
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !809
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !809
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !819 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !810
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #38
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !820
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !939 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !818 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #36
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !818
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !939
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !812
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !811 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !811 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bk = ptrtoaddr ptr %i.bc to i64
  %i.bl = ptrtoaddr ptr %i.bh to i64
  %i.bm = add i64 %i.bl, -2
  %i.bn = sub i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.bs = shl i64 %n.vec, 1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bc, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bv ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <8 x i16>, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load46, ptr %i.bx, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !988

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !941

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.bp, -4                    ; 3 uses
  %i.bz = shl i64 %n.vec48, 1                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bc, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = shl i64 %index49, 1                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bc, i64 %i.cc
  %next.gep51 = getelementptr i8, ptr %i.bg, i64 %i.cc
  %wide.load52 = load <4 x i16>, ptr %next.gep51, align 1
  store <4 x i16> %wide.load52, ptr %next.gep50, align 1
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !989

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.bp, %n.vec48
  br i1 %cmp.n54, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ce = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ce, ptr %.08.i.i.i.i.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.bh
  br i1 %i.ch, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !990

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bt, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !939
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !902 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !817 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #36
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cs = phi ptr [ null, %.loopexit28 ], [ %i.cr, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !817
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !902
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !814
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !813 ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !813 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %.noexc25
  %i.cz = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.da = ptrtoaddr ptr %i.cs to i64
  %i.db = ptrtoaddr ptr %i.cx to i64
  %2 = sub i64 %i.db, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.dc = lshr i64 %3, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %3, 44
  %i.de = sub i64 %i.cz, %i.da
  %diff.check58 = icmp ugt i64 %i.de, -32
  %or.cond72 = or i1 %min.iters.check59, %diff.check58
  br i1 %or.cond72, label %.lr.ph.i.i.i.i.i19.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %n.vec61 = and i64 %i.dd, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec61, 2                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cs, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.df
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.di = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.di ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cw, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 2
  %wide.load67 = load <4 x i32>, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 2
  store <4 x i32> %wide.load67, ptr %i.dk, align 2
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dl, label %middle.block69, label %vector.body62, !llvm.loop !991

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.dd, %n.vec61
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader73

.lr.ph.i.i.i.i.i19.preheader73:                   ; preds = %.lr.ph.i.i.i.i.i19.preheader, %middle.block69
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dg, %middle.block69 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dh, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader73, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.dm, ptr %.08.i.i.i.i.i20, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.cx
  br i1 %i.dp, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !992

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block69, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cs, %.noexc25 ], [ %i.dg, %middle.block69 ], [ %i.do, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.ct, align 8, !tbaa !902
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !818 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = load ptr, ptr %i.bf, align 8, !tbaa !812
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #38
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.n ], [ %i.du, %bb.o ], [ %i.du, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #35
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.ds, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ea = load ptr, ptr %0, align 8, !tbaa !822   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !993, !nonnull !27, !align !28
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.102) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !551
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !807
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !902
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !902
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !817  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 44
  %i.ap = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ap, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !997, !noalias !994
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !997, !noalias !994
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !994, !noalias !997
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !994, !noalias !997
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !997, !noalias !994
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !994, !noalias !997
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1000

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !817
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !902
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !814
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.212, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  %.pre32 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 7 uses
  %.pre1031 = ptrtoaddr ptr %.pre10 to i64        ; 2 uses
  %i.k = icmp eq ptr %.pre, %.pre10
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %i.m = icmp eq ptr %i.l, %.pre10
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %.pre10
  %indvar.next = add i64 %indvar, 1
  br i1 %i.o, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !910

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.p = phi ptr [ %i.n, %.preheader.i.i.i ], [ %i.l, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i27 = phi ptr [ %i.p, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.q = load i8, ptr %.sroa.09.0.i.i.i27, align 1, !tbaa !22 ; 3 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !22
  %i.s = icmp eq i8 %i.q, %i.r
  br i1 %i.s, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !910

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i27, i64 2 ; 3 uses
  %i.u = icmp eq ptr %i.t, %.pre10
  br i1 %i.u, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.v = xor i64 %.pre1031, 2
  %i.w = add i64 %indvar, %.pre32
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %.pre1031, -3
  %i.z = add i64 %indvar, %.pre32
  %i.aa = sub i64 %i.y, %i.z
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.ab = phi i8 [ %i.ad, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ]
  %i.ac = phi ptr [ %i.ag, %bb.c ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.018.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22  ; 4 uses
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.018.i.i.prol, %.lr.ph.i.i.prol ], [ %i.af, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1001

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ad, %bb.c ]
  %.unr34 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ag, %bb.c ]
  %.sroa.0.018.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i27, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ah = icmp ult i64 %i.aa, 3
  br i1 %i.ah, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ai = phi i8 [ %i.aw, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aj = phi ptr [ %i.az, %bb.h ], [ %.unr34, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22  ; 3 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !22
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !22
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !22
  br label %.lr.ph.i.i.3

end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !846
  store ptr %i.a, ptr %0, align 8, !tbaa !846
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !846
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #38
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !846
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !846    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #38
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !913  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !822    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !822
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !913
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !808
  %i.m = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !925

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !22
  store i8 %i.t, ptr %i.i, align 1, !tbaa !22
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !913
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !820  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !819  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !819
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !820
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !810
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !809
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !809
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !819 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !810
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #38
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !820
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !902 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !817 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !19

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #36
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !817
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !902
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !814
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !813 ; 5 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !813 ; 3 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bl = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bm = ptrtoaddr ptr %i.be to i64
  %i.bn = ptrtoaddr ptr %i.bj to i64
  %2 = sub i64 %i.bn, %i.bl
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bl, %i.bm
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1009

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.07.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.08.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.bj
  br i1 %i.cb, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1010

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !902
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %i.cf, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #35
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ce, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !822   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !808
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 26 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !724, !nonnull !27, !align !28
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !531
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 16, !tbaa !784
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i8 0, ptr %3, align 1, !tbaa !1011
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !1014
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !601
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !602
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !603
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !601
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !604
  switch i32 %i.x, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ 45, %bb.g ], [ 45, %bb.f ], [ 45, %bb.h ], [ 45, %bb.i ], [ 45, %bb.j ]
  store i8 1, ptr %3, align 1, !tbaa !1011
  store i8 %.sink, ptr %i.g, align 1, !tbaa !1014
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split, %bb.d
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader, %bb.k
  %i.y = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %3, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !410, !noalias !1142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !225  ; 8 uses
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !410
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !226
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !228
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35, !inline_history !414
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35, !inline_history !414
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.noexc
  store i32 %2, ptr %0, align 8, !tbaa !415
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #35
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #35
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !398  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !192    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !925

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !398
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !192
  store i64 %i.s, ptr %i.d, align 8, !tbaa !192
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !398
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !925

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !192
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !192
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !192
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !192
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1145

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !192
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1146

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !192
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !192
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1148

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !398
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !925

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !398
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %1, align 8, !tbaa !192
  store i64 %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !192
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !398
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -8                             ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec115, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !192
  store <2 x i64> %broadcast.splat117, ptr %i.bj, align 8, !tbaa !192
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !1149

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !192
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1150

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !280   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.284) #34
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i64, ptr %3, align 8, !tbaa !192   ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec141, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 3
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x i64> %broadcast.splat143, ptr %next.gep146, align 8, !tbaa !192
  store <2 x i64> %broadcast.splat143, ptr %i.ck, align 8, !tbaa !192
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !1151

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !192
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1152

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !925

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !192
  store i64 %i.cp, ptr %i.ca, align 8, !tbaa !192
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !925

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %1, align 8, !tbaa !192
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !192
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #38
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !280
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !398
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !282
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5faiss17AdditiveQuantizer13Search_type_tESt4lessIS5_ESaISt4pairIKS5_S8_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.280", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.244", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
end_hunk_8
