Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Frontend?download=true
inline.NumInlined: 11237
inline.NumDeleted: 5660
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Luau8Frontend19checkBuildQueueItemERNS_14BuildQueueItemE:bb.a
  store ptr %.pre.i.i.i289, ptr %i.ajk, align 8, !tbaa !1235
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  store ptr null, ptr %i.ajl, align 8, !tbaa !662
  %i.ajm = getelementptr inbounds nuw [16 x i8], ptr %i.aje, i64 %.07.i.i.i291 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  store ptr %.pre.i.i.i289, ptr %i.ajn, align 8, !tbaa !1235
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  store ptr null, ptr %i.ajo, align 8, !tbaa !662
  %i.ajp = getelementptr inbounds nuw [16 x i8], ptr %i.aje, i64 %.07.i.i.i291 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 48
  store ptr %.pre.i.i.i289, ptr %i.ajq, align 8, !tbaa !1235
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 56
  store ptr null, ptr %i.ajr, align 8, !tbaa !662
  %i.ajs = add nuw nsw i64 %.07.i.i.i291, 4       ; 2 uses
  %niter734.next.3 = add nuw nsw i64 %niter734, 4 ; 2 uses
  %niter734.ncmp.3 = icmp eq i64 %niter734.next.3, %unroll_iter733
  br i1 %niter734.ncmp.3, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i290, !llvm.loop !1260

_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i290
  %lcmp.mod731.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod731.not, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i, label %.lr.ph.i.i.i290.epil.preheader

.lr.ph.i.i.i290.epil.preheader:                   ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i288
  %.07.i.i.i291.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i288 ], [ %i.ajs, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod732 = icmp ne i64 %xtraiter729, 0
  call void @llvm.assume(i1 %lcmp.mod732)
  br label %.lr.ph.i.i.i290.epil

.lr.ph.i.i.i290.epil:                             ; preds = %.lr.ph.i.i.i290.epil, %.lr.ph.i.i.i290.epil.preheader
  %.07.i.i.i291.epil = phi i64 [ %i.ajv, %.lr.ph.i.i.i290.epil ], [ %.07.i.i.i291.epil.init, %.lr.ph.i.i.i290.epil.preheader ] ; 2 uses
  %epil.iter730 = phi i64 [ %epil.iter730.next, %.lr.ph.i.i.i290.epil ], [ 0, %.lr.ph.i.i.i290.epil.preheader ]
  %i.ajt = getelementptr inbounds nuw [16 x i8], ptr %i.aje, i64 %.07.i.i.i291.epil ; 2 uses
  store ptr %.pre.i.i.i289, ptr %i.ajt, align 8, !tbaa !1235
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store ptr null, ptr %i.aju, align 8, !tbaa !662
  %i.ajv = add nuw nsw i64 %.07.i.i.i291.epil, 1
  %epil.iter730.next = add i64 %epil.iter730, 1   ; 2 uses
  %epil.iter730.cmp.not = icmp eq i64 %epil.iter730.next, %xtraiter729
  br i1 %epil.iter730.cmp.not, label %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i, label %.lr.ph.i.i.i290.epil, !llvm.loop !1261

_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i290.epil, %bb.gf, %bb.ge
  %.pre471 = phi ptr [ %.pre471.pre, %bb.ge ], [ %i.aiw, %bb.gf ], [ %i.aiw, %.lr.ph.i.i.i290.epil ], [ %i.aiw, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i.loopexit.unr-lcssa ]
  store i64 0, ptr %i.aiy, align 8, !tbaa !1257
  br label %_ZN4Luau12DenseHashMapIPKNS_7AstNodeEPNS_5ScopeENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit

_ZN4Luau12DenseHashMapIPKNS_7AstNodeEPNS_5ScopeENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i, %_ZN4Luau12DenseHashMapIPKNS_7AstStatEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit
  %i.ajw = phi ptr [ %.pre471, %_ZN4Luau6detail16ItemInterfaceMapIPKNS_7AstNodeEPNS_5ScopeEE4fillEPSt4pairIS4_S6_EmRKS4_.exit.i.i ], [ %i.aiw, %_ZN4Luau12DenseHashMapIPKNS_7AstStatEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit ]
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 696
  invoke void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_St6vectorIS5_INS_8LocationES4_ESaIS8_EEES5_IKS4_SA_ENS0_16ItemInterfaceMapIS4_SA_EENS_16DenseHashPointerESt8equal_toIS4_EE5clearEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ajx, i64 noundef 32)
          to label %_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit unwind label %bb.dv

_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit: ; preds = %_ZN4Luau12DenseHashMapIPKNS_7AstNodeEPNS_5ScopeENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit
  %i.ajy = load ptr, ptr %8, align 8, !tbaa !161  ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 312
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !938 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 320 ; 2 uses
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !704 ; 2 uses
  %.not.i.i294 = icmp eq ptr %i.akc, %i.aka
  br i1 %.not.i.i294, label %_ZNSt6vectorISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i295

.lr.ph.i.i.i.i295:                                ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit, %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i296 = phi ptr [ %i.aku, %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i ], [ %i.aka, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit ] ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i296, i64 24
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !141 ; 8 uses
  %.not.i.i.i.i.i.i.i.i297 = icmp eq ptr %i.ake, null
  br i1 %.not.i.i.i.i.i.i.i.i297, label %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i295
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8 ; 4 uses
  %i.akg = load atomic i64, ptr %i.akf acquire, align 8 ; 2 uses
  %i.akh = icmp eq i64 %i.akg, 4294967297
  %i.aki = trunc i64 %i.akg to i32                ; 2 uses
  br i1 %i.akh, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.akf, align 8, !tbaa !142
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ake, i64 12
  store i32 0, ptr %i.akj, align 4, !tbaa !144
  %i.akk = load ptr, ptr %i.ake, align 8, !tbaa !145
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 16
  %i.akm = load ptr, ptr %i.akl, align 8
  call void %i.akm(ptr noundef nonnull align 8 dereferenceable(16) %i.ake) #34, !inline_history !1262
  %i.akn = load ptr, ptr %i.ake, align 8, !tbaa !145
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8
  call void %i.akp(ptr noundef nonnull align 8 dereferenceable(16) %i.ake) #34, !inline_history !1262
  br label %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i

bb.gi:                                            ; preds = %bb.gg
  %i.akq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i.i.i.i.i.i298 = icmp eq i8 %i.akq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i298, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.akr = add nsw i32 %i.aki, -1
  store i32 %i.akr, ptr %i.akf, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %bb.gi
  %i.aks = atomicrmw volatile add ptr %i.akf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aki, %bb.gj ], [ %i.aks, %bb.gk ]
  %i.akt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.akt, label %bb.gl, label %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i, !prof !21

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ake) #34
  br label %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i: ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.gh, %.lr.ph.i.i.i.i295
  %i.aku = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i296, i64 32 ; 2 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.aku, %i.akc
  br i1 %.not.i.i.i.i299, label %_ZSt8_DestroyIPSt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i295, !llvm.loop !1058

_ZSt8_DestroyIPSt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEEEvPT_.exit.i.i.i.i
  store ptr %i.aka, ptr %i.akb, align 8, !tbaa !704
  br label %_ZNSt6vectorISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEESaIS6_EE5clearEv.exit

_ZNSt6vectorISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEESaIS6_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEES6_EvT_S8_RSaIT0_E.exit.i.i, %_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EE5clearEm.exit, %bb.eu
  br i1 %i.tu, label %.loopexit419, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt6vectorISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEESaIS6_EE5clearEv.exit
  %i.akv = load ptr, ptr %i.as, align 8, !tbaa !642 ; 2 uses
  %i.akw = load ptr, ptr %i.bs, align 8, !tbaa !642 ; 2 uses
  %.not452 = icmp eq ptr %i.akv, %i.akw
  br i1 %.not452, label %.loopexit419, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gm
  %i.akx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.akz = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ala = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 7 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ald = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ale = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  br label %bb.gn

bb.gn:                                            ; preds = %.lr.ph, %_ZN4Luau9TypeErrorD2Ev.exit
  %.sroa.0382.0453 = phi ptr [ %i.akv, %.lr.ph ], [ %i.anf, %_ZN4Luau9TypeErrorD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 16 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 24 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !156 ; 3 uses
  %i.alj = load ptr, ptr %i.alg, align 8, !tbaa !153 ; 3 uses
  %i.alk = ptrtoint ptr %i.ali to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all                 ; 4 uses
  %.not.i.i.i.i300 = icmp eq ptr %i.ali, %i.alj
  br i1 %.not.i.i.i.i300, label %.noexc304, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aln = icmp ugt i64 %i.alm, 9223372036854775776
  br i1 %i.aln, label %.noexc.i.i302, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !21

.noexc.i.i302:                                    ; preds = %bb.go
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc303 unwind label %.loopexit.split-lp421

.noexc303:                                        ; preds = %.noexc.i.i302
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.go
  %i.alo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alm) #38
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge unwind label %.loopexit420

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre472 = load ptr, ptr %i.alg, align 8, !tbaa !440
  %.pre473 = load ptr, ptr %i.alh, align 8, !tbaa !440
  br label %.noexc304

.noexc304:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge, %bb.gn
  %i.alp = phi ptr [ %i.ali, %bb.gn ], [ %.pre473, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge ]
  %i.alq = phi ptr [ %i.alj, %bb.gn ], [ %.pre472, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge ]
  %i.alr = phi ptr [ null, %bb.gn ], [ %i.alo, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc304_crit_edge ] ; 5 uses
  %i.als = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.alq, ptr %i.alp, ptr noundef %i.alr)
          to label %bb.gr unwind label %bb.gp

bb.gp:                                            ; preds = %.noexc304
  %i.alt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.alr, null
  br i1 %.not.i.i.i301, label %.body305, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.alr, i64 noundef %i.alm) #36
  br label %.body305

bb.gr:                                            ; preds = %.noexc304
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.alm
  store i32 24, ptr %16, align 8, !tbaa !460
  store ptr %i.alr, ptr %i.akx, align 8, !tbaa !153
  store ptr %i.als, ptr %i.aky, align 8, !tbaa !156
  store ptr %i.alu, ptr %i.akz, align 8, !tbaa !158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %15, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0382.0453, i64 16, i1 false), !tbaa.struct !641
  store ptr %i.alb, ptr %i.ala, align 8, !tbaa !129
  %i.alv = load ptr, ptr %i.q, align 8, !tbaa !44 ; 2 uses
  %i.alw = load i64, ptr %i.alc, align 8, !tbaa !43 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.alw, ptr %i.b, align 8, !tbaa !127
  %i.alx = icmp ugt i64 %i.alw, 15
  br i1 %i.alx, label %.noexc.i.i309, label %._crit_edge.i.i.i

.noexc.i.i309:                                    ; preds = %bb.gr
  %i.aly = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ala, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc310 unwind label %bb.gy ; 2 uses

.noexc310:                                        ; preds = %.noexc.i.i309
  store ptr %i.aly, ptr %i.ala, align 8, !tbaa !44
  %i.alz = load i64, ptr %i.b, align 8, !tbaa !127
  store i64 %i.alz, ptr %i.alb, align 8, !tbaa !130
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc310, %bb.gr
  %i.ama = phi ptr [ %i.aly, %.noexc310 ], [ %i.alb, %bb.gr ] ; 2 uses
  switch i64 %i.alw, label %bb.gt [
    i64 1, label %bb.gs
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.gs:                                            ; preds = %._crit_edge.i.i.i
  %i.amb = load i8, ptr %i.alv, align 1, !tbaa !130
  store i8 %i.amb, ptr %i.ama, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.gt:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ama, ptr align 1 %i.alv, i64 %i.alw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.gt, %bb.gs, %._crit_edge.i.i.i
  %i.amc = load i64, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  store i64 %i.amc, ptr %i.ald, align 8, !tbaa !43
  %i.amd = load ptr, ptr %i.ala, align 8, !tbaa !44
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.amc
  store i8 0, ptr %i.ame, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.amf = load i32, ptr %16, align 8, !tbaa !460 ; 2 uses
  store i32 %i.amf, ptr %i.ale, align 8, !tbaa !460
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [8 x i8], ptr @_ZZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEC1ERKS1T_E5table, i64 %i.amg
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !17
  invoke void %i.ami(ptr noundef nonnull %i.alf, ptr noundef nonnull %i.akx)
          to label %_ZN4Luau9TypeErrorC2ERKNS_8LocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedE unwind label %bb.gu, !inline_history !1093

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.amj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amk = load ptr, ptr %i.ala, align 8, !tbaa !44 ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.alb
  br i1 %i.aml, label %.body311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.gu
  %i.amm = load i64, ptr %i.alb, align 8, !tbaa !130
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #36
  br label %.body311

_ZN4Luau9TypeErrorC2ERKNS_8LocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedE: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.amo = load i32, ptr %16, align 8, !tbaa !460
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.amp
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !17
  invoke void %i.amr(ptr noundef nonnull %i.akx)
          to label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit unwind label %bb.gv

bb.gv:                                            ; preds = %_ZN4Luau9TypeErrorC2ERKNS_8LocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedE
  %i.ams = landingpad { ptr, i32 }
          catch ptr null
  %i.amt = extractvalue { ptr, i32 } %i.ams, 0
  call void @__clang_call_terminate(ptr %i.amt) #35
  unreachable

_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit:     ; preds = %_ZN4Luau9TypeErrorC2ERKNS_8LocationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedE
  %.pre474 = load ptr, ptr %8, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.amu = getelementptr inbounds nuw i8, ptr %.pre474, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.amu, ptr noundef nonnull align 8 dereferenceable(184) %15)
          to label %bb.gw unwind label %bb.ha

bb.gw:                                            ; preds = %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit
  %i.amv = load i32, ptr %i.ale, align 8, !tbaa !460
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.amw
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !17
  invoke void %i.amy(ptr noundef nonnull %i.alf)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter324 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.amz = landingpad { ptr, i32 }
          catch ptr null
  %i.ana = extractvalue { ptr, i32 } %i.amz, 0
  call void @__clang_call_terminate(ptr %i.ana) #35
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter324: ; preds = %bb.gw
  %i.anb = load ptr, ptr %i.ala, align 8, !tbaa !44 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.alb
  br i1 %i.anc, label %_ZN4Luau9TypeErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter324
  %i.and = load i64, ptr %i.alb, align 8, !tbaa !130
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #36
  br label %_ZN4Luau9TypeErrorD2Ev.exit

_ZN4Luau9TypeErrorD2Ev.exit:                      ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.anf = getelementptr inbounds nuw i8, ptr %.sroa.0382.0453, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.anf, %i.akw
  br i1 %.not, label %.loopexit419, label %bb.gn

.loopexit420:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit422 = landingpad { ptr, i32 }
          cleanup
  br label %.body305

.loopexit.split-lp421:                            ; preds = %.noexc.i.i302
  %lpad.loopexit.split-lp423 = landingpad { ptr, i32 }
          cleanup
  br label %.body305

bb.gy:                                            ; preds = %.noexc.i.i309
  %i.ang = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.gy
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.ang, %bb.gy ], [ %i.amj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.amj, %bb.gu ]
  %i.anh = load i32, ptr %16, align 8, !tbaa !460
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ani
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !17
  invoke void %i.ank(ptr noundef nonnull %i.akx)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter329 unwind label %bb.gz

bb.gz:                                            ; preds = %.body311
  %i.anl = landingpad { ptr, i32 }
          catch ptr null
  %i.anm = extractvalue { ptr, i32 } %i.anl, 0
  call void @__clang_call_terminate(ptr %i.anm) #35
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter329: ; preds = %.body311
  call void @_ZN4Luau25ModuleHasCyclicDependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #34
  br label %.body305

.body305:                                         ; preds = %.loopexit420, %.loopexit.split-lp421, %bb.gq, %bb.gp, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter329
  %.pn116 = phi { ptr, i32 } [ %eh.lpad-body312, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter329 ], [ %i.alt, %bb.gp ], [ %i.alt, %bb.gq ], [ %lpad.loopexit422, %.loopexit420 ], [ %lpad.loopexit.split-lp423, %.loopexit.split-lp421 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.hb

bb.ha:                                            ; preds = %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit
  %i.ann = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TypeErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %15) #34
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.body305
  %.pn118 = phi { ptr, i32 } [ %i.ann, %bb.ha ], [ %.pn116, %.body305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.iv

.loopexit419:                                     ; preds = %_ZN4Luau9TypeErrorD2Ev.exit, %bb.gm, %_ZNSt6vectorISt4pairIN4Luau8LocationESt10shared_ptrINS1_5ScopeEEESaIS6_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ano = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !134 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !134 ; 2 uses
  %.not418454 = icmp eq ptr %i.anp, %i.anr
  br i1 %.not418454, label %._crit_edge, label %.lr.ph456

.lr.ph456:                                        ; preds = %.loopexit419
  %i.ans = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.hc

._crit_edge.loopexit:                             ; preds = %_ZN4Luau11SyntaxErrorD2Ev.exit
  %.pre475 = load ptr, ptr %18, align 8, !tbaa !447
  %.phi.trans.insert476 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.pre477 = load ptr, ptr %.phi.trans.insert476, align 8, !tbaa !447
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit419
  %i.anu = phi ptr [ %.pre477, %._crit_edge.loopexit ], [ null, %.loopexit419 ]
  %i.anv = phi ptr [ %.pre475, %._crit_edge.loopexit ], [ null, %.loopexit419 ]
  %i.anw = load ptr, ptr %8, align 8, !tbaa !161
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 856 ; 2 uses
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !447
  %i.anz = getelementptr inbounds nuw i8, ptr %18, i64 8
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.anx, ptr %i.any, ptr %i.anv, ptr %i.anu)
          to label %bb.hm unwind label %bb.it

end_hunk_0
begin_hunk_1_@_ZN4Luau5checkERKNS_12SourceModuleENS_4ModeERKSt6vectorINS_12RequireCycleESaIS5_EENS_7NotNullINS_12BuiltinTypesEEENSA_INS_21InternalErrorReporterEEENSA_INS_14ModuleResolverEEENSA_INS_12FileResolverEEERKSt10shared_ptrINS_5ScopeEESN_St8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_EENS_15FrontendOptionsENS_15TypeCheckLimitsEbRNS_8Frontend5StatsESO_IFvSW_SU_EE:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !321, !range !41, !noundef !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !1310
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !64
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 280 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !141 ; 4 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i.i190, label %_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit189
  %.not7.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !9
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !9
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.de = atomicrmw volatile add ptr %i.da, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !141
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.df = phi ptr [ %i.cz, %bb.i ], [ %i.cz, %bb.k ], [ %.pr.pre.i.i.i, %bb.l ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.dg, align 8, !tbaa !142
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !144
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !145
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #34, !inline_history !945
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !145
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #34, !inline_history !945
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i9.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.dj, %bb.p ], [ %i.dt, %bb.q ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.du, label %bb.r, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !21

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !141
  %.pre = load ptr, ptr %0, align 8, !tbaa !161
  br label %_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit

_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit189, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.dv = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit189 ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 288
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !59
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 296 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !141 ; 4 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i191 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i.i191, label %_ZNSt10shared_ptrIN4Luau12AstNameTableEEaSERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit
  %.not7.i.i.i192 = icmp eq ptr %i.eb, null
  br i1 %.not7.i.i.i192, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i193 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i193, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !9
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !9
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194

bb.v:                                             ; preds = %bb.t
  %i.eh = atomicrmw volatile add ptr %i.ed, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i200 = load ptr, ptr %i.dz, align 8, !tbaa !141
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194: ; preds = %bb.v, %bb.u, %bb.s
  %i.ei = phi ptr [ %i.ec, %bb.s ], [ %i.ec, %bb.u ], [ %.pr.pre.i.i.i200, %bb.v ] ; 8 uses
  %.not8.i.i.i195 = icmp eq ptr %i.ei, null
  br i1 %.not8.i.i.i195, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199, label %bb.w

bb.w:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ej, align 8, !tbaa !142
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !144
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !145
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #34, !inline_history !946
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !145
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #34, !inline_history !946
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199

bb.y:                                             ; preds = %bb.w
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i9.i.i.i196 = icmp eq i8 %i.eu, 0
  br i1 %.not.i9.i.i.i196, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i197

bb.aa:                                            ; preds = %bb.y
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i197

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i197: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i198 = phi i32 [ %i.em, %bb.z ], [ %i.ew, %bb.aa ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i198, 1
  br i1 %i.ex, label %bb.ab, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199, !prof !21

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i197
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i197, %bb.x, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i194
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !141
  %.pre647 = load ptr, ptr %0, align 8, !tbaa !161
  br label %_ZNSt10shared_ptrIN4Luau12AstNameTableEEaSERKS2_.exit

_ZNSt10shared_ptrIN4Luau12AstNameTableEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199
  %i.ey = phi ptr [ %i.dv, %_ZNSt10shared_ptrIN4Luau9AllocatorEEaSERKS2_.exit ], [ %.pre647, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i199 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 304
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !947
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201 unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201: ; preds = %_ZNSt10shared_ptrIN4Luau12AstNameTableEEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  store ptr null, ptr %17, align 8, !tbaa !1316
  br i1 %13, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201
  %i.fd = invoke noalias noundef nonnull dereferenceable(944) ptr @_Znwm(i64 noundef 944) #38
          to label %_ZNSt10unique_ptrIN4Luau9DcrLoggerESt14default_deleteIS1_EED2Ev.exit unwind label %bb.al ; 68 uses

_ZNSt10unique_ptrIN4Luau9DcrLoggerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(880) %i.fe, i8 0, i64 880, i1 false), !noalias !1318
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !129, !noalias !1318
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !43, !noalias !1318
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fg, i8 0, i64 72, i1 false), !noalias !1318
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !1321, !noalias !1318
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  store i64 1, ptr %i.fj, align 8, !tbaa !1323, !noalias !1318
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.fl, align 8, !tbaa !179, !noalias !1318
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 144
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 200
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, i8 0, i64 48, i1 false), !noalias !1318
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !1324, !noalias !1318
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 208
  store i64 1, ptr %i.fp, align 8, !tbaa !1326, !noalias !1318
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 216
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.fr, align 8, !tbaa !179, !noalias !1318
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false), !noalias !1318
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 256
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 304
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !1327, !noalias !1318
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 264
  store i64 1, ptr %i.fv, align 8, !tbaa !1329, !noalias !1318
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fd, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.fx, align 8, !tbaa !179, !noalias !1318
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fd, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !noalias !1318
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 312
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fd, i64 360
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !1327, !noalias !1318
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 320
  store i64 1, ptr %i.gb, align 8, !tbaa !1329, !noalias !1318
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fd, i64 328
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fd, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.gd, align 8, !tbaa !179, !noalias !1318
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ge, i8 0, i64 72, i1 false), !noalias !1318
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fd, i64 432
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 496
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fd, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i8 0, i64 56, i1 false), !noalias !1318
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !1324, !noalias !1318
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fd, i64 504
  store i64 1, ptr %i.gi, align 8, !tbaa !1326, !noalias !1318
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fd, i64 512
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.gk, align 8, !tbaa !179, !noalias !1318
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fd, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i8 0, i64 16, i1 false), !noalias !1318
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fd, i64 552
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fd, i64 600
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !1327, !noalias !1318
  %i.go = getelementptr inbounds nuw i8, ptr %i.fd, i64 560
  store i64 1, ptr %i.go, align 8, !tbaa !1329, !noalias !1318
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fd, i64 568
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fd, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.gq, align 8, !tbaa !179, !noalias !1318
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fd, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false), !noalias !1318
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fd, i64 608
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fd, i64 656
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !1327, !noalias !1318
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fd, i64 616
  store i64 1, ptr %i.gu, align 8, !tbaa !1329, !noalias !1318
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fd, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.gw, align 8, !tbaa !179, !noalias !1318
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fd, i64 648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gx, i8 0, i64 72, i1 false), !noalias !1318
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fd, i64 728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i8 0, i64 24, i1 false), !noalias !1318
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fd, i64 752
  store i8 1, ptr %i.gz, align 8, !tbaa !1330, !noalias !1318
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fd, i64 753
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fd, i64 759
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ha, i8 0, i64 6, i1 false), !noalias !1318
  store i8 1, ptr %i.hb, align 1, !tbaa !1337, !noalias !1318
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fd, i64 768
  %i.hd = load i32, ptr @_ZN4FInt37LuauTableTypeMaximumStringifierLengthE, align 8, !tbaa !891, !noalias !1318
  %i.he = sext i32 %i.hd to i64
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !1338, !noalias !1318
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fd, i64 776
  %i.hg = load i32, ptr @_ZN4FInt32LuauTypeMaximumStringifierLengthE, align 8, !tbaa !891, !noalias !1318
  %i.hh = sext i32 %i.hg to i64
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !1339, !noalias !1318
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fd, i64 784
  store i64 5, ptr %i.hi, align 8, !tbaa !1340, !noalias !1318
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fd, i64 792
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fd, i64 840
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !1341, !noalias !1318
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fd, i64 800
  store i64 1, ptr %i.hl, align 8, !tbaa !1342, !noalias !1318
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fd, i64 808
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fd, i64 824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.hn, align 8, !tbaa !179, !noalias !1318
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fd, i64 832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false), !noalias !1318
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fd, i64 848
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fd, i64 896
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !1343, !noalias !1318
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fd, i64 856
  store i64 1, ptr %i.hr, align 8, !tbaa !1344, !noalias !1318
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fd, i64 864
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fd, i64 880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i8 0, i64 16, i1 false), !noalias !1318
  store float 1.000000e+00, ptr %i.ht, align 8, !tbaa !179, !noalias !1318
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fd, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hu, i8 0, i64 56, i1 false), !noalias !1318
  store ptr %i.fd, ptr %17, align 8, !tbaa !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.hv = load ptr, ptr %0, align 8, !tbaa !161   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.430") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.hw)
          to label %bb.ad unwind label %bb.am

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN4Luau9DcrLoggerESt14default_deleteIS1_EED2Ev.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 5 uses
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !814, !range !41, !noundef !42
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.id, ptr %19, align 8, !tbaa !129
  %i.ie = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !43 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.ig, ptr %i.a, align 8, !tbaa !127
  %i.ih = icmp ugt i64 %i.ig, 15
  br i1 %i.ih, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ae
  %i.ii = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.an    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ii, ptr %19, align 8, !tbaa !44
  %i.ij = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.ij, ptr %i.id, align 8, !tbaa !130
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.ae
  %i.ik = phi ptr [ %i.ii, %.noexc ], [ %i.id, %bb.ae ] ; 2 uses
  switch i64 %i.ig, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.il = load i8, ptr %i.ie, align 1, !tbaa !130
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !130
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.ie, i64 %i.ig, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i
  %i.im = load i64, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.im, ptr %i.in, align 8, !tbaa !43
  %i.io = load ptr, ptr %19, align 8, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 0, ptr %i.ip, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN4Luau9DcrLogger13captureSourceENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(944) %i.fd, ptr noundef nonnull align 8 %19)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.iq = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.id
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.is = load i64, ptr %i.id, align 8, !tbaa !130
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aj:                                            ; preds = %bb.a
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.le

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN4Luau12AstNameTableEEaSERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt12__shared_ptrIN4Luau9TypeArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.al:                                            ; preds = %bb.ac
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN4Luau9DcrLoggerESt14default_deleteIS1_EED2Ev.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit208

bb.an:                                            ; preds = %.noexc.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.ao:                                            ; preds = %bb.ah
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ja = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.id
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.ao
  %i.jc = load i64, ptr %i.id, align 8, !tbaa !130
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad
  %i.je = load i8, ptr %i.ia, align 8, !tbaa !814, !range !41, !noundef !42
  %i.jf = trunc nuw i8 %i.je to i1
  store i8 0, ptr %i.ia, align 8, !tbaa !814
  br i1 %i.jf, label %bb.ap, label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jg = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !130
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #36
  br label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit: ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.an
  %.pn = phi { ptr, i32 } [ %i.iy, %bb.an ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %i.iz, %bb.ao ] ; 3 uses
  %i.jl = load i8, ptr %i.ia, align 8, !tbaa !814, !range !41, !noundef !42
  %i.jm = trunc nuw i8 %i.jl to i1
  store i8 0, ptr %i.ia, align 8, !tbaa !814
  br i1 %i.jm, label %bb.aq, label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit208

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.jn = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i206: ; preds = %bb.aq
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !130
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #36
  br label %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit208

_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit208: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %i.ix, %bb.am ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i206 ], [ %.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.lc

bb.ar:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201
  %i.js = phi ptr [ %i.hv, %_ZNSt14_Optional_baseIN4Luau10SourceCodeELb0ELb0EED2Ev.exit ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.jt = load ptr, ptr %i.ez, align 8, !tbaa !101
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 1016
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 1056
  invoke void @_ZN4Luau20DataFlowGraphBuilder5buildEPNS_12AstStatBlockENS_7NotNullINS_8DefArenaEEENS3_INS_18RefinementKeyArenaEEENS3_INS_21InternalErrorReporterEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::DataFlowGraph") align 8 %20, ptr noundef %i.jt, ptr nonnull %i.ju, ptr nonnull %i.jv, ptr nonnull %5)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  store ptr %5, ptr %21, align 8, !tbaa !870
  %i.jw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jx, i8 0, i64 40, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jy, i8 0, i64 40, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %21, i64 144 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 184 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jz, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ka, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.kb, i8 0, i64 17, i1 false)
  %i.kc = load i32, ptr @_ZN4FInt27LuauTypeInferRecursionLimitE, align 8, !tbaa !891
  %i.kd = getelementptr inbounds nuw i8, ptr %21, i64 228
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !894
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.kg = load i8, ptr %i.kf, align 4, !tbaa !139, !range !41, !noundef !42
  %i.kh = trunc nuw i8 %i.kg to i1
  %i.ki = load i32, ptr %i.ke, align 8
  %i.kj = load i32, ptr @_ZN4FInt27LuauTypeInferIterationLimitE, align 8
  %.0.i = select i1 %i.kh, i32 %i.ki, i32 %i.kj
  %i.kk = getelementptr inbounds nuw i8, ptr %21, i64 236
  store i32 %.0.i, ptr %i.kk, align 4, !tbaa !895
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
end_hunk_1
begin_hunk_2_@_ZN4Luau8Frontend14addEnvironmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #34, !inline_history !850
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !145
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #34, !inline_history !850
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i9.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !21

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.d, ptr %i.k, align 8, !tbaa !141
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

bb.l:                                             ; preds = %_ZSt11make_sharedIN4Luau5ScopeEJRSt10shared_ptrIS1_EEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  br label %common.resume

bb.m:                                             ; preds = %bb.a
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau5ScopeEEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !17
  store <2 x ptr> %i.ak, ptr %0, align 8, !tbaa !17
  %.not.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i6, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.al, align 4, !tbaa !9
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !9
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit:    ; preds = %bb.p, %bb.o, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau5ScopeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixERSF_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau8Frontend25registerBuiltinDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvRS0_RNS_11GlobalTypesESt10shared_ptrINS_5ScopeEEEE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.1171", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFvRN4Luau8FrontendERNS9_11GlobalTypesESt10shared_ptrINS9_5ScopeEEEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFvRN4Luau8FrontendERNSA_11GlobalTypesESt10shared_ptrINSA_5ScopeEEEEESaISK_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !320  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEC2ERKS9_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1525
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !320
  br label %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEC2ERKS9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.d, align 16, !tbaa !320 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEC2ERKS9_.exit.i: ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ null, %bb.b ], [ %i.j, %bb.d ]
  %i.r = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 16, i1 false), !tbaa.struct !325
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 3 uses
  store ptr %i.t, ptr %i.d, align 16, !tbaa !17
  store ptr %i.r, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  store ptr %i.v, ptr %i.e, align 8, !tbaa !17
  store ptr %i.q, ptr %i.u, align 8, !tbaa !17
  %.not.i.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i.i3, label %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEaSERKS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEC2ERKS9_.exit.i
  %i.w = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEaSERKS9_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEaSERKS9_.exit: ; preds = %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEC2ERKS9_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEaSERKS9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau8Frontend35applyBuiltinDefinitionToEnvironmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFvRN4Luau8FrontendERNS9_11GlobalTypesESt10shared_ptrINS9_5ScopeEEEEESaISJ_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSL_18_Mod_range_hashingENSL_20_Default_ranged_hashENSL_20_Prime_rehash_policyENSL_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFvRN4Luau8FrontendERNSA_11GlobalTypesESt10shared_ptrINSA_5ScopeEEEEESaISK_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau5ScopeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1), !noalias !1527 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141, !noalias !1527 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !17, !noalias !1527
  store <2 x ptr> %i.j, ptr %3, align 16, !tbaa !17, !alias.scope !1527
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130, !noalias !1527
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !9, !noalias !1527
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !9, !noalias !1527
  br label %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !1527 ; 0 uses
  br label %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit.i:  ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !1527
  br label %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZNSt10shared_ptrIN4Luau5ScopeEEC2ERKS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !320
  %.not.i.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i.i5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNK4Luau8Frontend19getEnvironmentScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1525
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(468) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEclES2_S4_S7_.exit unwind label %bb.o, !inline_history !1530

_ZNKSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEclES2_S4_S7_.exit: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141  ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEclES2_S4_S7_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !142
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !144
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #34, !inline_history !220
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !145
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #34, !inline_history !220
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #34
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  resume { ptr, i32 } %i.ak

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j, %_ZNKSt8functionIFvRN4Luau8FrontendERNS0_11GlobalTypesESt10shared_ptrINS0_5ScopeEEEEclES2_S4_S7_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau8Frontend10clearStatsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2184) initializes((2048, 2160)) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i8 0, i64 112, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau8Frontend5clearEv(ptr noundef nonnull align 8 dereferenceable(2184) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1824
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau10SourceNodeEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1880
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau12SourceModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #37
  unreachable

_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau6ModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #34
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #34 ; 2 uses
  %.not.i.i.i1 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i1, label %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #37
  unreachable

_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit2: ; preds = %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN4Luau6ModuleEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #34
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #34 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1531 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit2, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.l, %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit2 ] ; 3 uses
  %i.m = load ptr, ptr %.06.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.n) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 112) #36
  %.not.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i3, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1532

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau18RequireTraceResultESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN4Luau22FrontendModuleResolver12clearModulesEv.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !352
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.r = load i64, ptr %i.q, align 8, !tbaa !353
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau8Frontend12clearModulesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.933", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !440    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !440  ; 2 uses
  %.not91 = icmp eq ptr %i.a, %i.c
  br i1 %.not91, label %._crit_edge101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !440   ; 2 uses
  %.pre121 = load ptr, ptr %i.b, align 8, !tbaa !440 ; 2 uses
  %.not6297 = icmp eq ptr %.pre, %.pre121
  br i1 %.not6297, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 576
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE.exit
  %.sroa.056.092 = phi ptr [ %i.a, %.lr.ph ], [ %i.y, %_ZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbRN4Luau10SourceNodeEEZNS0_8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISA_SaISA_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbRN4Luau10SourceNodeEEZNS0_8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISA_SaISA_EEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.d, align 8, !tbaa !17
  invoke void @_ZN4Luau8Frontend18traverseDependentsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbRNS_10SourceNodeEEE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.092, ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !320  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN4Luau8Frontend9markDirtyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS6_SaIS6_EE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEEvT_S12_T0_":bb.a

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %i.l, align 8, !tbaa !460 ; 2 uses
  store i32 %i.bh, ptr %i.q, align 8, !tbaa !460
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableMoveE, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17
  call void %i.bk(ptr noundef nonnull %i.r, ptr noundef nonnull %i.m) #34, !inline_history !1733
  br label %_ZN4Luau9TypeErroraSEOS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #35
  unreachable

_ZN4Luau9TypeErroraSEOS0_.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %bb.m
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !460
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17
  invoke void %i.bq(ptr noundef nonnull %i.m)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.o

bb.o:                                             ; preds = %_ZN4Luau9TypeErroraSEOS0_.exit
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %_ZN4Luau9TypeErroraSEOS0_.exit
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.j
  br i1 %i.bu, label %_ZN4Luau9TypeErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !130
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #36
  br label %_ZN4Luau9TypeErrorD2Ev.exit

_ZN4Luau9TypeErrorD2Ev.exit:                      ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.ah

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0.027, i64 16, i1 false), !tbaa.struct !641
  store ptr %i.d, ptr %i.c, align 8, !tbaa !129
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !44  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.x
  br i1 %i.by, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn26, i64 208
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !43 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.cc, i1 false)
  br label %_ZN4Luau9TypeErrorC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.p
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !44
  %i.cd = load i64, ptr %i.x, align 8, !tbaa !130
  store i64 %i.cd, ptr %i.d, align 8, !tbaa !130
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn26, i64 208
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  br label %_ZN4Luau9TypeErrorC2EOS0_.exit.i

_ZN4Luau9TypeErrorC2EOS0_.exit.i:                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9, %bb.q
  %i.ce = phi i64 [ %i.ca, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn26, i64 208
  store i64 %i.ce, ptr %i.e, align 8, !tbaa !43
  store ptr %i.x, ptr %i.w, align 8, !tbaa !44
  store i64 0, ptr %i.cf, align 8, !tbaa !43
  store i8 0, ptr %i.x, align 8, !tbaa !130
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn26, i64 232
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !460 ; 2 uses
  store i32 %i.ch, ptr %i.f, align 8, !tbaa !460
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableMoveE, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn26, i64 240
  call void %i.ck(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cl) #34, !inline_history !1773
  %.val22.i = load i32, ptr %2, align 8, !tbaa !1767 ; 2 uses
  %.val123.i = load i32, ptr %i.h, align 4
  %.val3.i24.i = load i32, ptr %.pn26, align 8, !tbaa !1767 ; 2 uses
  %i.cm = getelementptr i8, ptr %.pn26, i64 4
  %.val4.i25.i = load i32, ptr %i.cm, align 4
  %i.cn = icmp eq i32 %.val22.i, %.val3.i24.i
  %i.co = icmp ugt i32 %.val123.i, %.val4.i25.i
  %i.cp = icmp ugt i32 %.val22.i, %.val3.i24.i
  %.0.i.i.i26.i = select i1 %i.cn, i1 %i.co, i1 %i.cp
  br i1 %.0.i.i.i26.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4Luau9TypeErrorC2EOS0_.exit.i, %_ZN4Luau9TypeErroraSEOS0_.exit.i
  %.sroa.0.028.i = phi ptr [ %.sroa.0.0.i, %_ZN4Luau9TypeErroraSEOS0_.exit.i ], [ %.pn26, %_ZN4Luau9TypeErrorC2EOS0_.exit.i ] ; 5 uses
  %.sroa.016.027.i = phi ptr [ %.sroa.0.028.i, %_ZN4Luau9TypeErroraSEOS0_.exit.i ], [ %.sroa.0.027, %_ZN4Luau9TypeErrorC2EOS0_.exit.i ] ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.016.027.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0.028.i, i64 16, i1 false), !tbaa.struct !641
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -168 ; 4 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !44 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 32 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !44 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -152 ; 4 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %.lr.ph.i
  br i1 %i.cx, label %bb.r, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12: ; preds = %.lr.ph.i
  br i1 %i.cx, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.cy = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -160 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  switch i64 %i.cz, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !130
  store i8 %i.db, ptr %i.cs, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 24
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !43
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !130
  %.pre.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 24
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !44
  %i.dh = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -160
  %i.di = load <2 x i64>, ptr %i.dh, align 8, !tbaa !130
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !130
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12
  %i.dj = load i64, ptr %i.ct, align 8, !tbaa !130
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !44
  %i.dk = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -160
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 24
  %i.dm = load <2 x i64>, ptr %i.dk, align 8, !tbaa !130
  store <2 x i64> %i.dm, ptr %i.dl, align 8, !tbaa !130
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !44
  store i64 %i.dj, ptr %i.cw, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.dn = phi ptr [ %i.cs, %bb.u ], [ %i.cw, %bb.v ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  %i.do = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -160
  store i64 0, ptr %i.do, align 8, !tbaa !43
  store i8 0, ptr %i.dn, align 1, !tbaa !130
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 48 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !460
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 56 ; 2 uses
  invoke void %i.dt(ptr noundef nonnull %i.du)
          to label %_ZN4Luau9TypeErroraSEOS0_.exit.i unwind label %bb.w

_ZN4Luau9TypeErroraSEOS0_.exit.i:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.dv = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -136
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !460 ; 2 uses
  store i32 %i.dw, ptr %i.dp, align 8, !tbaa !460
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableMoveE, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !17
  %i.ea = getelementptr inbounds i8, ptr %.sroa.016.027.i, i64 -128
  call void %i.dz(ptr noundef nonnull %i.du, ptr noundef nonnull %i.ea) #34, !inline_history !1774
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.028.i, i64 -184 ; 2 uses
  %.val.i13 = load i32, ptr %2, align 8, !tbaa !1767 ; 2 uses
  %.val1.i14 = load i32, ptr %i.h, align 4
  %.val3.i.i = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !1767 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.028.i, i64 -180
  %.val4.i.i = load i32, ptr %i.eb, align 4
  %i.ec = icmp eq i32 %.val.i13, %.val3.i.i
  %i.ed = icmp ugt i32 %.val1.i14, %.val4.i.i
  %i.ee = icmp ugt i32 %.val.i13, %.val3.i.i
  %.0.i.i.i.i = select i1 %i.ec, i1 %i.ed, i1 %i.ee
  br i1 %.0.i.i.i.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1775

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #35
  unreachable

._crit_edge.i:                                    ; preds = %_ZN4Luau9TypeErroraSEOS0_.exit.i, %_ZN4Luau9TypeErrorC2EOS0_.exit.i
  %.sroa.016.0.lcssa.i = phi ptr [ %.sroa.0.027, %_ZN4Luau9TypeErrorC2EOS0_.exit.i ], [ %.sroa.0.028.i, %_ZN4Luau9TypeErroraSEOS0_.exit.i ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.016.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(184) %2, i64 16, i1 false), !tbaa.struct !641
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 16 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 32 ; 4 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !44  ; 6 uses
  %i.em = icmp eq ptr %i.el, %i.d                 ; 2 uses
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %._crit_edge.i
  br i1 %i.em, label %bb.x, label %.thread.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i: ; preds = %._crit_edge.i
  br i1 %i.em, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.en = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %.not21.i.i8.i = icmp eq ptr %2, %.sroa.016.0.lcssa.i
  br i1 %.not21.i.i8.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  switch i64 %i.en, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !130
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.el, i64 %i.en, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !43  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 24
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !43
  %i.es = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i8 0, ptr %i.et, align 1, !tbaa !130
  %.pre.i.i10.i = load ptr, ptr %i.c, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i

.thread.i.i12.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 24
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !44
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !43
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !43
  %i.ew = load i64, ptr %i.d, align 8, !tbaa !130
  store i64 %i.ew, ptr %i.ej, align 8, !tbaa !130
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i
  %i.ex = load i64, ptr %i.ej, align 8, !tbaa !130
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !44
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 24
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !43
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !130
  store i64 %i.fa, ptr %i.ej, align 8, !tbaa !130
  %.not.i.i5.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i5.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i
  store ptr %i.ei, ptr %i.c, align 8, !tbaa !44
  store i64 %i.ex, ptr %i.d, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i, %.thread.i.i12.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i: ; preds = %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i, %bb.x
  %i.fb = phi ptr [ %i.ei, %bb.ab ], [ %i.d, %bb.ac ], [ %i.el, %bb.x ], [ %.pre.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i9.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store i8 0, ptr %i.fb, align 1, !tbaa !130
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 48 ; 2 uses
  %.not.i4.i7.i = icmp eq ptr %.sroa.016.0.lcssa.i, %2
  br i1 %.not.i4.i7.i, label %_ZN4Luau9TypeErroraSEOS0_.exit13.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !460
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.016.0.lcssa.i, i64 56 ; 2 uses
  invoke void %i.fg(ptr noundef nonnull %i.fh)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load i32, ptr %i.f, align 8, !tbaa !460 ; 2 uses
  store i32 %i.fi, ptr %i.fc, align 8, !tbaa !460
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableMoveE, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !17
  call void %i.fl(ptr noundef nonnull %i.fh, ptr noundef nonnull %i.g) #34, !inline_history !1774
  br label %_ZN4Luau9TypeErroraSEOS0_.exit13.i

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #35
  unreachable

_ZN4Luau9TypeErroraSEOS0_.exit13.i:               ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i6.i
  %i.fo = load i32, ptr %i.f, align 8, !tbaa !460
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17
  invoke void %i.fr(ptr noundef nonnull %i.g)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11 unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN4Luau9TypeErroraSEOS0_.exit13.i
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #35
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11: ; preds = %_ZN4Luau9TypeErroraSEOS0_.exit13.i
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.d
  br i1 %i.fv, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEEvT_T0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11
  %i.fw = load i64, ptr %i.d, align 8, !tbaa !130
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #36
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEEvT_T0_.exit": ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau9TypeErrorD2Ev.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 184 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1776

.loopexit:                                        ; preds = %bb.ah, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_12_GLOBAL__N_116accumulateErrorsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS2_10SourceNodeEESt4hashISI_ESt8equal_toISI_ESaISt4pairIKSI_SL_EEERNS2_14ModuleResolverERSR_E3$_0EEET0_T_S13_S13_S13_S12_T1_"(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond33 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond33, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.v
  %.036 = phi ptr [ %i.cl, %bb.v ], [ %4, %bb.a ] ; 19 uses
  %.sroa.024.035 = phi ptr [ %.sroa.024.1, %bb.v ], [ %0, %bb.a ] ; 15 uses
  %.sroa.020.034 = phi ptr [ %.sroa.020.1, %bb.v ], [ %2, %bb.a ] ; 15 uses
  %.val.i = load i32, ptr %.sroa.020.034, align 4, !tbaa !1767 ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.020.034, i64 4
  %.val1.i = load i32, ptr %i.c, align 4
  %.val2.i = load i32, ptr %.sroa.024.035, align 4, !tbaa !1767 ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.024.035, i64 4
  %.val3.i = load i32, ptr %i.d, align 4
  %i.e = icmp eq i32 %.val.i, %.val2.i
  %i.f = icmp ugt i32 %.val1.i, %.val3.i
  %i.g = icmp ugt i32 %.val.i, %.val2.i
  %.0.i.i.i = select i1 %i.e, i1 %i.f, i1 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.036, i64 32 ; 8 uses
  br i1 %.0.i.i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.036, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.020.034, i64 16, i1 false), !tbaa.struct !641
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !44   ; 6 uses
  %i.l = icmp eq ptr %i.k, %i.i
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !44   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 32 ; 6 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
end_hunk_3
