inline.NumInlined: 3702
inline.NumDeleted: 1236
begin_hunk_0_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EC2EmRKSC_RKSE_RKSF_ff:bb.a

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bl, %.unr-lcssa ]
  %7 = fcmp olt float %5, 0.000000e+00
  %8 = select i1 %7, float 0.000000e+00, float %5 ; 2 uses
  %9 = fcmp ogt float %8, 0x3FC3333340000000
  %.sroa.speculated.i = select i1 %9, float 0x3FC3333340000000, float %8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8, !tbaa !922
  %10 = fcmp olt float %6, 0x3FC99999A0000000
  %11 = select i1 %10, float 0x3FC99999A0000000, float %6 ; 2 uses
  %12 = fcmp ogt float %11, 0x3FEE666660000000
  %.sroa.speculated.i11 = select i1 %12, float 0x3FEE666660000000, float %11 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %13, align 4, !tbaa !923
  %i.bn = fmul float %.sroa.speculated.i11, %.017202730
  %i.bo = fptoui float %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.0 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8
  %.not = icmp sgt i16 %i.m, %i.o
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !924

.loopexit:                                        ; preds = %.lr.ph64, %.lr.ph67
  %.236.lcssa = phi i16 [ 0, %.lr.ph67 ], [ %i.v, %.lr.ph64 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.260, %.lr.ph67 ], [ %.2, %.lr.ph64 ]
  %i.p = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.p, label %.lr.ph67, label %._crit_edge, !llvm.loop !925

.lr.ph67:                                         ; preds = %.preheader, %.loopexit
  %i.q = load i64, ptr %0, align 8, !tbaa !196    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %.2
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %.not37 = icmp sgt i16 %i.v, %i.x
  br i1 %.not37, label %.loopexit, label %.lr.ph64, !llvm.loop !926

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.ad = load i64, ptr %3, align 8, !tbaa !138
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !927
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !165
end_hunk_3
begin_hunk_4_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESR_IJEEEEES2_INSM_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.ak = load i64, ptr %3, align 8, !tbaa !138
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !102
  store i64 %i.am, ptr %5, align 8, !tbaa !927
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !165
end_hunk_4
begin_hunk_5_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs:bb.a
bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !922 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

end_hunk_5
begin_hunk_6_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22rehash_on_extreme_loadEs:bb.a
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !923 ; 2 uses
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.ai = fptoui float %i.ah to i64
end_hunk_6
begin_hunk_7_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !922
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !923
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EC2EmRKSC_RKSE_RKSF_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm:bb.a
  br i1 %i.bm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !927
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !165
end_hunk_8
begin_hunk_9_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_:bb.a
  %storemerge.lcssa = phi i16 [ %storemerge17, %bb.a ], [ %storemerge, %bb.f ]
  %.lcssa = phi ptr [ %i.n, %bb.a ], [ %i.ag, %bb.f ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ak = load i64, ptr %4, align 8, !tbaa !927
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !165
end_hunk_9
begin_hunk_10_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17erase_from_bucketENSM_14robin_iteratorILb0EEE:bb.a
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %.017 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !927
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !927
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
end_hunk_10
begin_hunk_11_@llvm.umin.i32
!919 = distinct !{!919, !36}
!920 = !{!14, !16, i64 48}
!921 = !{!21, !21, i64 0}
!922 = !{!14, !23, i64 64}
!923 = !{!14, !23, i64 68}
!924 = distinct !{!924, !36}
!925 = distinct !{!925, !36}
!926 = distinct !{!926, !36}
!927 = !{!928, !16, i64 0}
!928 = !{!"_ZTSSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !16, i64 0, !31, i64 8}
!929 = !{!10, !10, i64 0}
!930 = distinct !{!930, !36}
!931 = distinct !{!931, !36}
end_hunk_11
