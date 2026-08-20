inline.NumInlined: 5130
inline.NumDeleted: 1458
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  br i1 %i.bta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1640: ; preds = %bb.mt
  %i.btb = load i64, ptr %i.bsz, align 8, !tbaa !30
  %i.btc = add i64 %i.btb, 1
  call void @_ZdlPvm(ptr noundef %i.bsy, i64 noundef %i.btc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1642: ; preds = %bb.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1640
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #30
  br label %.critedge

bb.mu:                                            ; preds = %bb.mn
  %i.btd = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.mv:                                            ; preds = %bb.mo
  %i.bte = landingpad { ptr, i32 }
          cleanup
  br label %bb.mx

bb.mw:                                            ; preds = %bb.mp
  %i.btf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #30
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %.pn742 = phi { ptr, i32 } [ %i.btf, %bb.mw ], [ %i.bte, %bb.mv ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %107) #30
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mu
  %.pn742.pn = phi { ptr, i32 } [ %.pn742, %bb.mx ], [ %i.btd, %bb.mu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %105) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #30
  br label %bb.afo

bb.mz:                                            ; preds = %bb.mr
  %i.btg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645

bb.na:                                            ; preds = %bb.ms
  %i.bth = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #30
  %i.bti = load ptr, ptr %108, align 8, !tbaa !149 ; 2 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 2 uses
  %i.btk = icmp eq ptr %i.bti, %i.btj
  br i1 %i.btk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1643

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1643: ; preds = %bb.na
  %i.btl = load i64, ptr %i.btj, align 8, !tbaa !30
  %i.btm = add i64 %i.btl, 1
  call void @_ZdlPvm(ptr noundef %i.bti, i64 noundef %i.btm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1645: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1643, %bb.mz
  %.pn745 = phi { ptr, i32 } [ %i.btg, %bb.mz ], [ %i.bth, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1643 ], [ %i.bth, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #30
  br label %bb.afo

bb.nb:                                            ; preds = %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855, %.critedge855
  %.not7382650.not = icmp eq i64 %i.r, 0
  br i1 %.not7382650.not, label %.critedge857, label %.lr.ph2654

.lr.ph2654:                                       ; preds = %bb.nb
  %.not3815 = icmp eq i32 %i.a, 16390
  %i.btn = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.bto = getelementptr inbounds nuw [152 x i8], ptr %i.btn, i64 %i.axc ; 3 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 40
  %i.btq = load i8, ptr %i.btp, align 8, !tbaa !258
  switch i8 %i.btq, label %.loopexit2805 [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647.peel
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1646
  ], !prof !278

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647.peel: ; preds = %.lr.ph2654
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bto, i64 24
  %i.bts = load ptr, ptr %2, align 8, !tbaa !309  ; 3 uses
  %i.btt = load ptr, ptr %i.btr, align 8, !tbaa !271
  store ptr %i.btt, ptr %i.bts, align 8, !tbaa !271
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bts, i64 8 ; 3 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bto, i64 32
  %i.btw = load ptr, ptr %i.btv, align 8, !tbaa !267 ; 4 uses
  %i.btx = load ptr, ptr %i.btu, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1648.peel = icmp eq ptr %i.btw, %i.btx
  br i1 %.not.i.i.i.i1648.peel, label %_ZN8bitwuzla4TermaSERKS0_.exit1658.peel, label %bb.nc

bb.nc:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647.peel
  %.not7.i.i.i.i1649.peel = icmp eq ptr %i.btw, null
  br i1 %.not7.i.i.i.i1649.peel, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btw, i64 8 ; 3 uses
  %i.btz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1650.peel = icmp eq i8 %i.btz, 0
  br i1 %.not.i.i.i.i.i1650.peel, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bua = load i32, ptr %i.bty, align 4, !tbaa !269
  %i.bub = add nsw i32 %i.bua, 1
  store i32 %i.bub, ptr %i.bty, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel

bb.nf:                                            ; preds = %bb.nd
  %i.buc = atomicrmw volatile add ptr %i.bty, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1657.peel = load ptr, ptr %i.btu, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel: ; preds = %bb.nf, %bb.ne, %bb.nc
  %i.bud = phi ptr [ %i.btx, %bb.nc ], [ %i.btx, %bb.ne ], [ %.pr.pre.i.i.i.i1657.peel, %bb.nf ] ; 8 uses
  %.not8.i.i.i.i1652.peel = icmp eq ptr %i.bud, null
  br i1 %.not8.i.i.i.i1652.peel, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel, label %bb.ng

bb.ng:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 8 ; 4 uses
  %i.buf = load atomic i64, ptr %i.bue acquire, align 8 ; 2 uses
  %i.bug = icmp eq i64 %i.buf, 4294967297
  %i.buh = trunc i64 %i.buf to i32                ; 2 uses
  br i1 %i.bug, label %bb.nl, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bui = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1653.peel = icmp eq i8 %i.bui, 0
  br i1 %.not.i9.i.i.i.i1653.peel, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.buj = add nsw i32 %i.buh, -1
  store i32 %i.buj, ptr %i.bue, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654.peel

bb.nj:                                            ; preds = %bb.nh
  %i.buk = atomicrmw volatile add ptr %i.bue, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654.peel: ; preds = %bb.nj, %bb.ni
  %.0.i.i.i.i.i.i1655.peel = phi i32 [ %i.buh, %bb.ni ], [ %i.buk, %bb.nj ]
  %i.bul = icmp eq i32 %.0.i.i.i.i.i.i1655.peel, 1
  br i1 %i.bul, label %bb.nk, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel, !prof !270

bb.nk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654.peel
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bud) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel

bb.nl:                                            ; preds = %bb.ng
  store i32 0, ptr %i.bue, align 8, !tbaa !261
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bud, i64 12
  store i32 0, ptr %i.bum, align 4, !tbaa !263
  %i.bun = load ptr, ptr %i.bud, align 8, !tbaa !8
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.bup = load ptr, ptr %i.buo, align 8
  tail call void %i.bup(ptr noundef nonnull align 8 dereferenceable(16) %i.bud) #30, !inline_history !274
  %i.buq = load ptr, ptr %i.bud, align 8, !tbaa !8
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 24
  %i.bus = load ptr, ptr %i.bur, align 8
  tail call void %i.bus(ptr noundef nonnull align 8 dereferenceable(16) %i.bud) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel: ; preds = %bb.nl, %bb.nk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654.peel, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651.peel
  store ptr %i.btw, ptr %i.btu, align 8, !tbaa !267
  %.pre2828 = load ptr, ptr %2, align 8, !tbaa !309
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1658.peel

_ZN8bitwuzla4TermaSERKS0_.exit1658.peel:          ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647.peel
  %i.but = phi ptr [ %.pre2828, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656.peel ], [ %i.bts, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #30
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %111, ptr noundef nonnull align 8 dereferenceable(16) %i.but)
  %i.buu = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16) %111)
          to label %bb.nm unwind label %.loopexit.split-lp2807

bb.nm:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1658.peel
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %111) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #30
  br i1 %i.buu, label %bb.nn, label %.loopexit2811.thread

.loopexit2811.thread:                             ; preds = %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #30
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662

bb.nn:                                            ; preds = %bb.nm
  %exitcond2803.peel.not = icmp eq i64 %i.r, 1
  br i1 %exitcond2803.peel.not, label %.critedge857, label %.peel.next

.peel.next:                                       ; preds = %bb.nn
  %i.buv = add i64 %i.p, 2
  br label %bb.no

bb.no:                                            ; preds = %.peel.next, %bb.qd
  %.03772652 = phi i64 [ %i.buv, %.peel.next ], [ %i.cib, %bb.qd ] ; 8 uses
  %.03782651 = phi i64 [ 1, %.peel.next ], [ %i.cia, %bb.qd ] ; 12 uses
  %i.buw = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.bux = getelementptr inbounds nuw [152 x i8], ptr %i.buw, i64 %.03772652 ; 3 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 40
  %i.buz = load i8, ptr %i.buy, align 8, !tbaa !258
  switch i8 %i.buz, label %.loopexit2805 [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1646
  ], !prof !278

.loopexit2805:                                    ; preds = %bb.no, %.lr.ph2654
  %i.bva = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bva, align 8, !tbaa !8
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 8
  store ptr @.str.202, ptr %i.bvb, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.bva, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i1646: ; preds = %bb.no, %.lr.ph2654
  %i.bvc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bvc, align 8, !tbaa !8
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 8
  store ptr @.str.201, ptr %i.bvd, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.bvc, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647: ; preds = %bb.no
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bux, i64 24
  %i.bvf = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.bvg = getelementptr inbounds nuw [16 x i8], ptr %i.bvf, i64 %.03782651 ; 2 uses
  %i.bvh = load ptr, ptr %i.bve, align 8, !tbaa !271
  store ptr %i.bvh, ptr %i.bvg, align 8, !tbaa !271
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvg, i64 8 ; 3 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bux, i64 32
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !267 ; 4 uses
  %i.bvl = load ptr, ptr %i.bvi, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1648 = icmp eq ptr %i.bvk, %i.bvl
  br i1 %.not.i.i.i.i1648, label %_ZN8bitwuzla4TermaSERKS0_.exit1658, label %bb.np

bb.np:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647
  %.not7.i.i.i.i1649 = icmp eq ptr %i.bvk, null
  br i1 %.not7.i.i.i.i1649, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8 ; 3 uses
  %i.bvn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1650 = icmp eq i8 %i.bvn, 0
  br i1 %.not.i.i.i.i.i1650, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bvo = load i32, ptr %i.bvm, align 4, !tbaa !269
  %i.bvp = add nsw i32 %i.bvo, 1
  store i32 %i.bvp, ptr %i.bvm, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651

bb.ns:                                            ; preds = %bb.nq
  %i.bvq = atomicrmw volatile add ptr %i.bvm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1657 = load ptr, ptr %i.bvi, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651: ; preds = %bb.ns, %bb.nr, %bb.np
  %i.bvr = phi ptr [ %i.bvl, %bb.np ], [ %i.bvl, %bb.nr ], [ %.pr.pre.i.i.i.i1657, %bb.ns ] ; 8 uses
  %.not8.i.i.i.i1652 = icmp eq ptr %i.bvr, null
  br i1 %.not8.i.i.i.i1652, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656, label %bb.nt

bb.nt:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8 ; 4 uses
  %i.bvt = load atomic i64, ptr %i.bvs acquire, align 8 ; 2 uses
  %i.bvu = icmp eq i64 %i.bvt, 4294967297
  %i.bvv = trunc i64 %i.bvt to i32                ; 2 uses
  br i1 %i.bvu, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  store i32 0, ptr %i.bvs, align 8, !tbaa !261
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvr, i64 12
  store i32 0, ptr %i.bvw, align 4, !tbaa !263
  %i.bvx = load ptr, ptr %i.bvr, align 8, !tbaa !8
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvx, i64 16
  %i.bvz = load ptr, ptr %i.bvy, align 8
  call void %i.bvz(ptr noundef nonnull align 8 dereferenceable(16) %i.bvr) #30, !inline_history !274
  %i.bwa = load ptr, ptr %i.bvr, align 8, !tbaa !8
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 24
  %i.bwc = load ptr, ptr %i.bwb, align 8
  call void %i.bwc(ptr noundef nonnull align 8 dereferenceable(16) %i.bvr) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656

bb.nv:                                            ; preds = %bb.nt
  %i.bwd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1653 = icmp eq i8 %i.bwd, 0
  br i1 %.not.i9.i.i.i.i1653, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bwe = add nsw i32 %i.bvv, -1
  store i32 %i.bwe, ptr %i.bvs, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654

bb.nx:                                            ; preds = %bb.nv
  %i.bwf = atomicrmw volatile add ptr %i.bvs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654: ; preds = %bb.nx, %bb.nw
  %.0.i.i.i.i.i.i1655 = phi i32 [ %i.bvv, %bb.nw ], [ %i.bwf, %bb.nx ]
  %i.bwg = icmp eq i32 %.0.i.i.i.i.i.i1655, 1
  br i1 %i.bwg, label %bb.ny, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656, !prof !270

bb.ny:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bvr) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656: ; preds = %bb.ny, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1654, %bb.nu, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1651
  store ptr %i.bvk, ptr %i.bvi, align 8, !tbaa !267
  %.pre2831 = load ptr, ptr %2, align 8, !tbaa !309
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1658

_ZN8bitwuzla4TermaSERKS0_.exit1658:               ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656
  %i.bwh = phi ptr [ %i.bvf, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1647 ], [ %.pre2831, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1656 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #30
  %i.bwi = getelementptr inbounds nuw [16 x i8], ptr %i.bwh, i64 %.03782651
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %111, ptr noundef nonnull align 8 dereferenceable(16) %i.bwi)
  %i.bwj = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_bvEv(ptr noundef nonnull align 8 dereferenceable(16) %111)
          to label %bb.nz unwind label %.loopexit2806

bb.nz:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1658
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %111) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #30
  br i1 %i.bwj, label %bb.pe, label %.loopexit2811

.loopexit2811:                                    ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.bwk = icmp ult i64 %.03782651, 10
  br i1 %i.bwk, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662, label %.lr.ph.i.i1659

.lr.ph.i.i1659:                                   ; preds = %.loopexit2811, %bb.of
  %.029.i.i1660 = phi i32 [ %i.bws, %bb.of ], [ 1, %.loopexit2811 ] ; 4 uses
  %.02328.i.i1661 = phi i64 [ %i.bwr, %bb.of ], [ %.03782651, %.loopexit2811 ] ; 5 uses
  %i.bwl = icmp ult i64 %.02328.i.i1661, 100
  br i1 %i.bwl, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %.lr.ph.i.i1659
  %i.bwm = add i32 %.029.i.i1660, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662

bb.ob:                                            ; preds = %.lr.ph.i.i1659
  %i.bwn = icmp ult i64 %.02328.i.i1661, 1000
  br i1 %i.bwn, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.bwo = add i32 %.029.i.i1660, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662

bb.od:                                            ; preds = %bb.ob
  %i.bwp = icmp ult i64 %.02328.i.i1661, 10000
  br i1 %i.bwp, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.bwq = add i32 %.029.i.i1660, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662

bb.of:                                            ; preds = %bb.od
  %i.bwr = udiv i64 %.02328.i.i1661, 10000
  %i.bws = add i32 %.029.i.i1660, 4               ; 2 uses
  %i.bwt = icmp ult i64 %.02328.i.i1661, 100000
  br i1 %i.bwt, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662, label %.lr.ph.i.i1659, !llvm.loop !336

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662: ; preds = %bb.of, %.loopexit2811.thread, %bb.oe, %bb.oc, %bb.oa, %.loopexit2811
  %.03782651.lcssa27153819 = phi i64 [ %.03782651, %bb.oe ], [ %.03782651, %bb.oa ], [ %.03782651, %bb.oc ], [ %.03782651, %.loopexit2811 ], [ 0, %.loopexit2811.thread ], [ %.03782651, %bb.of ] ; 3 uses
  %.03772652.lcssa27223818 = phi i64 [ %.03772652, %bb.oe ], [ %.03772652, %bb.oa ], [ %.03772652, %bb.oc ], [ %.03772652, %.loopexit2811 ], [ %i.axc, %.loopexit2811.thread ], [ %.03772652, %bb.of ]
  %.022.i.i1663 = phi i32 [ %i.bwq, %bb.oe ], [ %i.bwm, %bb.oa ], [ %i.bwo, %bb.oc ], [ 1, %.loopexit2811 ], [ 1, %.loopexit2811.thread ], [ %i.bws, %bb.of ]
  %i.bwu = zext i32 %.022.i.i1663 to i64
  %i.bwv = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 5 uses
  store ptr %i.bwv, ptr %116, align 8, !tbaa !25, !alias.scope !866
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %116, i64 noundef %i.bwu, i8 noundef signext 0)
  %i.bww = load ptr, ptr %116, align 8, !tbaa !149, !alias.scope !866 ; 4 uses
  %i.bwx = icmp ugt i64 %.03782651.lcssa27153819, 99
  br i1 %i.bwx, label %.lr.ph.preheader.i.i1667, label %._crit_edge.i.i1664

.lr.ph.preheader.i.i1667:                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i1662
  %i.bwy = getelementptr inbounds nuw i8, ptr %116, i64 8
  %i.bwz = load i64, ptr %i.bwy, align 8, !tbaa !28, !alias.scope !866
  %i.bxa = trunc i64 %i.bwz to i32
  %i.bxb = add i32 %i.bxa, -1
  br label %.lr.ph.i6.i1668

.lr.ph.i6.i1668:                                  ; preds = %.lr.ph.i6.i1668, %.lr.ph.preheader.i.i1667
  %.020.i.i1669 = phi i64 [ %i.bxe, %.lr.ph.i6.i1668 ], [ %.03782651.lcssa27153819, %.lr.ph.preheader.i.i1667 ] ; 3 uses
  %.01819.i.i1670 = phi i32 [ %i.bxo, %.lr.ph.i6.i1668 ], [ %i.bxb, %.lr.ph.preheader.i.i1667 ] ; 3 uses
  %i.bxc = urem i64 %.020.i.i1669, 100
  %i.bxd = shl nuw nsw i64 %i.bxc, 1
  %i.bxe = udiv i64 %.020.i.i1669, 100            ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bxd ; 2 uses
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 1
  %i.bxh = load i8, ptr %i.bxg, align 1, !tbaa !30, !noalias !866
  %i.bxi = zext i32 %.01819.i.i1670 to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bww, i64 %i.bxi
  store i8 %i.bxh, ptr %i.bxj, align 1, !tbaa !30
  %i.bxk = load i8, ptr %i.bxf, align 2, !tbaa !30, !noalias !866
end_hunk_0
begin_hunk_1_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  %i.cbu = load ptr, ptr %113, align 8, !tbaa !149 ; 2 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 2 uses
  %i.cbw = icmp eq ptr %i.cbu, %i.cbv
  br i1 %i.cbw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1716, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1714

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1714: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1713
  %i.cbx = load i64, ptr %i.cbv, align 8, !tbaa !30
  %i.cby = add i64 %i.cbx, 1
  call void @_ZdlPvm(ptr noundef %i.cbu, i64 noundef %i.cby) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1716

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1716: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1713, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1714
  %i.cbz = load ptr, ptr %117, align 8, !tbaa !149 ; 2 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 2 uses
  %i.ccb = icmp eq ptr %i.cbz, %i.cca
  br i1 %i.ccb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1719, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1717: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1716
  %i.ccc = load i64, ptr %i.cca, align 8, !tbaa !30
  %i.ccd = add i64 %i.ccc, 1
  call void @_ZdlPvm(ptr noundef %i.cbz, i64 noundef %i.ccd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1719

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1719: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1717
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #30
  %i.cce = load ptr, ptr %114, align 8, !tbaa !149 ; 2 uses
  %i.ccf = icmp eq ptr %i.cce, %i.byq
  br i1 %i.ccf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1720: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1719
  %i.ccg = load i64, ptr %i.byq, align 8, !tbaa !30
  %i.cch = add i64 %i.ccg, 1
  call void @_ZdlPvm(ptr noundef %i.cce, i64 noundef %i.cch) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1722: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1720
  %i.cci = load ptr, ptr %115, align 8, !tbaa !149 ; 2 uses
  %i.ccj = icmp eq ptr %i.cci, %i.bya
  br i1 %i.ccj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1722
  %i.cck = load i64, ptr %i.bya, align 8, !tbaa !30
  %i.ccl = add i64 %i.cck, 1
  call void @_ZdlPvm(ptr noundef %i.cci, i64 noundef %i.ccl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1725: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1722, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1723
  %i.ccm = load ptr, ptr %116, align 8, !tbaa !149 ; 2 uses
  %i.ccn = icmp eq ptr %i.ccm, %i.bwv
  br i1 %i.ccn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1726

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1726: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1725
  %i.cco = load i64, ptr %i.bwv, align 8, !tbaa !30
  %i.ccp = add i64 %i.cco, 1
  call void @_ZdlPvm(ptr noundef %i.ccm, i64 noundef %i.ccp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1728: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1725, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1726
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #30
  br label %.critedge

.loopexit2806:                                    ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1658
  %lpad.loopexit2808 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

.loopexit.split-lp2807:                           ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1658.peel
  %lpad.loopexit.split-lp2809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.ox:                                            ; preds = %.loopexit.split-lp2807, %.loopexit2806
  %lpad.phi2810 = phi { ptr, i32 } [ %lpad.loopexit2808, %.loopexit2806 ], [ %lpad.loopexit.split-lp2809, %.loopexit.split-lp2807 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %111) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #30
  br label %bb.afo

bb.oy:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit1671
  %i.ccq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743

bb.oz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1678, %bb.ok
  %i.ccr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740

bb.pa:                                            ; preds = %bb.om
  %i.ccs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737

bb.pb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1688, %bb.or, %.critedge.i1694
  %i.cct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734

bb.pc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1703, %bb.ot
  %i.ccu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731

bb.pd:                                            ; preds = %bb.ov
  %i.ccv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #30
  %i.ccw = load ptr, ptr %112, align 8, !tbaa !149 ; 2 uses
  %i.ccx = icmp eq ptr %i.ccw, %i.caz
  br i1 %i.ccx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1729

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1729: ; preds = %bb.pd
  %i.ccy = load i64, ptr %i.caz, align 8, !tbaa !30
  %i.ccz = add i64 %i.ccy, 1
  call void @_ZdlPvm(ptr noundef %i.ccw, i64 noundef %i.ccz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731: ; preds = %bb.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1729, %bb.pc
  %.pn731 = phi { ptr, i32 } [ %i.ccu, %bb.pc ], [ %i.ccv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1729 ], [ %i.ccv, %bb.pd ] ; 2 uses
  %i.cda = load ptr, ptr %113, align 8, !tbaa !149 ; 2 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 2 uses
  %i.cdc = icmp eq ptr %i.cda, %i.cdb
  br i1 %i.cdc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1732: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731
  %i.cdd = load i64, ptr %i.cdb, align 8, !tbaa !30
  %i.cde = add i64 %i.cdd, 1
  call void @_ZdlPvm(ptr noundef %i.cda, i64 noundef %i.cde) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1732, %bb.pb
  %.pn731.pn = phi { ptr, i32 } [ %i.cct, %bb.pb ], [ %.pn731, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1732 ], [ %.pn731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731 ] ; 2 uses
  %i.cdf = load ptr, ptr %117, align 8, !tbaa !149 ; 2 uses
  %i.cdg = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 2 uses
  %i.cdh = icmp eq ptr %i.cdf, %i.cdg
  br i1 %i.cdh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1735: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734
  %i.cdi = load i64, ptr %i.cdg, align 8, !tbaa !30
  %i.cdj = add i64 %i.cdi, 1
  call void @_ZdlPvm(ptr noundef %i.cdf, i64 noundef %i.cdj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1735, %bb.pa
  %.pn731.pn.pn = phi { ptr, i32 } [ %i.ccs, %bb.pa ], [ %.pn731.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1735 ], [ %.pn731.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1734 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #30
  %i.cdk = load ptr, ptr %114, align 8, !tbaa !149 ; 2 uses
  %i.cdl = icmp eq ptr %i.cdk, %i.byq
  br i1 %i.cdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1738

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1738: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737
  %i.cdm = load i64, ptr %i.byq, align 8, !tbaa !30
  %i.cdn = add i64 %i.cdm, 1
  call void @_ZdlPvm(ptr noundef %i.cdk, i64 noundef %i.cdn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1738, %bb.oz
  %.pn731.pn.pn.pn = phi { ptr, i32 } [ %i.ccr, %bb.oz ], [ %.pn731.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1738 ], [ %.pn731.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1737 ] ; 2 uses
  %i.cdo = load ptr, ptr %115, align 8, !tbaa !149 ; 2 uses
  %i.cdp = icmp eq ptr %i.cdo, %i.bya
  br i1 %i.cdp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1741

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1741: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740
  %i.cdq = load i64, ptr %i.bya, align 8, !tbaa !30
  %i.cdr = add i64 %i.cdq, 1
  call void @_ZdlPvm(ptr noundef %i.cdo, i64 noundef %i.cdr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1741, %bb.oy
  %.pn731.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ccq, %bb.oy ], [ %.pn731.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1741 ], [ %.pn731.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740 ]
  %i.cds = load ptr, ptr %116, align 8, !tbaa !149 ; 2 uses
  %i.cdt = icmp eq ptr %i.cds, %i.bwv
  br i1 %i.cdt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1744: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743
  %i.cdu = load i64, ptr %i.bwv, align 8, !tbaa !30
  %i.cdv = add i64 %i.cdu, 1
  call void @_ZdlPvm(ptr noundef %i.cds, i64 noundef %i.cdv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1746: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1743, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1744
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #30
  br label %bb.afo

bb.pe:                                            ; preds = %bb.nz
  br i1 %.not3815, label %bb.qd, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #30
  %i.cdw = load ptr, ptr %2, align 8, !tbaa !309
  %i.cdx = getelementptr inbounds nuw [16 x i8], ptr %i.cdw, i64 %.03782651
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %119, ptr noundef nonnull align 8 dereferenceable(16) %i.cdx)
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #30
  %i.cdy = load ptr, ptr %2, align 8, !tbaa !309
  %274 = getelementptr inbounds nuw i8, ptr %i.cdy, i64 -16
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %120, ptr noundef nonnull align 8 dereferenceable(16) %274)
          to label %bb.pg unwind label %bb.pr

bb.pg:                                            ; preds = %bb.pf
  %i.cdz = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(16) %120)
          to label %bb.ph unwind label %bb.ps

bb.ph:                                            ; preds = %bb.pg
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %120) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #30
  br i1 %i.cdz, label %.loopexit2822, label %bb.qd

.loopexit2822:                                    ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #30
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %127, i64 noundef -1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %126, ptr noundef nonnull @.str.161, ptr noundef nonnull align 8 dereferenceable(32) %127)
          to label %bb.pi unwind label %bb.pu

bb.pi:                                            ; preds = %.loopexit2822
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %125, ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull @.str.162)
          to label %bb.pj unwind label %bb.pv

bb.pj:                                            ; preds = %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #30
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %128, i64 noundef %.03782651)
          to label %bb.pk unwind label %bb.pw

bb.pk:                                            ; preds = %bb.pj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %124, ptr noundef nonnull align 8 dereferenceable(32) %125, ptr noundef nonnull align 8 dereferenceable(32) %128)
          to label %bb.pl unwind label %bb.px

bb.pl:                                            ; preds = %bb.pk
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %123, ptr noundef nonnull align 8 dereferenceable(32) %124, ptr noundef nonnull @.str.160)
          to label %bb.pm unwind label %bb.py

bb.pm:                                            ; preds = %bb.pl
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %129, i32 noundef %i.a)
          to label %bb.pn unwind label %bb.pz

bb.pn:                                            ; preds = %bb.pm
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %122, ptr noundef nonnull align 8 dereferenceable(32) %123, ptr noundef nonnull align 8 dereferenceable(32) %129)
          to label %bb.po unwind label %bb.qa

bb.po:                                            ; preds = %bb.pn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %121, ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull @.str.2)
          to label %bb.pp unwind label %bb.qb

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #30
  %i.cea = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.ceb = getelementptr inbounds nuw [152 x i8], ptr %i.cea, i64 %.03772652
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %130, ptr noundef nonnull align 8 dereferenceable(16) %i.cec, i64 16, i1 false), !tbaa.struct !255
  %i.ced = getelementptr inbounds nuw i8, ptr %130, i64 16
  store i8 1, ptr %i.ced, align 8, !tbaa !226
  %i.cee = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %121, ptr noundef nonnull align 8 dereferenceable(24) %130)
          to label %bb.pq unwind label %bb.qc     ; 0 uses

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #30
  %i.cef = load ptr, ptr %121, align 8, !tbaa !149 ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  %i.ceh = icmp eq ptr %i.cef, %i.ceg
  br i1 %i.ceh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1749, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1747

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1747: ; preds = %bb.pq
  %i.cei = load i64, ptr %i.ceg, align 8, !tbaa !30
  %i.cej = add i64 %i.cei, 1
  call void @_ZdlPvm(ptr noundef %i.cef, i64 noundef %i.cej) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1749

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1749: ; preds = %bb.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1747
  %i.cek = load ptr, ptr %122, align 8, !tbaa !149 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 2 uses
  %i.cem = icmp eq ptr %i.cek, %i.cel
  br i1 %i.cem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1752, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1750

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1750: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1749
  %i.cen = load i64, ptr %i.cel, align 8, !tbaa !30
  %i.ceo = add i64 %i.cen, 1
  call void @_ZdlPvm(ptr noundef %i.cek, i64 noundef %i.ceo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1752

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1752: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1749, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1750
  %i.cep = load ptr, ptr %129, align 8, !tbaa !149 ; 2 uses
  %i.ceq = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 2 uses
  %i.cer = icmp eq ptr %i.cep, %i.ceq
  br i1 %i.cer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1755, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1753: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1752
  %i.ces = load i64, ptr %i.ceq, align 8, !tbaa !30
  %i.cet = add i64 %i.ces, 1
  call void @_ZdlPvm(ptr noundef %i.cep, i64 noundef %i.cet) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1755

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1755: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1752, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1753
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #30
  %i.ceu = load ptr, ptr %123, align 8, !tbaa !149 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 2 uses
  %i.cew = icmp eq ptr %i.ceu, %i.cev
  br i1 %i.cew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1756: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1755
  %i.cex = load i64, ptr %i.cev, align 8, !tbaa !30
  %i.cey = add i64 %i.cex, 1
  call void @_ZdlPvm(ptr noundef %i.ceu, i64 noundef %i.cey) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1758: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1755, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1756
  %i.cez = load ptr, ptr %124, align 8, !tbaa !149 ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.cfb = icmp eq ptr %i.cez, %i.cfa
  br i1 %i.cfb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1759: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1758
  %i.cfc = load i64, ptr %i.cfa, align 8, !tbaa !30
  %i.cfd = add i64 %i.cfc, 1
  call void @_ZdlPvm(ptr noundef %i.cez, i64 noundef %i.cfd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1761

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1761: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1758, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1759
  %i.cfe = load ptr, ptr %128, align 8, !tbaa !149 ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.cfg = icmp eq ptr %i.cfe, %i.cff
  br i1 %i.cfg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1764, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1762

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1762: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1761
  %i.cfh = load i64, ptr %i.cff, align 8, !tbaa !30
  %i.cfi = add i64 %i.cfh, 1
  call void @_ZdlPvm(ptr noundef %i.cfe, i64 noundef %i.cfi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1764

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1764: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1761, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1762
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #30
  %i.cfj = load ptr, ptr %125, align 8, !tbaa !149 ; 2 uses
  %i.cfk = getelementptr inbounds nuw i8, ptr %125, i64 16 ; 2 uses
  %i.cfl = icmp eq ptr %i.cfj, %i.cfk
  br i1 %i.cfl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1764
  %i.cfm = load i64, ptr %i.cfk, align 8, !tbaa !30
  %i.cfn = add i64 %i.cfm, 1
  call void @_ZdlPvm(ptr noundef %i.cfj, i64 noundef %i.cfn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1764, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1765
  %i.cfo = load ptr, ptr %126, align 8, !tbaa !149 ; 2 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 2 uses
  %i.cfq = icmp eq ptr %i.cfo, %i.cfp
  br i1 %i.cfq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1770, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1768: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1767
  %i.cfr = load i64, ptr %i.cfp, align 8, !tbaa !30
  %i.cfs = add i64 %i.cfr, 1
  call void @_ZdlPvm(ptr noundef %i.cfo, i64 noundef %i.cfs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1770: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1767, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1768
  %i.cft = load ptr, ptr %127, align 8, !tbaa !149 ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 2 uses
  %i.cfv = icmp eq ptr %i.cft, %i.cfu
  br i1 %i.cfv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1771: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1770
  %i.cfw = load i64, ptr %i.cfu, align 8, !tbaa !30
  %i.cfx = add i64 %i.cfw, 1
  call void @_ZdlPvm(ptr noundef %i.cft, i64 noundef %i.cfx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1773: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1770, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1771
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #30
  br label %.critedge

bb.pr:                                            ; preds = %bb.pf
  %lpad.loopexit2814 = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pg
  %lpad.loopexit2819 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %120) #30
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %.pn720 = phi { ptr, i32 } [ %lpad.loopexit2819, %bb.ps ], [ %lpad.loopexit2814, %bb.pr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #30
  br label %bb.afo

bb.pu:                                            ; preds = %.loopexit2822
  %i.cfy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797

bb.pv:                                            ; preds = %bb.pi
  %i.cfz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1794

bb.pw:                                            ; preds = %bb.pj
  %i.cga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1791

bb.px:                                            ; preds = %bb.pk
  %i.cgb = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
bb.sa:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 8 ; 4 uses
  %i.com = load atomic i64, ptr %i.col acquire, align 8 ; 2 uses
  %i.con = icmp eq i64 %i.com, 4294967297
  %i.coo = trunc i64 %i.com to i32                ; 2 uses
  br i1 %i.con, label %bb.sf, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.cop = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1862.peel = icmp eq i8 %i.cop, 0
  br i1 %.not.i9.i.i.i.i1862.peel, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.coq = add nsw i32 %i.coo, -1
  store i32 %i.coq, ptr %i.col, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel

bb.sd:                                            ; preds = %bb.sb
  %i.cor = atomicrmw volatile add ptr %i.col, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel: ; preds = %bb.sd, %bb.sc
  %.0.i.i.i.i.i.i1864.peel = phi i32 [ %i.coo, %bb.sc ], [ %i.cor, %bb.sd ]
  %i.cos = icmp eq i32 %.0.i.i.i.i.i.i1864.peel, 1
  br i1 %i.cos, label %bb.se, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, !prof !270

bb.se:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cok) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

bb.sf:                                            ; preds = %bb.sa
  store i32 0, ptr %i.col, align 8, !tbaa !261
  %i.cot = getelementptr inbounds nuw i8, ptr %i.cok, i64 12
  store i32 0, ptr %i.cot, align 4, !tbaa !263
  %i.cou = load ptr, ptr %i.cok, align 8, !tbaa !8
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 16
  %i.cow = load ptr, ptr %i.cov, align 8
  tail call void %i.cow(ptr noundef nonnull align 8 dereferenceable(16) %i.cok) #30, !inline_history !274
  %i.cox = load ptr, ptr %i.cok, align 8, !tbaa !8
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 24
  %i.coz = load ptr, ptr %i.coy, align 8
  tail call void %i.coz(ptr noundef nonnull align 8 dereferenceable(16) %i.cok) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel: ; preds = %bb.sf, %bb.se, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel
  store ptr %i.cod, ptr %i.cob, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel

_ZN8bitwuzla4TermaSERKS0_.exit1867.peel:          ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel
  br i1 %.0578, label %bb.si, label %bb.sg

bb.sg:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.cpa = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.cpa)
  %i.cpb = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_fpEv(ptr noundef nonnull align 8 dereferenceable(16) %153)
          to label %bb.sh unwind label %.loopexit.split-lp

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %i.cpb, label %bb.sk, label %.loopexit2785

bb.si:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #30
  %i.cpc = load ptr, ptr %2, align 8, !tbaa !309
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %148, ptr noundef nonnull align 8 dereferenceable(16) %i.cpc)
  %i.cpd = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_rmEv(ptr noundef nonnull align 8 dereferenceable(16) %148)
          to label %bb.sj unwind label %bb.tp

bb.sj:                                            ; preds = %bb.si
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #30
  br i1 %i.cpd, label %bb.sk, label %bb.tl

bb.sk:                                            ; preds = %bb.sh, %bb.sj
  %exitcond2782.peel.not = icmp eq i64 %i.r, 1
  br i1 %exitcond2782.peel.not, label %.critedge857, label %.lr.ph2649.peel.next

.lr.ph2649.peel.next:                             ; preds = %bb.sk
  %i.cpe = add i64 %i.p, 2                        ; 3 uses
  %i.cpf = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.cpg = getelementptr inbounds nuw [152 x i8], ptr %i.cpf, i64 %i.cpe ; 3 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpg, i64 40
  %i.cpi = load i8, ptr %i.cph, align 8, !tbaa !258
  switch i8 %i.cpi, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !278

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136: ; preds = %.lr.ph2649.peel.next
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpg, i64 24
  %i.cpk = load ptr, ptr %2, align 8, !tbaa !309  ; 2 uses
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 16
  %i.cpm = load ptr, ptr %i.cpj, align 8, !tbaa !271
  store ptr %i.cpm, ptr %i.cpl, align 8, !tbaa !271
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpk, i64 24 ; 3 uses
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpg, i64 32
  %i.cpp = load ptr, ptr %i.cpo, align 8, !tbaa !267 ; 4 uses
  %i.cpq = load ptr, ptr %i.cpn, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1857.peel4137 = icmp eq ptr %i.cpp, %i.cpq
  br i1 %.not.i.i.i.i1857.peel4137, label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147, label %bb.sl

bb.sl:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
  %.not7.i.i.i.i1858.peel4138 = icmp eq ptr %i.cpp, null
  br i1 %.not7.i.i.i.i1858.peel4138, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpp, i64 8 ; 3 uses
  %i.cps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1859.peel4139 = icmp eq i8 %i.cps, 0
  br i1 %.not.i.i.i.i.i1859.peel4139, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.cpt = load i32, ptr %i.cpr, align 4, !tbaa !269
  %i.cpu = add nsw i32 %i.cpt, 1
  store i32 %i.cpu, ptr %i.cpr, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141

bb.so:                                            ; preds = %bb.sm
  %i.cpv = atomicrmw volatile add ptr %i.cpr, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866.peel4140 = load ptr, ptr %i.cpn, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141: ; preds = %bb.so, %bb.sn, %bb.sl
  %i.cpw = phi ptr [ %i.cpq, %bb.sl ], [ %i.cpq, %bb.sn ], [ %.pr.pre.i.i.i.i1866.peel4140, %bb.so ] ; 8 uses
  %.not8.i.i.i.i1861.peel4142 = icmp eq ptr %i.cpw, null
  br i1 %.not8.i.i.i.i1861.peel4142, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, label %bb.sp

bb.sp:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 8 ; 4 uses
  %i.cpy = load atomic i64, ptr %i.cpx acquire, align 8 ; 2 uses
  %i.cpz = icmp eq i64 %i.cpy, 4294967297
  %i.cqa = trunc i64 %i.cpy to i32                ; 2 uses
  br i1 %i.cpz, label %bb.su, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.cqb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1862.peel4143 = icmp eq i8 %i.cqb, 0
  br i1 %.not.i9.i.i.i.i1862.peel4143, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.cqc = add nsw i32 %i.cqa, -1
  store i32 %i.cqc, ptr %i.cpx, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144

bb.ss:                                            ; preds = %bb.sq
  %i.cqd = atomicrmw volatile add ptr %i.cpx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144: ; preds = %bb.ss, %bb.sr
  %.0.i.i.i.i.i.i1864.peel4145 = phi i32 [ %i.cqa, %bb.sr ], [ %i.cqd, %bb.ss ]
  %i.cqe = icmp eq i32 %.0.i.i.i.i.i.i1864.peel4145, 1
  br i1 %i.cqe, label %bb.st, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, !prof !270

bb.st:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpw) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146

bb.su:                                            ; preds = %bb.sp
  store i32 0, ptr %i.cpx, align 8, !tbaa !261
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cpw, i64 12
  store i32 0, ptr %i.cqf, align 4, !tbaa !263
  %i.cqg = load ptr, ptr %i.cpw, align 8, !tbaa !8
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cqg, i64 16
  %i.cqi = load ptr, ptr %i.cqh, align 8
  call void %i.cqi(ptr noundef nonnull align 8 dereferenceable(16) %i.cpw) #30, !inline_history !274
  %i.cqj = load ptr, ptr %i.cpw, align 8, !tbaa !8
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 24
  %i.cql = load ptr, ptr %i.cqk, align 8
  call void %i.cql(ptr noundef nonnull align 8 dereferenceable(16) %i.cpw) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146: ; preds = %bb.su, %bb.st, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863.peel4144, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860.peel4141
  store ptr %i.cpp, ptr %i.cpn, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147

_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147:      ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865.peel4146, %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856.peel4136
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.cqm = load ptr, ptr %2, align 8, !tbaa !309
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 16
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %153, ptr noundef nonnull align 8 dereferenceable(16) %i.cqn)
  %i.cqo = invoke noundef zeroext i1 @_ZNK8bitwuzla4Sort5is_fpEv(ptr noundef nonnull align 8 dereferenceable(16) %153)
          to label %bb.sv unwind label %.loopexit2784.loopexit.split-lp

bb.sv:                                            ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br i1 %i.cqo, label %bb.sw, label %.loopexit2785

bb.sw:                                            ; preds = %bb.sv
  br i1 %.0578, label %bb.ta, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #30
  %i.cqp = load ptr, ptr %2, align 8, !tbaa !309
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqp, i64 16
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %161, ptr noundef nonnull align 8 dereferenceable(16) %i.cqq)
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #30
  %i.cqr = load ptr, ptr %2, align 8, !tbaa !309
  %275 = getelementptr inbounds nuw i8, ptr %i.cqr, i64 -16
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %162, ptr noundef nonnull align 8 dereferenceable(16) %275)
          to label %bb.sy unwind label %.loopexit.split-lp4153

bb.sy:                                            ; preds = %bb.sx
  %i.cqs = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %161, ptr noundef nonnull align 8 dereferenceable(16) %162)
          to label %bb.sz unwind label %.loopexit.split-lp4157

bb.sz:                                            ; preds = %bb.sy
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  br i1 %i.cqs, label %.loopexit2802, label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sw
  %i.cqt = add i64 %i.p, 3
  %exitcond2782.not.peel = icmp eq i64 %i.r, 2
  br i1 %exitcond2782.not.peel, label %.critedge857, label %.lr.ph2649

.lr.ph2649:                                       ; preds = %bb.ta, %bb.vd
  %.03712647 = phi i64 [ %i.das, %bb.vd ], [ %i.cqt, %bb.ta ] ; 4 uses
  %.03722646 = phi i64 [ %i.dar, %bb.vd ], [ 2, %bb.ta ] ; 6 uses
  %i.cqu = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.cqv = getelementptr inbounds nuw [152 x i8], ptr %i.cqu, i64 %.03712647 ; 3 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqv, i64 40
  %i.cqx = load i8, ptr %i.cqw, align 8, !tbaa !258
  switch i8 %i.cqx, label %.loopexit [
    i8 2, label %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855
  ], !prof !278

.loopexit:                                        ; preds = %.lr.ph2649.peel.next, %.lr.ph2649, %.lr.ph2649.preheader
  %i.cqy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cqy, align 8, !tbaa !8
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 8
  store ptr @.str.202, ptr %i.cqz, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.cqy, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i1855: ; preds = %.lr.ph2649.peel.next, %.lr.ph2649, %.lr.ph2649.preheader
  %i.cra = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cra, align 8, !tbaa !8
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 8
  store ptr @.str.201, ptr %i.crb, align 8, !tbaa !279
  call void @__cxa_throw(ptr nonnull %i.cra, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29
  unreachable

_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856: ; preds = %.lr.ph2649
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqv, i64 24
  %i.crd = load ptr, ptr %2, align 8, !tbaa !309
  %i.cre = getelementptr inbounds nuw [16 x i8], ptr %i.crd, i64 %.03722646 ; 2 uses
  %i.crf = load ptr, ptr %i.crc, align 8, !tbaa !271
  store ptr %i.crf, ptr %i.cre, align 8, !tbaa !271
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cre, i64 8 ; 3 uses
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqv, i64 32
  %i.cri = load ptr, ptr %i.crh, align 8, !tbaa !267 ; 4 uses
  %i.crj = load ptr, ptr %i.crg, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i.i1857 = icmp eq ptr %i.cri, %i.crj
  br i1 %.not.i.i.i.i1857, label %_ZN8bitwuzla4TermaSERKS0_.exit1867, label %bb.tb

bb.tb:                                            ; preds = %_ZNK4bzla6parser4smt26Parser13peek_term_argEm.exit1856
  %.not7.i.i.i.i1858 = icmp eq ptr %i.cri, null
  br i1 %.not7.i.i.i.i1858, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.crk = getelementptr inbounds nuw i8, ptr %i.cri, i64 8 ; 3 uses
  %i.crl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i1859 = icmp eq i8 %i.crl, 0
  br i1 %.not.i.i.i.i.i1859, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.crm = load i32, ptr %i.crk, align 4, !tbaa !269
  %i.crn = add nsw i32 %i.crm, 1
  store i32 %i.crn, ptr %i.crk, align 4, !tbaa !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860

bb.te:                                            ; preds = %bb.tc
  %i.cro = atomicrmw volatile add ptr %i.crk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i1866 = load ptr, ptr %i.crg, align 8, !tbaa !267
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860: ; preds = %bb.te, %bb.td, %bb.tb
  %i.crp = phi ptr [ %i.crj, %bb.tb ], [ %i.crj, %bb.td ], [ %.pr.pre.i.i.i.i1866, %bb.te ] ; 8 uses
  %.not8.i.i.i.i1861 = icmp eq ptr %i.crp, null
  br i1 %.not8.i.i.i.i1861, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865, label %bb.tf

bb.tf:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 8 ; 4 uses
  %i.crr = load atomic i64, ptr %i.crq acquire, align 8 ; 2 uses
  %i.crs = icmp eq i64 %i.crr, 4294967297
  %i.crt = trunc i64 %i.crr to i32                ; 2 uses
  br i1 %i.crs, label %bb.tg, label %bb.th

bb.tg:                                            ; preds = %bb.tf
  store i32 0, ptr %i.crq, align 8, !tbaa !261
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crp, i64 12
  store i32 0, ptr %i.cru, align 4, !tbaa !263
  %i.crv = load ptr, ptr %i.crp, align 8, !tbaa !8
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 16
  %i.crx = load ptr, ptr %i.crw, align 8
  call void %i.crx(ptr noundef nonnull align 8 dereferenceable(16) %i.crp) #30, !inline_history !274
  %i.cry = load ptr, ptr %i.crp, align 8, !tbaa !8
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 24
  %i.csa = load ptr, ptr %i.crz, align 8
  call void %i.csa(ptr noundef nonnull align 8 dereferenceable(16) %i.crp) #30, !inline_history !274
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865

bb.th:                                            ; preds = %bb.tf
  %i.csb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i1862 = icmp eq i8 %i.csb, 0
  br i1 %.not.i9.i.i.i.i1862, label %bb.tj, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.csc = add nsw i32 %i.crt, -1
  store i32 %i.csc, ptr %i.crq, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863

bb.tj:                                            ; preds = %bb.th
  %i.csd = atomicrmw volatile add ptr %i.crq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863: ; preds = %bb.tj, %bb.ti
  %.0.i.i.i.i.i.i1864 = phi i32 [ %i.crt, %bb.ti ], [ %i.csd, %bb.tj ]
  %i.cse = icmp eq i32 %.0.i.i.i.i.i.i1864, 1
  br i1 %i.cse, label %bb.tk, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865, !prof !270

bb.tk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.crp) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i1865: ; preds = %bb.tk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1863, %bb.tg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i1860
  store ptr %i.cri, ptr %i.crg, align 8, !tbaa !267
  br label %_ZN8bitwuzla4TermaSERKS0_.exit1867

bb.tl:                                            ; preds = %bb.sj
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #30
  call void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %151, i32 noundef %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %150, ptr noundef nonnull @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %151)
          to label %bb.tm unwind label %bb.tq

bb.tm:                                            ; preds = %bb.tl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %149, ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull @.str.2)
          to label %bb.tn unwind label %bb.tr

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #30
  %i.csf = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.csg = getelementptr inbounds nuw [152 x i8], ptr %i.csf, i64 %i.axc
  %i.csh = getelementptr inbounds nuw i8, ptr %i.csg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %152, ptr noundef nonnull align 8 dereferenceable(16) %i.csh, i64 16, i1 false), !tbaa.struct !255
  %i.csi = getelementptr inbounds nuw i8, ptr %152, i64 16
  store i8 1, ptr %i.csi, align 8, !tbaa !226
  %i.csj = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull align 8 dereferenceable(24) %152)
          to label %bb.to unwind label %bb.ts     ; 0 uses

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #30
  %i.csk = load ptr, ptr %149, align 8, !tbaa !149 ; 2 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 2 uses
  %i.csm = icmp eq ptr %i.csk, %i.csl
  br i1 %i.csm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868: ; preds = %bb.to
  %i.csn = load i64, ptr %i.csl, align 8, !tbaa !30
  %i.cso = add i64 %i.csn, 1
  call void @_ZdlPvm(ptr noundef %i.csk, i64 noundef %i.cso) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870: ; preds = %bb.to, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1868
  %i.csp = load ptr, ptr %150, align 8, !tbaa !149 ; 2 uses
  %i.csq = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 2 uses
  %i.csr = icmp eq ptr %i.csp, %i.csq
  br i1 %i.csr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870
  %i.css = load i64, ptr %i.csq, align 8, !tbaa !30
  %i.cst = add i64 %i.css, 1
  call void @_ZdlPvm(ptr noundef %i.csp, i64 noundef %i.cst) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1870, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1871
  %i.csu = load ptr, ptr %151, align 8, !tbaa !149 ; 2 uses
  %i.csv = getelementptr inbounds nuw i8, ptr %151, i64 16 ; 2 uses
  %i.csw = icmp eq ptr %i.csu, %i.csv
  br i1 %i.csw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873
  %i.csx = load i64, ptr %i.csv, align 8, !tbaa !30
  %i.csy = add i64 %i.csx, 1
  call void @_ZdlPvm(ptr noundef %i.csu, i64 noundef %i.csy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1873, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1874
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #30
  br label %.critedge

bb.tp:                                            ; preds = %bb.si
  %lpad.loopexit.split-lp2789 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %148) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #30
  br label %bb.afo

bb.tq:                                            ; preds = %bb.tl
  %i.csz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1882

bb.tr:                                            ; preds = %bb.tm
  %i.cta = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1879

bb.ts:                                            ; preds = %bb.tn
  %i.ctb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #30
  %i.ctc = load ptr, ptr %149, align 8, !tbaa !149 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1891

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1891: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1888, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1889
  %i.cuj = load ptr, ptr %159, align 8, !tbaa !149 ; 2 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 2 uses
  %i.cul = icmp eq ptr %i.cuj, %i.cuk
  br i1 %i.cul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1892

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1892: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1891
  %i.cum = load i64, ptr %i.cuk, align 8, !tbaa !30
  %i.cun = add i64 %i.cum, 1
  call void @_ZdlPvm(ptr noundef %i.cuj, i64 noundef %i.cun) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1891, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1892
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #30
  %i.cuo = load ptr, ptr %156, align 8, !tbaa !149 ; 2 uses
  %i.cup = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 2 uses
  %i.cuq = icmp eq ptr %i.cuo, %i.cup
  br i1 %i.cuq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1897, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1895

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1895: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894
  %i.cur = load i64, ptr %i.cup, align 8, !tbaa !30
  %i.cus = add i64 %i.cur, 1
  call void @_ZdlPvm(ptr noundef %i.cuo, i64 noundef %i.cus) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1897

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1897: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1895
  %i.cut = load ptr, ptr %157, align 8, !tbaa !149 ; 2 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 2 uses
  %i.cuv = icmp eq ptr %i.cut, %i.cuu
  br i1 %i.cuv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1900, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1898

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1898: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1897
  %i.cuw = load i64, ptr %i.cuu, align 8, !tbaa !30
  %i.cux = add i64 %i.cuw, 1
  call void @_ZdlPvm(ptr noundef %i.cut, i64 noundef %i.cux) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1900

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1900: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1897, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1898
  %i.cuy = load ptr, ptr %158, align 8, !tbaa !149 ; 2 uses
  %i.cuz = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  %i.cva = icmp eq ptr %i.cuy, %i.cuz
  br i1 %i.cva, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1901

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1901: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1900
  %i.cvb = load i64, ptr %i.cuz, align 8, !tbaa !30
  %i.cvc = add i64 %i.cvb, 1
  call void @_ZdlPvm(ptr noundef %i.cuy, i64 noundef %i.cvc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1903: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1900, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1901
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #30
  br label %.critedge

.loopexit2784.loopexit:                           ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867
  %lpad.loopexit4149 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2784

.loopexit2784.loopexit.split-lp:                  ; preds = %_ZN8bitwuzla4TermaSERKS0_.exit1867.peel4147
  %lpad.loopexit.split-lp4150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2784

.loopexit.split-lp:                               ; preds = %bb.sg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2784

.loopexit2784:                                    ; preds = %.loopexit2784.loopexit, %.loopexit2784.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit4149, %.loopexit2784.loopexit ], [ %lpad.loopexit.split-lp4150, %.loopexit2784.loopexit.split-lp ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %153) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  br label %bb.afo

bb.ua:                                            ; preds = %.loopexit2785
  %i.cvd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918

bb.ub:                                            ; preds = %bb.tu
  %i.cve = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915

bb.uc:                                            ; preds = %bb.tv
  %i.cvf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912

bb.ud:                                            ; preds = %bb.tw
  %i.cvg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909

bb.ue:                                            ; preds = %bb.tx
  %i.cvh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906

bb.uf:                                            ; preds = %bb.ty
  %i.cvi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #30
  %i.cvj = load ptr, ptr %154, align 8, !tbaa !149 ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %154, i64 16 ; 2 uses
  %i.cvl = icmp eq ptr %i.cvj, %i.cvk
  br i1 %i.cvl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1904

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1904: ; preds = %bb.uf
  %i.cvm = load i64, ptr %i.cvk, align 8, !tbaa !30
  %i.cvn = add i64 %i.cvm, 1
  call void @_ZdlPvm(ptr noundef %i.cvj, i64 noundef %i.cvn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906: ; preds = %bb.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1904, %bb.ue
  %.pn682 = phi { ptr, i32 } [ %i.cvh, %bb.ue ], [ %i.cvi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1904 ], [ %i.cvi, %bb.uf ] ; 2 uses
  %i.cvo = load ptr, ptr %155, align 8, !tbaa !149 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.cvq = icmp eq ptr %i.cvo, %i.cvp
  br i1 %i.cvq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1907

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1907: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906
  %i.cvr = load i64, ptr %i.cvp, align 8, !tbaa !30
  %i.cvs = add i64 %i.cvr, 1
  call void @_ZdlPvm(ptr noundef %i.cvo, i64 noundef %i.cvs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1907, %bb.ud
  %.pn682.pn = phi { ptr, i32 } [ %i.cvg, %bb.ud ], [ %.pn682, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1907 ], [ %.pn682, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1906 ] ; 2 uses
  %i.cvt = load ptr, ptr %159, align 8, !tbaa !149 ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 2 uses
  %i.cvv = icmp eq ptr %i.cvt, %i.cvu
  br i1 %i.cvv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1910

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1910: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909
  %i.cvw = load i64, ptr %i.cvu, align 8, !tbaa !30
  %i.cvx = add i64 %i.cvw, 1
  call void @_ZdlPvm(ptr noundef %i.cvt, i64 noundef %i.cvx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1910, %bb.uc
  %.pn682.pn.pn = phi { ptr, i32 } [ %i.cvf, %bb.uc ], [ %.pn682.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1910 ], [ %.pn682.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1909 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #30
  %i.cvy = load ptr, ptr %156, align 8, !tbaa !149 ; 2 uses
  %i.cvz = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 2 uses
  %i.cwa = icmp eq ptr %i.cvy, %i.cvz
  br i1 %i.cwa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1913

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1913: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912
  %i.cwb = load i64, ptr %i.cvz, align 8, !tbaa !30
  %i.cwc = add i64 %i.cwb, 1
  call void @_ZdlPvm(ptr noundef %i.cvy, i64 noundef %i.cwc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1913, %bb.ub
  %.pn682.pn.pn.pn = phi { ptr, i32 } [ %i.cve, %bb.ub ], [ %.pn682.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1913 ], [ %.pn682.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1912 ] ; 2 uses
  %i.cwd = load ptr, ptr %157, align 8, !tbaa !149 ; 2 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 2 uses
  %i.cwf = icmp eq ptr %i.cwd, %i.cwe
  br i1 %i.cwf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1916

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1916: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915
  %i.cwg = load i64, ptr %i.cwe, align 8, !tbaa !30
  %i.cwh = add i64 %i.cwg, 1
  call void @_ZdlPvm(ptr noundef %i.cwd, i64 noundef %i.cwh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1916, %bb.ua
  %.pn682.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cvd, %bb.ua ], [ %.pn682.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1916 ], [ %.pn682.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1915 ]
  %i.cwi = load ptr, ptr %158, align 8, !tbaa !149 ; 2 uses
  %i.cwj = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  %i.cwk = icmp eq ptr %i.cwi, %i.cwj
  br i1 %i.cwk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1919

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1919: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918
  %i.cwl = load i64, ptr %i.cwj, align 8, !tbaa !30
  %i.cwm = add i64 %i.cwl, 1
  call void @_ZdlPvm(ptr noundef %i.cwi, i64 noundef %i.cwm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1918, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1919
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #30
  br label %bb.afo

bb.ug:                                            ; preds = %bb.tt
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #30
  %i.cwn = load ptr, ptr %2, align 8, !tbaa !309
  %i.cwo = getelementptr inbounds nuw [16 x i8], ptr %i.cwn, i64 %.03722646
  call void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %161, ptr noundef nonnull align 8 dereferenceable(16) %i.cwo)
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #30
  %i.cwp = load ptr, ptr %2, align 8, !tbaa !309
  %276 = getelementptr inbounds nuw i8, ptr %i.cwp, i64 -16
  invoke void @_ZNK8bitwuzla4Term4sortEv(ptr dead_on_unwind nonnull writable sret(%"class.bitwuzla::Sort") align 8 %162, ptr noundef nonnull align 8 dereferenceable(16) %276)
          to label %bb.uh unwind label %.loopexit4152

bb.uh:                                            ; preds = %bb.ug
  %i.cwq = invoke noundef zeroext i1 @_ZN8bitwuzlaneERKNS_4SortES2_(ptr noundef nonnull align 8 dereferenceable(16) %161, ptr noundef nonnull align 8 dereferenceable(16) %162)
          to label %bb.ui unwind label %.loopexit4156

bb.ui:                                            ; preds = %bb.uh
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  br i1 %i.cwq, label %.loopexit2802, label %bb.vd

.loopexit2802:                                    ; preds = %bb.ui, %bb.sz
  %.03712647.lcssa4101 = phi i64 [ %i.cpe, %bb.sz ], [ %.03712647, %bb.ui ]
  %.03722646.lcssa4094 = phi i64 [ 1, %bb.sz ], [ %.03722646, %bb.ui ]
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #30
  call void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %169, i64 noundef -1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %168, ptr noundef nonnull @.str.161, ptr noundef nonnull align 8 dereferenceable(32) %169)
          to label %bb.uj unwind label %bb.uu

bb.uj:                                            ; preds = %.loopexit2802
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %167, ptr noundef nonnull align 8 dereferenceable(32) %168, ptr noundef nonnull @.str.162)
          to label %bb.uk unwind label %bb.uv

bb.uk:                                            ; preds = %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #30
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %170, i64 noundef %.03722646.lcssa4094)
          to label %bb.ul unwind label %bb.uw

bb.ul:                                            ; preds = %bb.uk
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %166, ptr noundef nonnull align 8 dereferenceable(32) %167, ptr noundef nonnull align 8 dereferenceable(32) %170)
          to label %bb.um unwind label %bb.ux

bb.um:                                            ; preds = %bb.ul
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %165, ptr noundef nonnull align 8 dereferenceable(32) %166, ptr noundef nonnull @.str.160)
          to label %bb.un unwind label %bb.uy

bb.un:                                            ; preds = %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #30
  invoke void @_ZSt9to_stringB5cxx11N4bzla6parser4smt25TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %171, i32 noundef %i.a)
          to label %bb.uo unwind label %bb.uz

bb.uo:                                            ; preds = %bb.un
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %164, ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(32) %171)
          to label %bb.up unwind label %bb.va

bb.up:                                            ; preds = %bb.uo
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %163, ptr noundef nonnull align 8 dereferenceable(32) %164, ptr noundef nonnull @.str.2)
          to label %bb.uq unwind label %bb.vb

bb.uq:                                            ; preds = %bb.up
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #30
  %i.cwr = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.cws = getelementptr inbounds nuw [152 x i8], ptr %i.cwr, i64 %.03712647.lcssa4101
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cws, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(16) %i.cwt, i64 16, i1 false), !tbaa.struct !255
  %i.cwu = getelementptr inbounds nuw i8, ptr %172, i64 16
  store i8 1, ptr %i.cwu, align 8, !tbaa !226
  %i.cwv = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %163, ptr noundef nonnull align 8 dereferenceable(24) %172)
          to label %bb.ur unwind label %bb.vc     ; 0 uses

bb.ur:                                            ; preds = %bb.uq
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #30
  %i.cww = load ptr, ptr %163, align 8, !tbaa !149 ; 2 uses
  %i.cwx = getelementptr inbounds nuw i8, ptr %163, i64 16 ; 2 uses
  %i.cwy = icmp eq ptr %i.cww, %i.cwx
  br i1 %i.cwy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1924, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1922: ; preds = %bb.ur
  %i.cwz = load i64, ptr %i.cwx, align 8, !tbaa !30
  %i.cxa = add i64 %i.cwz, 1
  call void @_ZdlPvm(ptr noundef %i.cww, i64 noundef %i.cxa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1924

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1924: ; preds = %bb.ur, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1922
  %i.cxb = load ptr, ptr %164, align 8, !tbaa !149 ; 2 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.cxd = icmp eq ptr %i.cxb, %i.cxc
  br i1 %i.cxd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1925

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1925: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1924
  %i.cxe = load i64, ptr %i.cxc, align 8, !tbaa !30
  %i.cxf = add i64 %i.cxe, 1
  call void @_ZdlPvm(ptr noundef %i.cxb, i64 noundef %i.cxf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1927

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1927: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1924, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1925
  %i.cxg = load ptr, ptr %171, align 8, !tbaa !149 ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 2 uses
  %i.cxi = icmp eq ptr %i.cxg, %i.cxh
  br i1 %i.cxi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1928: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1927
  %i.cxj = load i64, ptr %i.cxh, align 8, !tbaa !30
  %i.cxk = add i64 %i.cxj, 1
  call void @_ZdlPvm(ptr noundef %i.cxg, i64 noundef %i.cxk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1930: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1927, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1928
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #30
  %i.cxl = load ptr, ptr %165, align 8, !tbaa !149 ; 2 uses
  %i.cxm = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 2 uses
  %i.cxn = icmp eq ptr %i.cxl, %i.cxm
  br i1 %i.cxn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1933, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1931: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1930
  %i.cxo = load i64, ptr %i.cxm, align 8, !tbaa !30
  %i.cxp = add i64 %i.cxo, 1
  call void @_ZdlPvm(ptr noundef %i.cxl, i64 noundef %i.cxp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1933

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1933: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1930, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1931
  %i.cxq = load ptr, ptr %166, align 8, !tbaa !149 ; 2 uses
  %i.cxr = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 2 uses
  %i.cxs = icmp eq ptr %i.cxq, %i.cxr
  br i1 %i.cxs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1936, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1934

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1934: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1933
  %i.cxt = load i64, ptr %i.cxr, align 8, !tbaa !30
  %i.cxu = add i64 %i.cxt, 1
  call void @_ZdlPvm(ptr noundef %i.cxq, i64 noundef %i.cxu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1936

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1936: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1933, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1934
  %i.cxv = load ptr, ptr %170, align 8, !tbaa !149 ; 2 uses
  %i.cxw = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 2 uses
  %i.cxx = icmp eq ptr %i.cxv, %i.cxw
  br i1 %i.cxx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1937: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1936
  %i.cxy = load i64, ptr %i.cxw, align 8, !tbaa !30
  %i.cxz = add i64 %i.cxy, 1
  call void @_ZdlPvm(ptr noundef %i.cxv, i64 noundef %i.cxz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1936, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1937
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #30
  %i.cya = load ptr, ptr %167, align 8, !tbaa !149 ; 2 uses
  %i.cyb = getelementptr inbounds nuw i8, ptr %167, i64 16 ; 2 uses
  %i.cyc = icmp eq ptr %i.cya, %i.cyb
  br i1 %i.cyc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1940

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1940: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939
  %i.cyd = load i64, ptr %i.cyb, align 8, !tbaa !30
  %i.cye = add i64 %i.cyd, 1
  call void @_ZdlPvm(ptr noundef %i.cya, i64 noundef %i.cye) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1940
  %i.cyf = load ptr, ptr %168, align 8, !tbaa !149 ; 2 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 2 uses
  %i.cyh = icmp eq ptr %i.cyf, %i.cyg
  br i1 %i.cyh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1943

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1943: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942
  %i.cyi = load i64, ptr %i.cyg, align 8, !tbaa !30
  %i.cyj = add i64 %i.cyi, 1
  call void @_ZdlPvm(ptr noundef %i.cyf, i64 noundef %i.cyj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1943
  %i.cyk = load ptr, ptr %169, align 8, !tbaa !149 ; 2 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %169, i64 16 ; 2 uses
  %i.cym = icmp eq ptr %i.cyk, %i.cyl
  br i1 %i.cym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1946

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1946: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945
  %i.cyn = load i64, ptr %i.cyl, align 8, !tbaa !30
  %i.cyo = add i64 %i.cyn, 1
  call void @_ZdlPvm(ptr noundef %i.cyk, i64 noundef %i.cyo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1948: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1946
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  br label %.critedge

.loopexit4152:                                    ; preds = %bb.ug
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

.loopexit.split-lp4153:                           ; preds = %bb.sx
  %lpad.loopexit.split-lp4154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

.loopexit4156:                                    ; preds = %bb.uh
  %lpad.loopexit4158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

.loopexit.split-lp4157:                           ; preds = %bb.sy
  %lpad.loopexit.split-lp4159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

bb.us:                                            ; preds = %.loopexit.split-lp4157, %.loopexit4156
  %lpad.phi4160 = phi { ptr, i32 } [ %lpad.loopexit4158, %.loopexit4156 ], [ %lpad.loopexit.split-lp4159, %.loopexit.split-lp4157 ]
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %162) #30
  br label %bb.ut

bb.ut:                                            ; preds = %.loopexit4152, %.loopexit.split-lp4153, %bb.us
  %.pn689 = phi { ptr, i32 } [ %lpad.phi4160, %bb.us ], [ %lpad.loopexit, %.loopexit4152 ], [ %lpad.loopexit.split-lp4154, %.loopexit.split-lp4153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @_ZN8bitwuzla4SortD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %161) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  br label %bb.afo

bb.uu:                                            ; preds = %.loopexit2802
  %i.cyp = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN4bzla6parser4smt26Parser8pop_argsERKNS2_10ParsedItemERSt6vectorIN8bitwuzla4TermESaIS8_EE:bb.a
  br i1 %.not.i2343, label %bb.adl, label %.critedge.i2344

.critedge.i2344:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2342
  %i.eiv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %258, i64 noundef 0, i64 noundef 0, ptr noundef %i.eij, i64 noundef %i.eif)
          to label %.noexc2349 unwind label %bb.aee ; 5 uses

.noexc2349:                                       ; preds = %.critedge.i2344
  %i.eiw = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 3 uses
  store ptr %i.eiw, ptr %254, align 8, !tbaa !25, !alias.scope !896
  %i.eix = load ptr, ptr %i.eiv, align 8, !tbaa !149 ; 2 uses
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eiv, i64 16 ; 5 uses
  %i.eiz = icmp eq ptr %i.eix, %i.eiy
  br i1 %i.eiz, label %bb.adk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2345

bb.adk:                                           ; preds = %.noexc2349
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiv, i64 8
  %i.ejb = load i64, ptr %i.eja, align 8, !tbaa !28 ; 2 uses
  %i.ejc = icmp ult i64 %i.ejb, 16
  call void @llvm.assume(i1 %i.ejc)
  %i.ejd = add nuw nsw i64 %i.ejb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eiw, ptr noundef nonnull align 8 dereferenceable(1) %i.eiy, i64 %i.ejd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2345: ; preds = %.noexc2349
  store ptr %i.eix, ptr %254, align 8, !tbaa !149, !alias.scope !896
  %i.eje = load i64, ptr %i.eiy, align 8, !tbaa !30
  store i64 %i.eje, ptr %i.eiw, align 8, !tbaa !30, !alias.scope !896
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2346: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2345, %bb.adk
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.eiv, i64 8 ; 2 uses
  %i.ejg = load i64, ptr %i.ejf, align 8, !tbaa !28
  %i.ejh = getelementptr inbounds nuw i8, ptr %254, i64 8
  store i64 %i.ejg, ptr %i.ejh, align 8, !tbaa !28, !alias.scope !896
  store ptr %i.eiy, ptr %i.eiv, align 8, !tbaa !149
  store i64 0, ptr %i.ejf, align 8, !tbaa !28
  store i8 0, ptr %i.eiy, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2352

bb.adl:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2337
  %i.eji = sub i64 4611686018427387903, %i.eif
  %i.ejj = icmp ult i64 %i.eji, %i.eih
  br i1 %i.ejj, label %bb.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2338

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc2350 unwind label %bb.aee

.noexc2350:                                       ; preds = %bb.adm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2338: ; preds = %bb.adl
  %i.ejk = load ptr, ptr %258, align 8, !tbaa !149, !noalias !896
  %i.ejl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %255, ptr noundef %i.ejk, i64 noundef %i.eih)
          to label %.noexc2351 unwind label %bb.aee ; 5 uses

.noexc2351:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2338
  %i.ejm = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 3 uses
  store ptr %i.ejm, ptr %254, align 8, !tbaa !25, !alias.scope !896
  %i.ejn = load ptr, ptr %i.ejl, align 8, !tbaa !149 ; 2 uses
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ejl, i64 16 ; 5 uses
  %i.ejp = icmp eq ptr %i.ejn, %i.ejo
  br i1 %i.ejp, label %bb.adn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2339

bb.adn:                                           ; preds = %.noexc2351
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejl, i64 8
  %i.ejr = load i64, ptr %i.ejq, align 8, !tbaa !28 ; 2 uses
  %i.ejs = icmp ult i64 %i.ejr, 16
  call void @llvm.assume(i1 %i.ejs)
  %i.ejt = add nuw nsw i64 %i.ejr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ejm, ptr noundef nonnull align 8 dereferenceable(1) %i.ejo, i64 %i.ejt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2339: ; preds = %.noexc2351
  store ptr %i.ejn, ptr %254, align 8, !tbaa !149, !alias.scope !896
  %i.eju = load i64, ptr %i.ejo, align 8, !tbaa !30
  store i64 %i.eju, ptr %i.ejm, align 8, !tbaa !30, !alias.scope !896
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2340: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2339, %bb.adn
  %i.ejv = getelementptr inbounds nuw i8, ptr %i.ejl, i64 8 ; 2 uses
  %i.ejw = load i64, ptr %i.ejv, align 8, !tbaa !28
  %i.ejx = getelementptr inbounds nuw i8, ptr %254, i64 8
  store i64 %i.ejw, ptr %i.ejx, align 8, !tbaa !28, !alias.scope !896
  store ptr %i.ejo, ptr %i.ejl, align 8, !tbaa !149
  store i64 0, ptr %i.ejv, align 8, !tbaa !28
  store i8 0, ptr %i.ejo, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2352

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2346
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ejy = getelementptr inbounds nuw i8, ptr %254, i64 8
  %i.ejz = load i64, ptr %i.ejy, align 8, !tbaa !28, !noalias !899
  %i.eka = add i64 %i.ejz, -4611686018427387849
  %i.ekb = icmp ult i64 %i.eka, 55
  br i1 %i.ekb, label %bb.ado, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2353

bb.ado:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2352
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc2358 unwind label %bb.aef

.noexc2358:                                       ; preds = %bb.ado
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2353: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2352
  %i.ekc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %254, ptr noundef nonnull @.str.187, i64 noundef 55)
          to label %.noexc2359 unwind label %bb.aef ; 6 uses

.noexc2359:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2353
  %i.ekd = getelementptr inbounds nuw i8, ptr %253, i64 16 ; 7 uses
  store ptr %i.ekd, ptr %253, align 8, !tbaa !25, !alias.scope !899
  %i.eke = load ptr, ptr %i.ekc, align 8, !tbaa !149 ; 2 uses
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.ekc, i64 16 ; 5 uses
  %i.ekg = icmp eq ptr %i.eke, %i.ekf
  br i1 %i.ekg, label %bb.adp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2354

bb.adp:                                           ; preds = %.noexc2359
  %i.ekh = getelementptr inbounds nuw i8, ptr %i.ekc, i64 8
  %i.eki = load i64, ptr %i.ekh, align 8, !tbaa !28 ; 3 uses
  %i.ekj = icmp ult i64 %i.eki, 16
  call void @llvm.assume(i1 %i.ekj)
  %i.ekk = add nuw nsw i64 %i.eki, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ekd, ptr noundef nonnull align 8 dereferenceable(1) %i.ekf, i64 %i.ekk, i1 false)
  br label %bb.adq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2354: ; preds = %.noexc2359
  store ptr %i.eke, ptr %253, align 8, !tbaa !149, !alias.scope !899
  %i.ekl = load i64, ptr %i.ekf, align 8, !tbaa !30
  store i64 %i.ekl, ptr %i.ekd, align 8, !tbaa !30, !alias.scope !899
  %.phi.trans.insert.i2355 = getelementptr inbounds nuw i8, ptr %i.ekc, i64 8
  %.pre.i2356 = load i64, ptr %.phi.trans.insert.i2355, align 8, !tbaa !28
  br label %bb.adq

bb.adq:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2354, %bb.adp
  %i.ekm = phi i64 [ %i.eki, %bb.adp ], [ %.pre.i2356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2354 ]
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ekc, i64 8
  %i.eko = getelementptr inbounds nuw i8, ptr %253, i64 8 ; 2 uses
  store i64 %i.ekm, ptr %i.eko, align 8, !tbaa !28, !alias.scope !899
  store ptr %i.ekf, ptr %i.ekc, align 8, !tbaa !149
  store i64 0, ptr %i.ekn, align 8, !tbaa !28
  store i8 0, ptr %i.ekf, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ekp = load i64, ptr %i.eko, align 8, !tbaa !28, !noalias !902
  %i.ekq = add i64 %i.ekp, -4611686018427387885
  %i.ekr = icmp ult i64 %i.ekq, 19
  br i1 %i.ekr, label %bb.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2361

bb.adr:                                           ; preds = %bb.adq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc2366 unwind label %bb.aeg

.noexc2366:                                       ; preds = %bb.adr
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2361: ; preds = %bb.adq
  %i.eks = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %253, ptr noundef nonnull @.str.188, i64 noundef 19)
          to label %.noexc2367 unwind label %bb.aeg ; 6 uses

.noexc2367:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i2361
  %i.ekt = getelementptr inbounds nuw i8, ptr %252, i64 16 ; 9 uses
  store ptr %i.ekt, ptr %252, align 8, !tbaa !25, !alias.scope !902
  %i.eku = load ptr, ptr %i.eks, align 8, !tbaa !149 ; 2 uses
  %i.ekv = getelementptr inbounds nuw i8, ptr %i.eks, i64 16 ; 5 uses
  %i.ekw = icmp eq ptr %i.eku, %i.ekv
  br i1 %i.ekw, label %bb.ads, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362

bb.ads:                                           ; preds = %.noexc2367
  %i.ekx = getelementptr inbounds nuw i8, ptr %i.eks, i64 8
  %i.eky = load i64, ptr %i.ekx, align 8, !tbaa !28 ; 3 uses
  %i.ekz = icmp ult i64 %i.eky, 16
  call void @llvm.assume(i1 %i.ekz)
  %i.ela = add nuw nsw i64 %i.eky, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ekt, ptr noundef nonnull align 8 dereferenceable(1) %i.ekv, i64 %i.ela, i1 false)
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i2372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362: ; preds = %.noexc2367
  store ptr %i.eku, ptr %252, align 8, !tbaa !149, !alias.scope !902
  %i.elb = load i64, ptr %i.ekv, align 8, !tbaa !30
  store i64 %i.elb, ptr %i.ekt, align 8, !tbaa !30, !alias.scope !902
  %.phi.trans.insert.i2363 = getelementptr inbounds nuw i8, ptr %i.eks, i64 8
  %.pre.i2364 = load i64, ptr %.phi.trans.insert.i2363, align 8, !tbaa !28
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i2372

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i2372: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362, %bb.ads
  %i.elc = phi i64 [ %i.eky, %bb.ads ], [ %.pre.i2364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2362 ]
  %i.eld = getelementptr inbounds nuw i8, ptr %i.eks, i64 8
  %i.ele = getelementptr inbounds nuw i8, ptr %252, i64 8 ; 2 uses
  store i64 %i.elc, ptr %i.ele, align 8, !tbaa !28, !alias.scope !902
  store ptr %i.ekv, ptr %i.eks, align 8, !tbaa !149
  store i64 0, ptr %i.eld, align 8, !tbaa !28
  store i8 0, ptr %i.ekv, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %259) #30
  %i.elf = getelementptr inbounds nuw i8, ptr %259, i64 16 ; 7 uses
  store ptr %i.elf, ptr %259, align 8, !tbaa !25, !alias.scope !905
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %259, i64 noundef 20, i8 noundef signext 0)
          to label %bb.adt unwind label %bb.aeh

bb.adt:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i2372
  %i.elg = load ptr, ptr %259, align 8, !tbaa !149, !alias.scope !905 ; 20 uses
  %i.elh = getelementptr inbounds nuw i8, ptr %259, i64 8 ; 2 uses
  %i.eli = load i64, ptr %i.elh, align 8, !tbaa !28, !alias.scope !905 ; 10 uses
  %i.elj = add i64 %i.eli, 4294967295
  %i.elk = and i64 %i.elj, 4294967295             ; 9 uses
  %i.ell = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.elk
  store i8 53, ptr %i.ell, align 1, !tbaa !30
  %i.elm = add i64 %i.eli, 4294967294
  %i.eln = and i64 %i.elm, 4294967295
  %i.elo = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.eln
  store i8 49, ptr %i.elo, align 1, !tbaa !30
  %277 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.elp = getelementptr i8, ptr %277, i64 -2
  store i8 54, ptr %i.elp, align 1, !tbaa !30
  %i.elq = add i64 %i.eli, 4294967292
  %i.elr = and i64 %i.elq, 4294967295
  %i.els = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.elr
  store i8 49, ptr %i.els, align 1, !tbaa !30
  %278 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.elt = getelementptr i8, ptr %278, i64 -4
  store i8 53, ptr %i.elt, align 1, !tbaa !30
  %i.elu = add i64 %i.eli, 4294967290
  %i.elv = and i64 %i.elu, 4294967295
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.elv
  store i8 53, ptr %i.elw, align 1, !tbaa !30
  %279 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.elx = getelementptr i8, ptr %279, i64 -6
  store i8 57, ptr %i.elx, align 1, !tbaa !30
  %i.ely = add i64 %i.eli, 4294967288
  %i.elz = and i64 %i.ely, 4294967295
  %i.ema = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.elz
  store i8 48, ptr %i.ema, align 1, !tbaa !30
  %280 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.emb = getelementptr i8, ptr %280, i64 -8
  store i8 55, ptr %i.emb, align 1, !tbaa !30
  %i.emc = add i64 %i.eli, 4294967286
  %i.emd = and i64 %i.emc, 4294967295
  %i.eme = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.emd
  store i8 51, ptr %i.eme, align 1, !tbaa !30
  %281 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.emf = getelementptr i8, ptr %281, i64 -10
  store i8 55, ptr %i.emf, align 1, !tbaa !30
  %i.emg = add i64 %i.eli, 4294967284
  %i.emh = and i64 %i.emg, 4294967295
  %i.emi = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.emh
  store i8 48, ptr %i.emi, align 1, !tbaa !30
  %282 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.emj = getelementptr i8, ptr %282, i64 -12
  store i8 52, ptr %i.emj, align 1, !tbaa !30
  %i.emk = add i64 %i.eli, 4294967282
  %i.eml = and i64 %i.emk, 4294967295
  %i.emm = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.eml
  store i8 52, ptr %i.emm, align 1, !tbaa !30
  %283 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.emn = getelementptr i8, ptr %283, i64 -14
  store i8 55, ptr %i.emn, align 1, !tbaa !30
  %i.emo = add i64 %i.eli, 4294967280
  %i.emp = and i64 %i.emo, 4294967295
  %i.emq = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.emp
  store i8 54, ptr %i.emq, align 1, !tbaa !30
  %284 = getelementptr i8, ptr %i.elg, i64 %i.elk
  %i.emr = getelementptr i8, ptr %284, i64 -16
  store i8 52, ptr %i.emr, align 1, !tbaa !30
  %i.ems = add i64 %i.eli, 4294967278
  %i.emt = and i64 %i.ems, 4294967295
  %i.emu = getelementptr inbounds nuw i8, ptr %i.elg, i64 %i.emt
  store i8 52, ptr %i.emu, align 1, !tbaa !30
  %i.emv = getelementptr inbounds nuw i8, ptr %i.elg, i64 1
  store i8 56, ptr %i.emv, align 1, !tbaa !30
  store i8 49, ptr %i.elg, align 1, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.emw = load i64, ptr %i.ele, align 8, !tbaa !28, !noalias !908 ; 4 uses
  %i.emx = load i64, ptr %i.elh, align 8, !tbaa !28, !noalias !908 ; 4 uses
  %i.emy = add i64 %i.emx, %i.emw                 ; 2 uses
  %i.emz = load ptr, ptr %252, align 8, !tbaa !149, !noalias !908 ; 2 uses
  %i.ena = icmp eq ptr %i.emz, %i.ekt
  br i1 %i.ena, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2395: ; preds = %bb.adt
  %i.enb = icmp ult i64 %i.emw, 16
  call void @llvm.assume(i1 %i.enb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2383: ; preds = %bb.adt
  %i.enc = load i64, ptr %i.ekt, align 8, !tbaa !30, !noalias !908
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2384: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2395
  %i.end = phi i64 [ %i.enc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2383 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2395 ]
  %i.ene = icmp ugt i64 %i.emy, %i.end
  br i1 %i.ene, label %bb.adu, label %bb.adw

bb.adu:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2384
  %i.enf = load ptr, ptr %259, align 8, !tbaa !149, !noalias !908
  %i.eng = icmp eq ptr %i.enf, %i.elf
  br i1 %i.eng, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i2394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i2388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i2394: ; preds = %bb.adu
  %i.enh = icmp ult i64 %i.emx, 16
  call void @llvm.assume(i1 %i.enh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i2388: ; preds = %bb.adu
  %i.eni = load i64, ptr %i.elf, align 8, !tbaa !30, !noalias !908
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2389: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i2388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i2394
  %i.enj = phi i64 [ %i.eni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i2388 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i2394 ]
  %.not.i2390 = icmp ugt i64 %i.emy, %i.enj
  br i1 %.not.i2390, label %bb.adw, label %.critedge.i2391

.critedge.i2391:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2389
  %i.enk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %259, i64 noundef 0, i64 noundef 0, ptr noundef %i.emz, i64 noundef %i.emw)
          to label %.noexc2396 unwind label %bb.aei ; 5 uses

.noexc2396:                                       ; preds = %.critedge.i2391
  %i.enl = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 3 uses
  store ptr %i.enl, ptr %251, align 8, !tbaa !25, !alias.scope !908
  %i.enm = load ptr, ptr %i.enk, align 8, !tbaa !149 ; 2 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %i.enk, i64 16 ; 5 uses
  %i.eno = icmp eq ptr %i.enm, %i.enn
  br i1 %i.eno, label %bb.adv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2392

bb.adv:                                           ; preds = %.noexc2396
  %i.enp = getelementptr inbounds nuw i8, ptr %i.enk, i64 8
  %i.enq = load i64, ptr %i.enp, align 8, !tbaa !28 ; 2 uses
  %i.enr = icmp ult i64 %i.enq, 16
  call void @llvm.assume(i1 %i.enr)
  %i.ens = add nuw nsw i64 %i.enq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.enl, ptr noundef nonnull align 8 dereferenceable(1) %i.enn, i64 %i.ens, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2392: ; preds = %.noexc2396
  store ptr %i.enm, ptr %251, align 8, !tbaa !149, !alias.scope !908
  %i.ent = load i64, ptr %i.enn, align 8, !tbaa !30
  store i64 %i.ent, ptr %i.enl, align 8, !tbaa !30, !alias.scope !908
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2393: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i2392, %bb.adv
  %i.enu = getelementptr inbounds nuw i8, ptr %i.enk, i64 8 ; 2 uses
  %i.env = load i64, ptr %i.enu, align 8, !tbaa !28
  %i.enw = getelementptr inbounds nuw i8, ptr %251, i64 8
  store i64 %i.env, ptr %i.enw, align 8, !tbaa !28, !alias.scope !908
  store ptr %i.enn, ptr %i.enk, align 8, !tbaa !149
  store i64 0, ptr %i.enu, align 8, !tbaa !28
  store i8 0, ptr %i.enn, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2399

bb.adw:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i2389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2384
  %i.enx = sub i64 4611686018427387903, %i.emw
  %i.eny = icmp ult i64 %i.enx, %i.emx
  br i1 %i.eny, label %bb.adx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2385

bb.adx:                                           ; preds = %bb.adw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc2397 unwind label %bb.aei

.noexc2397:                                       ; preds = %bb.adx
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2385: ; preds = %bb.adw
  %i.enz = load ptr, ptr %259, align 8, !tbaa !149, !noalias !908
  %i.eoa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %252, ptr noundef %i.enz, i64 noundef %i.emx)
          to label %.noexc2398 unwind label %bb.aei ; 5 uses

.noexc2398:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i2385
  %i.eob = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 3 uses
  store ptr %i.eob, ptr %251, align 8, !tbaa !25, !alias.scope !908
  %i.eoc = load ptr, ptr %i.eoa, align 8, !tbaa !149 ; 2 uses
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoa, i64 16 ; 5 uses
  %i.eoe = icmp eq ptr %i.eoc, %i.eod
  br i1 %i.eoe, label %bb.ady, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2386

bb.ady:                                           ; preds = %.noexc2398
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eoa, i64 8
  %i.eog = load i64, ptr %i.eof, align 8, !tbaa !28 ; 2 uses
  %i.eoh = icmp ult i64 %i.eog, 16
  call void @llvm.assume(i1 %i.eoh)
  %i.eoi = add nuw nsw i64 %i.eog, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eob, ptr noundef nonnull align 8 dereferenceable(1) %i.eod, i64 %i.eoi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2386: ; preds = %.noexc2398
  store ptr %i.eoc, ptr %251, align 8, !tbaa !149, !alias.scope !908
  %i.eoj = load i64, ptr %i.eod, align 8, !tbaa !30
  store i64 %i.eoj, ptr %i.eob, align 8, !tbaa !30, !alias.scope !908
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2387: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i2386, %bb.ady
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eoa, i64 8 ; 2 uses
  %i.eol = load i64, ptr %i.eok, align 8, !tbaa !28
  %i.eom = getelementptr inbounds nuw i8, ptr %251, i64 8
  store i64 %i.eol, ptr %i.eom, align 8, !tbaa !28, !alias.scope !908
  store ptr %i.eod, ptr %i.eoa, align 8, !tbaa !149
  store i64 0, ptr %i.eok, align 8, !tbaa !28
  store i8 0, ptr %i.eod, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2399

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i2387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i2393
  call void @llvm.lifetime.start.p0(ptr nonnull %260) #30
  %i.eon = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.eoo = load ptr, ptr %i.eon, align 8, !tbaa !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %260, ptr noundef nonnull align 8 dereferenceable(16) %i.eoo, i64 16, i1 false), !tbaa.struct !255
  %i.eop = getelementptr inbounds nuw i8, ptr %260, i64 16
  store i8 1, ptr %i.eop, align 8, !tbaa !226
  %i.eoq = invoke noundef zeroext i1 @_ZN4bzla6parser4smt26Parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_5Lexer10CoordinateEE(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(32) %251, ptr noundef nonnull align 8 dereferenceable(24) %260)
          to label %bb.adz unwind label %bb.aej   ; 0 uses

bb.adz:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit2399
  call void @llvm.lifetime.end.p0(ptr nonnull %260) #30
  %i.eor = load ptr, ptr %251, align 8, !tbaa !149 ; 2 uses
  %i.eos = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 2 uses
  %i.eot = icmp eq ptr %i.eor, %i.eos
  br i1 %i.eot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2400: ; preds = %bb.adz
  %i.eou = load i64, ptr %i.eos, align 8, !tbaa !30
  %i.eov = add i64 %i.eou, 1
  call void @_ZdlPvm(ptr noundef %i.eor, i64 noundef %i.eov) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2402: ; preds = %bb.adz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2400
  %i.eow = load ptr, ptr %259, align 8, !tbaa !149 ; 2 uses
  %i.eox = icmp eq ptr %i.eow, %i.elf
  br i1 %i.eox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2402
  %i.eoy = load i64, ptr %i.elf, align 8, !tbaa !30
  %i.eoz = add i64 %i.eoy, 1
  call void @_ZdlPvm(ptr noundef %i.eow, i64 noundef %i.eoz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2403
  call void @llvm.lifetime.end.p0(ptr nonnull %259) #30
  %i.epa = load ptr, ptr %252, align 8, !tbaa !149 ; 2 uses
  %i.epb = icmp eq ptr %i.epa, %i.ekt
  br i1 %i.epb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2405
  %i.epc = load i64, ptr %i.ekt, align 8, !tbaa !30
  %i.epd = add i64 %i.epc, 1
  call void @_ZdlPvm(ptr noundef %i.epa, i64 noundef %i.epd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2406
  %i.epe = load ptr, ptr %253, align 8, !tbaa !149 ; 2 uses
  %i.epf = icmp eq ptr %i.epe, %i.ekd
  br i1 %i.epf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2408
  %i.epg = load i64, ptr %i.ekd, align 8, !tbaa !30
  %i.eph = add i64 %i.epg, 1
  call void @_ZdlPvm(ptr noundef %i.epe, i64 noundef %i.eph) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2409
  %i.epi = load ptr, ptr %254, align 8, !tbaa !149 ; 2 uses
  %i.epj = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 2 uses
  %i.epk = icmp eq ptr %i.epi, %i.epj
  br i1 %i.epk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411
end_hunk_4
