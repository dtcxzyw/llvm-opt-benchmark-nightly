Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/proof_node_updater?download=true
inline.NumInlined: 1825
inline.NumDeleted: 769
begin_hunk_0_@_ZN4cvc58internal16ProofNodeUpdater15processInternalESt10shared_ptrINS0_9ProofNodeEERSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE:bb.a

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.dq
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit457: ; preds = %bb.dp
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit459: ; preds = %bb.do
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit: ; preds = %bb.dn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit457, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit459, %bb.dw, %bb.du, %bb.ds
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.du ], [ %spec.select.i.i.i, %bb.dw ], [ %.sroa.032.0.lcssa.i.i.i, %bb.ds ], [ %i.nn, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit459 ], [ %i.nm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit457 ], [ %i.nl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.dn ]
  %.not329 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.md
  br i1 %.not329, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal16ProofNodeUpdater15processInternalESt10shared_ptrINS0_9ProofNodeEERSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE, ptr noundef nonnull @.str.9, i32 noundef 193)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.dz unwind label %bb.eb     ; 3 uses

bb.dz:                                            ; preds = %bb.dy
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull @.str.10, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dz
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull @.str.11, i64 noundef 74)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.nr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.no)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.eb, !inline_history !107 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #24
  unreachable

bb.ea:                                            ; preds = %bb.dx
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ei

bb.eb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.dz, %bb.dy
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #24
  unreachable

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit
  %i.nu = load ptr, ptr %i.ec, align 8, !tbaa !96 ; 5 uses
  %i.nv = load ptr, ptr %i.ed, align 8, !tbaa !105
  %.not.i143 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i143, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0312.0363, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !25 ; 2 uses
  %i.ny = load <2 x ptr>, ptr %.sroa.0312.0363, align 8, !tbaa !28
  store <2 x ptr> %i.ny, ptr %i.nu, align 8, !tbaa !28
  %.not.i.i.i.i144 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i144, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit.i146, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 3 uses
  %i.oa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i145 = icmp eq i8 %i.oa, 0
  br i1 %.not.i.i.i.i.i145, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ob = load i32, ptr %i.nz, align 4, !tbaa !30
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.nz, align 4, !tbaa !30
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit.i146

bb.ef:                                            ; preds = %bb.ed
  %i.od = atomicrmw volatile add ptr %i.nz, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i147 = load ptr, ptr %i.ec, align 8, !tbaa !96
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit.i146

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit.i146: ; preds = %bb.ef, %bb.ee, %bb.ec
  %i.oe = phi ptr [ %i.nu, %bb.ec ], [ %i.nu, %bb.ee ], [ %.pre.i147, %bb.ef ]
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store ptr %i.of, ptr %i.ec, align 8, !tbaa !96
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit149

bb.eg:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN4cvc58internal9ProofNodeEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread
  invoke void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.nu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0312.0363)
          to label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit149 unwind label %bb.eh

_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit149: ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit.i146, %bb.eg
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0312.0363, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.og, %i.ma
  br i1 %.not, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122, label %.lr.ph

bb.eh:                                            ; preds = %bb.eg
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122: ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE9push_backERKS4_.exit149, %bb.dl, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120, %bb.cn, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202

bb.ei:                                            ; preds = %bb.ea, %bb.eh, %bb.dm, %bb.di, %bb.dj, %bb.ct, %bb.cs, %bb.cf
  %.pn49 = phi { ptr, i32 } [ %i.oh, %bb.eh ], [ %i.lu, %bb.di ], [ %i.jf, %bb.cf ], [ %i.ki, %bb.cs ], [ %i.kj, %bb.ct ], [ %i.mb, %bb.dm ], [ %i.lv, %bb.dj ], [ %i.ns, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.hh

_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE4findERSA_.exit: ; preds = %bb.bd, %bb.ba, %bb.bc
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ba ], [ %i.gs, %bb.bc ], [ %i.gx, %bb.bd ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !108, !range !102, !noundef !104
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE4findERSA_.exit
  %i.ol = load ptr, ptr %i.eg, align 8, !tbaa !96 ; 2 uses
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -16
  store ptr %i.om, ptr %i.eg, align 8, !tbaa !96
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 -8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i150 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 4 uses
  %i.oq = load atomic i64, ptr %i.op acquire, align 8 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 4294967297
  %i.os = trunc i64 %i.oq to i32                  ; 2 uses
  br i1 %i.or, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.op, align 8, !tbaa !31
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 0, ptr %i.ot, align 4, !tbaa !33
  %i.ou = load ptr, ptr %i.oo, align 8, !tbaa !8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #23, !inline_history !97
  %i.ox = load ptr, ptr %i.oo, align 8, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #23, !inline_history !97
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154

bb.em:                                            ; preds = %bb.ek
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i151 = icmp eq i8 %i.pa, 0
  br i1 %.not.i.i.i.i151, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pb = add nsw i32 %i.os, -1
  store i32 %i.pb, ptr %i.op, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

bb.eo:                                            ; preds = %bb.em
  %i.pc = atomicrmw volatile add ptr %i.op, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i153 = phi i32 [ %i.os, %bb.en ], [ %i.pc, %bb.eo ]
  %i.pd = icmp eq i32 %.0.i.i.i.i.i153, 1
  br i1 %i.pd, label %bb.ep, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154, !prof !35

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oo) #23
  br label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154

_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154: ; preds = %bb.ej, %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i152, %bb.ep
  %i.pe = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseISt10shared_ptrIN4cvc58internal9ProofNodeEESt4pairIKS5_bESaIS8_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEEixERSA_.exit156 unwind label %bb.bi

_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEEixERSA_.exit156: ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE8pop_backEv.exit154
  store i8 1, ptr %i.pe, align 1, !tbaa !101
  %i.pf = load ptr, ptr %13, align 16, !tbaa !71
  %i.pg = invoke noundef i32 @_ZNK4cvc58internal9ProofNode7getRuleEv(ptr noundef nonnull align 8 dereferenceable(65) %i.pf)
          to label %bb.eq unwind label %bb.ez

bb.eq:                                            ; preds = %_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEEixERSA_.exit156
  %i.ph = icmp eq i32 %i.pg, 1
  br i1 %i.ph, label %bb.er, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit

bb.er:                                            ; preds = %bb.eq
  %i.pi = load ptr, ptr %13, align 16, !tbaa !71
  %i.pj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal9ProofNode12getArgumentsEv(ptr noundef nonnull align 8 dereferenceable(65) %i.pi)
          to label %bb.es unwind label %bb.fa     ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.pk = load ptr, ptr %i.w, align 8, !tbaa !37  ; 3 uses
  %i.pl = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = ashr exact i64 %i.po, 3                 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !37
  %i.ps = load ptr, ptr %i.pj, align 8, !tbaa !36
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = ashr exact i64 %i.pv, 3                 ; 3 uses
  %i.px = sub nsw i64 %i.pp, %i.pw                ; 2 uses
  %i.py = icmp ugt i64 %i.pw, %i.pp
  br i1 %i.py, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.pz = sub nsw i64 0, %i.pw
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.pz)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit unwind label %bb.fa

bb.eu:                                            ; preds = %bb.es
  %20 = icmp ult i64 %i.px, %i.pp
  br i1 %20, label %bb.ev, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit

bb.ev:                                            ; preds = %bb.eu
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.px ; 3 uses
  %.not.i.i157 = icmp eq ptr %i.pk, %i.qa
  br i1 %.not.i.i157, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i158

.lr.ph.i.i.i.i158:                                ; preds = %bb.ev, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ql, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.qa, %bb.ev ] ; 2 uses
  %i.qb = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %i.qc = load i64, ptr %i.qb, align 8            ; 3 uses
  %i.qd = and i64 %i.qc, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.qd, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.ew, !prof !35

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i158
  %i.qe = add i64 %i.qc, 1152920405095219200
  %i.qf = and i64 %i.qe, 1152920405095219200      ; 2 uses
  %i.qg = and i64 %i.qc, -1152920405095219201
  %i.qh = or disjoint i64 %i.qf, %i.qg
  store i64 %i.qh, ptr %i.qb, align 8
  %i.qi = icmp eq i64 %i.qf, 0
  br i1 %i.qi, label %bb.ex, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !35

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qb)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  %i.qk = extractvalue { ptr, i32 } %i.qj, 0
  call void @__clang_call_terminate(ptr %i.qk) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.ex, %bb.ew, %.lr.ph.i.i.i.i158
  %i.ql = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.ql, %i.pk
  br i1 %.not.i.i.i.i159, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i158, !llvm.loop !41

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  store ptr %i.qa, ptr %i.w, align 8, !tbaa !37
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit

bb.ez:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit, %_ZNSt13unordered_mapISt10shared_ptrIN4cvc58internal9ProofNodeEEbSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_bEEEixERSA_.exit156
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.fa:                                            ; preds = %bb.et, %bb.er
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.ev, %bb.eu, %bb.et, %bb.eq
  %i.qo = invoke noundef zeroext i1 @_ZN4cvc58internal16ProofNodeUpdater15checkMergeProofERSt10shared_ptrINS0_9ProofNodeEERKSt3mapINS0_12NodeTemplateILb1EEES4_St4lessIS8_ESaISt4pairIKS8_S4_EEERSt13unordered_mapIPKS3_bSt4hashISK_ESt8equal_toISK_ESaISB_IKSK_bEEE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.fb unwind label %bb.ez

bb.fb:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit
  br i1 %i.qo, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qp = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.qq = load <2 x ptr>, ptr %13, align 16, !tbaa !28
  store <2 x ptr> %i.qq, ptr %18, align 16, !tbaa !28
  %.not.i.i.i161 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i161, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 3 uses
  %i.qs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i162 = icmp eq i8 %i.qs, 0
  br i1 %.not.i.i.i.i162, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.qt = load i32, ptr %i.qr, align 4, !tbaa !30
  %i.qu = add nsw i32 %i.qt, 1
  store i32 %i.qu, ptr %i.qr, align 4, !tbaa !30
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163

bb.ff:                                            ; preds = %bb.fd
  %i.qv = atomicrmw volatile add ptr %i.qr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163: ; preds = %bb.fc, %bb.fe, %bb.ff
  invoke void @_ZN4cvc58internal16ProofNodeUpdater11runFinalizeESt10shared_ptrINS0_9ProofNodeEERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EERSt3mapIS7_S4_St4lessIS7_ESaISt4pairIKS7_S4_EEERSC_IS7_S5_IS4_SaIS4_EESE_SaISF_ISG_SM_EEERSt13unordered_mapIPKS3_bSt4hashIST_ESt8equal_toIST_ESaISF_IKST_bEEERKSt13unordered_setIS7_SU_IS7_ESW_IS7_ES8_E(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.fg unwind label %bb.fn

bb.fg:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163
  %i.qw = load ptr, ptr %i.eh, align 8, !tbaa !25 ; 8 uses
  %.not.i.i164 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i164, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 4 uses
  %i.qy = load atomic i64, ptr %i.qx acquire, align 8 ; 2 uses
  %i.qz = icmp eq i64 %i.qy, 4294967297
  %i.ra = trunc i64 %i.qy to i32                  ; 2 uses
  br i1 %i.qz, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.qx, align 8, !tbaa !31
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 0, ptr %i.rb, align 4, !tbaa !33
  %i.rc = load ptr, ptr %i.qw, align 8, !tbaa !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #23, !inline_history !34
  %i.rf = load ptr, ptr %i.qw, align 8, !tbaa !8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #23, !inline_history !34
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168

bb.fj:                                            ; preds = %bb.fh
  %i.ri = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i165 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i165, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.rj = add nsw i32 %i.ra, -1
  store i32 %i.rj, ptr %i.qx, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i166

bb.fl:                                            ; preds = %bb.fj
  %i.rk = atomicrmw volatile add ptr %i.qx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i166

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i166: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i167 = phi i32 [ %i.ra, %bb.fk ], [ %i.rk, %bb.fl ]
  %i.rl = icmp eq i32 %.0.i.i.i.i167, 1
  br i1 %i.rl, label %bb.fm, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168, !prof !35

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i166
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qw) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168

bb.fn:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit163
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #23
  br label %bb.hh

_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168: ; preds = %bb.fb, %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i166, %bb.fi, %bb.fg
  %i.rn = load ptr, ptr %i.ei, align 8, !tbaa !111, !nonnull !104, !align !112 ; 2 uses
  %i.ro = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.rp = load <2 x ptr>, ptr %13, align 16, !tbaa !28
  store <2 x ptr> %i.rp, ptr %19, align 16, !tbaa !28
  %.not.i.i.i195 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i195, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit197, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 3 uses
  %i.rr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i196 = icmp eq i8 %i.rr, 0
  br i1 %.not.i.i.i.i196, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.rs = load i32, ptr %i.rq, align 4, !tbaa !30
  %i.rt = add nsw i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rq, align 4, !tbaa !30
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit197

bb.fq:                                            ; preds = %bb.fo
  %i.ru = atomicrmw volatile add ptr %i.rq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit197

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit197: ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit168, %bb.fp, %bb.fq
  %i.rv = load ptr, ptr %i.rn, align 8, !tbaa !8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 48
  %i.rx = load ptr, ptr %i.rw, align 8
  invoke void %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull align 8 %19)
          to label %bb.fr unwind label %bb.fy

bb.fr:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit197
  %i.ry = load ptr, ptr %i.ej, align 8, !tbaa !25 ; 8 uses
  %.not.i.i198 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i198, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 4 uses
  %i.sa = load atomic i64, ptr %i.rz acquire, align 8 ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 4294967297
  %i.sc = trunc i64 %i.sa to i32                  ; 2 uses
  br i1 %i.sb, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i32 0, ptr %i.rz, align 8, !tbaa !31
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  store i32 0, ptr %i.sd, align 4, !tbaa !33
  %i.se = load ptr, ptr %i.ry, align 8, !tbaa !8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %i.ry) #23, !inline_history !34
  %i.sh = load ptr, ptr %i.ry, align 8, !tbaa !8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(16) %i.ry) #23, !inline_history !34
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit202

bb.fu:                                            ; preds = %bb.fs
end_hunk_0
