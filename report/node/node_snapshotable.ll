inline.NumInlined: 6455
inline.NumDeleted: 1960
begin_hunk_0_@_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE10ReadVectorIhEESt6vectorIT_SaIS5_EEv:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.x, i1 false), !noalias !67
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.i, %bb.j
  %.sroa.9.0 = phi ptr [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.011.0 = phi ptr [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.j ], [ %i.w, %bb.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  call void @_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE14ReadArithmeticIhEEvPT_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.sroa.011.0, i64 noundef %i.s), !noalias !67
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.011.0, ptr %0, align 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.z, align 8
  store ptr %.sroa.9.0, ptr %i.aa, align 8
  %.pre = load i8, ptr %1, align 8, !range !26, !noundef !38
  %i.ab = trunc nuw i8 %.pre to i1
  br i1 %i.ab, label %._crit_edge.i.i, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE10ReadVectorImEESt6vectorIT_SaIS5_EEv:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
  %.sroa.9.0 = phi ptr [ %i.w, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.w, %bb.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.011.0 = phi ptr [ %i.v, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.v, %bb.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.x, %bb.i ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  call void @_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE14ReadArithmeticImEEvPT_m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.sroa.011.0, i64 noundef %i.s), !noalias !94
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.011.0, ptr %0, align 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.ab, align 8
  store ptr %.sroa.9.0, ptr %i.ac, align 8
  %.pre = load i8, ptr %1, align 8, !range !26, !noundef !38
  %i.ad = trunc nuw i8 %.pre to i1
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.k

end_hunk_1
begin_hunk_2_@_ZN4node20CompileSerializeMainERKN2v820FunctionCallbackInfoINS0_5ValueEEE:bb.a
_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.h
  store ptr %i.am, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %5 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %5, ptr %1, align 8
  store ptr %5, ptr %6, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %.sroa.039.075, ptr %3, align 8
end_hunk_2
begin_hunk_3_@_ZN4node20CompileSerializeMainERKN2v820FunctionCallbackInfoINS0_5ValueEEE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ba, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 -1, i64 16, i1 false)
  %i.bd = load ptr, ptr %6, align 8
  %i.be = load ptr, ptr %1, align 8               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
end_hunk_3
