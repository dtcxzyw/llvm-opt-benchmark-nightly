begin_hunk_0
define hidden noundef i64 @_ZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector.27", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
end_hunk_0
begin_hunk_1

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 72 ; 3 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.du, align 8
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i = load <2 x i64>, ptr %2, align 16
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.dl, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 24 ; 3 uses
  %i.dy = load <2 x ptr>, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.dx, align 8            ; 2 uses
  store <2 x ptr> %i.dv, ptr %i.dx, align 8
  store <2 x ptr> %i.dy, ptr %i.cm, align 16
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i, label %bb.s

end_hunk_2
begin_hunk_3
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.0106 = alloca %"struct.std::_Tuple_impl.539", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21
  %i.e = load i64, ptr %1, align 8                ; 3 uses
end_hunk_3
begin_hunk_4
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0106)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0106, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
end_hunk_4
begin_hunk_5

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit

end_hunk_5
begin_hunk_6

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106, i64 16, i1 false)
  store ptr %i.bp, ptr %i.de, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit

end_hunk_6
begin_hunk_7
  store i64 %i.bs, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0106)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge:                                        ; preds = %bb.l, %bb.k
end_hunk_7
begin_hunk_8
  br i1 %i.eb, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -24 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 3 uses
end_hunk_8
begin_hunk_9

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 -40
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.eg, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22: ; preds = %bb.af, %bb.ag
  %.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %bb.af ], [ %.sroa.0.0.copyload, %bb.ag ]
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  store ptr null, ptr %i.eh, align 8
end_hunk_9
begin_hunk_10

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0, ptr %0, align 8
  store ptr %i.ef, ptr %i.ey, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34

end_hunk_10
begin_hunk_11
  store i64 %i.ei, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.fa, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge13:                                      ; preds = %.critedge, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
end_hunk_11
begin_hunk_12
define linkonce_odr hidden ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_12
begin_hunk_13

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 3 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.x, align 8
end_hunk_13
begin_hunk_14
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i.i.i.i = load <2 x i64>, ptr %2, align 16
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.aa, align 8            ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.l, align 16
  store <2 x ptr> %i.y, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, label %bb.g
end_hunk_14
begin_hunk_15
define linkonce_odr hidden ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EESG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE15_M_erase_at_endEPSA_.exit, label %bb.b
end_hunk_15
begin_hunk_16

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 3 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.x, align 8
end_hunk_16
begin_hunk_17
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i.i.i.i = load <2 x i64>, ptr %3, align 16
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.aa, align 8            ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.l, align 16
  store <2 x ptr> %i.y, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, label %bb.h
end_hunk_17
