inline.NumInlined: 2914
inline.NumDeleted: 1522
begin_hunk_0_@_ZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsE:bb.a
  br i1 %i.ej, label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit26.i.i.i114, label %.lr.ph.i.i.i.i.i.i110

.lr.ph.i.i.i.i.i.i110:                            ; preds = %.noexc119, %.lr.ph.i.i.i.i.i.i110
  %.03.i.i.i.i.i.i111 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i110 ], [ %i.ep, %.noexc119 ] ; 3 uses
  %.092.i.i.i.i.i.i112 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i110 ], [ %i.cc, %.noexc119 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.et = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i112, i64 8
  %i.eu = load <2 x ptr>, ptr %.092.i.i.i.i.i.i112, align 8, !tbaa !57, !alias.scope !179, !noalias !176
  store ptr null, ptr %i.et, align 8, !tbaa !98, !alias.scope !179, !noalias !176
  store <2 x ptr> %i.eu, ptr %.03.i.i.i.i.i.i111, align 8, !tbaa !57, !alias.scope !176, !noalias !179
  store ptr null, ptr %.092.i.i.i.i.i.i112, align 8, !tbaa !164, !alias.scope !179, !noalias !176
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i111, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i112, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !167, !alias.scope !179, !noalias !176
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !167, !alias.scope !176, !noalias !179
  %i.ey = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i112, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i111, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i113 = icmp eq ptr %i.ey, %i.cb
  br i1 %.not.i.i.i.i.i.i113, label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit26.i.i.i114, label %.lr.ph.i.i.i.i.i.i110, !llvm.loop !175

_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit26.i.i.i114: ; preds = %.lr.ph.i.i.i.i.i.i110, %.noexc119
  %.0.lcssa.i.i.i.i.i.i115 = phi ptr [ %i.ep, %.noexc119 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i110 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i115, i64 24
  %.not.i27.i.i.i116 = icmp eq ptr %i.cc, null
  br i1 %.not.i27.i.i.i116, label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit26.i.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.eg) #42
  br label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117

_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117: ; preds = %bb.an, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit26.i.i.i114
  store ptr %i.fa, ptr %i.am, align 8, !tbaa !151
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.en
  br label %_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit

.loopexit176:                                     ; preds = %_ZNKSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i107
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bz, ptr %i.ah, align 1
  store ptr %i.ca, ptr %7, align 8
  store ptr %i.cb, ptr %i.w, align 8
  store ptr %i.cc, ptr %8, align 8
  br label %bb.ao

.loopexit.split-lp177:                            ; preds = %bb.am
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp177, %.loopexit176
  %lpad.phi180 = phi { ptr, i32 } [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ]
  call fastcc void @_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev(ptr %i.cw) #33
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai, %bb.ah
  %.pn57 = phi { ptr, i32 } [ %lpad.phi175, %bb.ai ], [ %lpad.phi180, %bb.ao ], [ %i.dz, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.aw

_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit: ; preds = %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117, %bb.ak, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ad, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit
  %i.fc = phi ptr [ %i.cc, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.cc, %bb.ad ], [ %i.cc, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread ], [ %i.cc, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit ], [ %i.ep, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117 ], [ %i.cc, %bb.ak ] ; 2 uses
  %i.fd = phi ptr [ %i.cb, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.cb, %bb.ad ], [ %i.cb, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread ], [ %i.cb, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit ], [ %i.fb, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117 ], [ %i.cb, %bb.ak ] ; 2 uses
  %i.fe = phi ptr [ %i.dm, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.ca, %bb.ad ], [ %i.ca, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread ], [ %i.ca, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit ], [ %i.ca, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117 ], [ %i.ca, %bb.ak ] ; 2 uses
  %i.ff = phi ptr [ %i.dy, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.bz, %bb.ad ], [ %i.bz, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit.thread ], [ %i.bz, %_ZNKSt8weak_ptrIN8facebook5velox6memory10MemoryPoolEE4lockEv.exit ], [ %i.bz, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i117 ], [ %i.bz, %bb.ak ] ; 2 uses
  %i.fg = load ptr, ptr %i.ak, align 8, !tbaa !98 ; 8 uses
  %.not.i.i126 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i126, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fh, align 8, !tbaa !101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !103
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #33, !inline_history !181
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #33, !inline_history !181
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i127 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i127, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i = phi i32 [ %i.fk, %bb.at ], [ %i.fu, %bb.au ]
  %i.fv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fv, label %bb.av, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #33
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %.sroa.0165.0 = load ptr, ptr %.sroa.0165.0216, align 8, !tbaa !153 ; 2 uses
  %i.fw = icmp eq ptr %.sroa.0165.0, null
  br i1 %i.fw, label %._crit_edge, label %bb.w

bb.aw:                                            ; preds = %bb.ap, %bb.v
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %bb.ap ], [ %i.by, %bb.v ]
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %9) #33
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.u
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.aw ], [ %i.bx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bv

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i90
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %bb.r, %bb.s, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.bg
  %.035222 = phi i64 [ %.2, %bb.bg ], [ %2, %.lr.ph223.preheader ] ; 4 uses
  %.039221 = phi i64 [ %i.gn, %bb.bg ], [ 0, %.lr.ph223.preheader ]
  %.sroa.0155.0220 = phi ptr [ %i.gp, %bb.bg ], [ %.val67, %.lr.ph223.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0155.0220, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !167 ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 1
  br i1 %i.fz, label %bb.ay, label %bb.bd, !prof !42

bb.ay:                                            ; preds = %.lr.ph223
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !182
  store i64 %i.fy, ptr %5, align 16, !tbaa !33, !noalias !182
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ga, align 16, !tbaa !33, !noalias !182
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.4, i64 11, i64 19, ptr nonnull %5)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !182
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.4) #41
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bc:                                            ; preds = %bb.az
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !33
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gb, %bb.bb ], [ %i.gc, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bv

bb.bd:                                            ; preds = %.lr.ph223
  %i.gi = load ptr, ptr %.sroa.0155.0220, align 8, !tbaa !164 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 312
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = invoke noundef i64 %i.gl(ptr noundef nonnull align 8 dereferenceable(264) %i.gi, i64 noundef %.035222, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.be unwind label %bb.bf     ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %i.gn = add i64 %i.gm, %.039221                 ; 2 uses
  %.not = icmp eq i64 %.035222, 0                 ; 2 uses
  %.not52 = icmp ult i64 %i.gm, %.035222          ; 2 uses
  %cond = or i1 %.not, %.not52
  br i1 %cond, label %bb.bg, label %.lr.ph.i.i.i.preheader

bb.bf:                                            ; preds = %bb.bd
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bg:                                            ; preds = %bb.be
  %12 = select i1 %.not52, i64 %i.gm, i64 0
  %spec.select62 = sub nuw i64 %.035222, %12
  %.2 = select i1 %.not, i64 0, i64 %spec.select62
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0155.0220, i64 24 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %.val69
  br i1 %i.gq, label %.lr.ph.i.i.i.preheader, label %.lr.ph223

.lr.ph.i.i.i.preheader:                           ; preds = %bb.be, %bb.bg
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hh, %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i ], [ %.val67, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.gr = getelementptr i8, ptr %.05.i.i.i, i64 8
  %.0.val.i.i.i = load ptr, ptr %i.gr, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.gs, align 8, !tbaa !101
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !103
  %i.gx = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i) #33, !inline_history !185
  %i.ha = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i) #33, !inline_history !185
  br label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.bk ], [ %i.hf, %bb.bl ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.hg, label %bb.bm, label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i, !prof !42

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i) #33
  br label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i

_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.bi, %.lr.ph.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.hh, %.val69
  br i1 %.not.i.i.i129, label %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %8, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i
  %.140301 = phi i64 [ %i.gn, %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ 0, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ]
  %.val.i130 = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %.val67, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i130, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.hi = ptrtoint ptr %.val1.i to i64
  %i.hj = ptrtoint ptr %.val.i130 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i130, i64 noundef %i.hk) #42
  br label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit

_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.hl = load ptr, ptr %7, align 8, !tbaa !148   ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i.i131 = icmp eq ptr %i.hl, %i.hn
  br i1 %.not4.i.i.i131, label %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i143, label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit, %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139
  %.05.i.i.i133 = phi ptr [ %i.ie, %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139 ], [ %i.hl, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit ] ; 2 uses
  %i.ho = getelementptr i8, ptr %.05.i.i.i133, i64 8
  %.0.val.i.i.i134 = load ptr, ptr %i.ho, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i.i.i.i.i.i135 = icmp eq ptr %.0.val.i.i.i134, null
  br i1 %.not.i.i.i.i.i.i.i.i135, label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i132
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i134, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.hp, align 8, !tbaa !101
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i134, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !103
  %i.hu = load ptr, ptr %.0.val.i.i.i134, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i134) #33, !inline_history !185
  %i.hx = load ptr, ptr %.0.val.i.i.i134, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i134) #33, !inline_history !185
  br label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139

bb.bq:                                            ; preds = %bb.bo
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i136 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i136, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i137

bb.bs:                                            ; preds = %bb.bq
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i137

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i137: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i.i.i.i138 = phi i32 [ %i.hs, %bb.br ], [ %i.ic, %bb.bs ]
  %i.id = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i138, 1
  br i1 %i.id, label %bb.bt, label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139, !prof !42

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i137
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.0.val.i.i.i134) #33
  br label %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139

_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i137, %bb.bp, %.lr.ph.i.i.i132
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i133, i64 24 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.ie, %i.hn
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i141, label %.lr.ph.i.i.i132, !llvm.loop !186

_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i141: ; preds = %_ZSt8_DestroyIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateEvPT_.exit.i.i.i139
  %.val.pr.i142 = load ptr, ptr %7, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i143

_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i143: ; preds = %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i141, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit
  %.val.i144 = phi ptr [ %.val.pr.i142, %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exitthread-pre-split.i141 ], [ %i.hl, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i145 = icmp eq ptr %.val.i144, null
  br i1 %.not.i.i2.i145, label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit147, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i143
  %.val1.i146 = load ptr, ptr %i.ah, align 8, !tbaa !152
  %i.if = ptrtoint ptr %.val1.i146 to i64
  %i.ig = ptrtoint ptr %.val.i144 to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.val.i144, i64 noundef %i.ih) #42
  br label %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit147

_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit147: ; preds = %_ZSt8_DestroyIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateS8_EvT_SA_RSaIT0_E.exit.i143, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bw

bb.bv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bf, %bb.ax
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.ax ], [ %i.go, %bb.bf ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call fastcc void @_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn57.pn.pn.pn

bb.bw:                                            ; preds = %bb.a, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit147
  %.0 = phi i64 [ %.140301, %_ZNSt6vectorIZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS2_10MemoryPoolEmmRNS3_5StatsEE9CandidateSaIS8_EED2Ev.exit147 ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev(ptr %.8.val) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !103
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !181
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !181
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !268
  store ptr %.031, ptr %i.s, align 8, !tbaa !153
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !281

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !40
  store ptr %.0.i, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !266
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %.fr20.i = freeze i64 %i.f                      ; 3 uses
  %i.g = icmp eq i64 %.fr20.i, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i, !llvm.loop !282

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i: ; preds = %.preheader.split.us.i, %bb.c
  %.017.us19.i = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.017.us19.i, align 8, !tbaa !153 ; 4 uses
  %.not14.us.i = icmp eq ptr %i.o, null
  br i1 %.not14.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.c, !llvm.loop !282

.preheader.split.i:                               ; preds = %.preheader.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i
  %.017.i = phi ptr [ %i.v, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i ], [ %i.d, %.preheader.i ] ; 5 uses
  %.01116.i = phi ptr [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i ], [ %i.c, %.preheader.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !7
  %i.r = icmp eq i64 %.fr20.i, %i.q
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i: ; preds = %.preheader.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.t, i64 %.fr20.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, %.preheader.split.i
  %i.v = load ptr, ptr %.017.i, align 8, !tbaa !153 ; 2 uses
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %.preheader.split.i, !llvm.loop !282

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, %bb.c, %.preheader.split.us.i
  %i.w = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.017.us19.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01116.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !269
  %i.ab = urem i64 %i.aa, %i.y
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !7
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #43
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40 ; 3 uses
  %i.ak = urem i64 %i.af, %i.aj                   ; 5 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !268 ; 4 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !153 ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8
  %.fr22.i = freeze i64 %i.ap                     ; 3 uses
  %i.aq = icmp eq i64 %.fr22.i, 0
  %i.ar = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !269 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.h
  %i.as = phi i64 [ %i.az, %bb.h ], [ %.pre26.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.h ], [ %i.an, %bb.f ]
  %.0.us.i = phi ptr [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 4 uses
  %i.at = icmp eq i64 %i.af, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i

bb.g:                                             ; preds = %.split.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !7
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i: ; preds = %bb.g, %.split.us.i
  %i.ax = load ptr, ptr %.0.us.i, align 8, !tbaa !153 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ax, null
  br i1 %.not18.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !269 ; 2 uses
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.us.i = icmp eq i64 %i.ba, %i.ak
  br i1 %.not19.us.i, label %.split.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !271

.split.i:                                         ; preds = %bb.f, %bb.j
  %i.bb = phi i64 [ %i.bl, %bb.j ], [ %.pre26.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.j ], [ %i.an, %bb.f ]
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ %i.ao, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = icmp eq i64 %i.af, %i.bb
  br i1 %i.bd, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i

bb.i:                                             ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !7
  %i.bg = icmp eq i64 %.fr22.i, %i.bf
  br i1 %i.bg, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !32
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.bh, i64 %.fr22.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bi, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, %bb.i, %.split.i
  %i.bj = load ptr, ptr %.0.i, align 8, !tbaa !153 ; 3 uses
  %.not18.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !269 ; 2 uses
  %i.bm = urem i64 %i.bl, %i.aj
  %.not19.i = icmp eq i64 %i.bm, %i.ak
  br i1 %.not19.i, label %.split.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread, !llvm.loop !271

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit
  %.120 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.0.us.i, %bb.g ], [ %.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i ]
  %.018 = phi i64 [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i ]
  %.016 = phi ptr [ %.1.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.015.us.i, %bb.g ], [ %.015.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.i ]
  %i.bn = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSO_15_Hash_node_baseEPNSO_10_Hash_nodeISM_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.018, ptr noundef nonnull %.016, ptr noundef nonnull %.120) ; 0 uses
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %.loopexit
  %.1 = phi i64 [ 1, %.loopexit ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISE_EERKNSE_6ConfigEEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISN_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSO_15_Hash_node_baseEPNSO_10_Hash_nodeISM_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !268  ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !153    ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !269
  %i.j = urem i64 %i.i, %i.g                      ; 2 uses
  %.not9.i = icmp eq i64 %i.j, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  store ptr %i.c, ptr %i.k, align 8, !tbaa !268
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.l, align 8, !tbaa !264
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  store ptr null, ptr %i.b, align 8, !tbaa !268
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !269
  %i.r = urem i64 %i.q, %i.o                      ; 2 uses
  %.not17 = icmp eq i64 %i.r, %1
  br i1 %.not17, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  store ptr %2, ptr %i.s, align 8, !tbaa !268
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !153    ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.y = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISD_EERKNSD_6ConfigEEEESaISM_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSO_18_Mod_range_hashingENSO_20_Default_ranged_hashENSO_20_Prime_rehash_policyENSO_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSO_10_Hash_nodeISM_Lb1EEEm.exit
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !32  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISF_EERKNSF_6ConfigEEEELb1EEEEE18_M_deallocate_nodeEPSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISF_EERKNSF_6ConfigEEEELb1EEEEE18_M_deallocate_nodeEPSP_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox6memory16MemoryArbitratorESt14default_deleteISF_EERKNSF_6ConfigEEEELb1EEEEE18_M_deallocate_nodeEPSP_.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 80) #42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !266
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !266
  ret ptr %i.t
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #33, !inline_history !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #33, !inline_history !283
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS4_10MemoryPoolEmmRNS5_5StatsEE9CandidateSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_7reclaimES7_mmS9_E3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Candidate, align 16         ; 6 uses
  %4 = alloca %struct.Candidate, align 16         ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS4_10MemoryPoolEmmRNS5_5StatsEE9CandidateSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS5_7reclaimES7_mmS9_E3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph70

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS4_10MemoryPoolEmmRNS5_5StatsEE9CandidateSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS5_7reclaimES7_mmS9_E3$_0EEET_SK_SK_T0_.exit"
  %i.j = icmp eq i64 %i.ce, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph70, !llvm.loop !284

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa66 = phi i64 [ %i.c, %.lr.ph ], [ %i.lt, %bb.b ]
  %storemerge44.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ]
  %i.k = udiv exact i64 %.lcssa66, 24             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.l = add nsw i64 %i.k, -2
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit24.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ai, %_ZZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS1_10MemoryPoolEmmRNS2_5StatsEEN9CandidateD2Ev.exit24.i.i.i ] ; 4 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = load i64, ptr %i.q, align 8, !tbaa !167
  store <2 x ptr> %i.r, ptr %4, align 16, !tbaa !57
  store i64 %i.s, ptr %i.o, align 16, !tbaa !167
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox6memory15MemoryReclaimer7reclaimEPNS4_10MemoryPoolEmmRNS5_5StatsEE9CandidateSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS5_7reclaimES7_mmS9_E3$_0EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.k, ptr noundef %4)
          to label %bb.d unwind label %bb.k
end_hunk_1
