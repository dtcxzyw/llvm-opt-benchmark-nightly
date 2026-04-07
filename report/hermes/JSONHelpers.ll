inline.NumInlined: 265
inline.NumDeleted: 221
begin_hunk_0_@_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev:bb.a

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !63
  tail call void %i.o(ptr noundef nonnull %i.n) #11
  br label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i:    ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !64

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #13
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit, %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE
define linkonce_odr hidden { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = icmp sgt i64 %i.b, 0
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %1, i64 noundef %.sroa.speculated.i.i.i.i.i) #14
  %.fr.i.i.i.i.i = freeze i32 %i.l                ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %.112.i.i = select i1 %i.p, i64 %i.s, i64 %i.f  ; 2 uses
  %.1.i.i = select i1 %i.p, ptr %i.q, ptr %.017.i.i ; 2 uses
  %i.t = icmp sgt i64 %.112.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, !llvm.loop !76

_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit
  %i.u = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !74
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !68
  %i.x = icmp eq i64 %.sroa.22.0.copyload, %2
  br i1 %i.x, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

end_hunk_6
begin_hunk_7_@_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call void @_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #13
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_7
begin_hunk_8_@bcmp
!61 = !{!9, !17, i64 32}
!62 = !{!15, !5, i64 8}
!63 = !{!16, !16, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = !{!10, !10, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTSN6hermes6parser10JSONStringE", !16, i64 0}
!71 = !{!72, !73, i64 16}
!72 = !{!"_ZTSN6hermes6parser10JSONStringE", !48, i64 0, !49, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSN6hermes12UniqueStringE", !16, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 omnipotent char", !16, i64 0}
!76 = distinct !{!76, !65}
!77 = !{!53, !55, i64 24}
!78 = !{!53, !55, i64 16}
!79 = distinct !{!79, !65}
end_hunk_8
