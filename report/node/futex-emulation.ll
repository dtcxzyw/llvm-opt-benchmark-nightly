inline.NumInlined: 1031
inline.NumDeleted: 551
begin_hunk_0_@_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertERKSA_:bb.a
; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #10 comdat align 2 {
_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.7.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.715.0.copyload = load ptr, ptr %.sroa.715.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.11.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.1117.0.copyload = load ptr, ptr %.sroa.1117.0..sroa_idx, align 8 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.15.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.1519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.1519.0.copyload = load ptr, ptr %.sroa.1519.0..sroa_idx, align 8 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.19.sroa.0.0.copyload = load <2 x ptr>, ptr %.sroa.19.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv:_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.0.0.copyload, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store <2 x ptr> %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx14, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.i = load i64, ptr %i.e, align 8
  %i.j = add i64 %i.i, 1
end_hunk_1
begin_hunk_2_@_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv:_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %.sroa.715.0.copyload, ptr %i.y, align 8
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store <2 x ptr> %.sroa.11.sroa.0.0.copyload, ptr %.sroa.11.24..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = add i64 %i.z, 1
end_hunk_2
begin_hunk_3_@_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv:_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %.sroa.1117.0.copyload, ptr %i.ap, align 8
  %.sroa.15.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store <2 x ptr> %.sroa.15.sroa.0.0.copyload, ptr %.sroa.15.48..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.2, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.aq = load i64, ptr %i.e, align 8
  %i.ar = add i64 %i.aq, 1
end_hunk_3
begin_hunk_4_@_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv:_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %.sroa.1519.0.copyload, ptr %i.bg, align 8
  %.sroa.19.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store <2 x ptr> %.sroa.19.sroa.0.0.copyload, ptr %.sroa.19.72..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.3, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = add i64 %i.bh, 1
end_hunk_4
begin_hunk_5_@_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv:_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  br label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.3

_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.3: ; preds = %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.3, %bb.h
  ret void
}

end_hunk_5
