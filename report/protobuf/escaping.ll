inline.NumInlined: 426
inline.NumDeleted: 117
begin_hunk_0_@_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.br = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.br(i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef 428, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit.i.i unwind label %bb.f, !inline_history !49

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.co = add i64 %.11841.i.i, 2                  ; 2 uses
  %i.cp = add i64 %i.cf, %i.cm                    ; 2 uses
  %exitcond48.not.i.i.1 = icmp eq i64 %i.co, %1
  br i1 %exitcond48.not.i.i.1, label %_ZN4absl12lts_2025051212_GLOBAL__N_114CEscapedLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph43.i.i, !llvm.loop !50

_ZN4absl12lts_2025051212_GLOBAL__N_114CEscapedLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph43.i.i.prol.loopexit, %bb.h, %.preheader.i.i
  %.116.lcssa.i.i = phi i64 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %.lcssa.unr, %.lr.ph43.i.i.prol.loopexit ], [ %i.cp, %bb.h ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.da = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.da(i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef 447, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit.i unwind label %bb.s, !inline_history !49

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  unreachable
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %.03151.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter33
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !51

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.03052.i.unr = phi ptr [ %i.dr, %.lr.ph.preheader.i ], [ %i.dz, %.lr.ph.i.prol ]
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051212_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE:bb.a
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %i.cs, align 1, !tbaa !13
  %i.cz = icmp ugt i64 %.5.i, 3
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !52

switch.early.test.i:                              ; preds = %bb.g, %bb.j, %bb.m, %bb.p
  %i.da = phi i8 [ %i.bc, %bb.j ], [ %i.br, %bb.m ], [ %i.cg, %bb.p ], [ %i.ap, %bb.g ]
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051212_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE:bb.a

bb.w:                                             ; preds = %bb.y
  %.not291.i = icmp eq i64 %i.de, 0
  br i1 %.not291.i, label %.loopexit316.loopexit.i, label %bb.x, !llvm.loop !53

bb.x:                                             ; preds = %.lr.ph, %bb.w
  %.13.i358 = phi i64 [ %.13.ph.i373, %.lr.ph ], [ %i.de, %bb.w ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051212_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE:bb.a
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = and i8 %i.dm, 8
  %.not314.i = icmp eq i8 %i.dn, 0
  br i1 %.not314.i, label %bb.z, label %bb.w, !llvm.loop !53

bb.z:                                             ; preds = %bb.y
  switch i8 %i.dg, label %.loopexit [
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051212_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE:bb.a
  %.2248.i = phi i32 [ 0, %bb.ac ], [ %i.dr, %bb.aa ] ; 2 uses
  %.8239.i = phi i32 [ 0, %bb.ac ], [ %i.dq, %bb.aa ] ; 2 uses
  %.not291.i356 = icmp eq i64 %i.de, 0
  br i1 %.not291.i356, label %.loopexit316.loopexit.i, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %.outer.preheader.i, %.outer.i
  %.13.ph.i373 = phi i64 [ %i.de, %.outer.i ], [ %.12311533.i, %.outer.preheader.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051212_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE:bb.a
  %i.ex = add i64 %.15427.i, -1                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.15230426.i, i64 1
  %.not292.i = icmp eq i64 %i.ex, 0
  br i1 %.not292.i, label %._crit_edge431.i, label %.lr.ph430.i, !llvm.loop !54

._crit_edge431.i:                                 ; preds = %bb.ak
  %i.ez = and i32 %.1210.i, %i.eq
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051216HexStringToBytesESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a
  %i.ac = icmp ne i8 %i.x, -1
  %i.ad = icmp ne i8 %i.ab, -1
  %or.cond.not = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.not, label %.lr.ph68, label %.lr.ph._crit_edge, !llvm.loop !55

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.an, %.lr.ph ]
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051216HexStringToBytesESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE:bb.a
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %.not35 = icmp eq ptr %i.am, %i.ap
  br i1 %.not35, label %.critedge, label %.lr.ph, !llvm.loop !55

.critedge:                                        ; preds = %.lr.ph68, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit
  %i.aq = phi i64 [ 0, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit ], [ %i.ao, %.lr.ph68 ] ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051216HexStringToBytesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ai = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !56

_ZN4absl12lts_2025051212_GLOBAL__N_124HexStringToBytesInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.aj = and i64 %1, 2
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051216BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.03.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !57

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051216BytesToHexStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i.3 = icmp eq ptr %i.am, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051212_GLOBAL__N_124BytesToHexStringInternalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhT_m.exit, label %.lr.ph.i, !llvm.loop !58

bb.b:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051212_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i64 %1, ptr %6, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !59
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %3, align 8, !tbaa !7      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_14
begin_hunk_15_@llvm.experimental.noalias.scope.decl
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !15}
!49 = distinct !{null}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !15}
!59 = !{!10, !10, i64 0}
end_hunk_15
