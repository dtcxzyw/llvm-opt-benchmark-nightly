begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector19NotificationEmitter16addEventNotifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvN2v85LocalINSB_7ContextEEENSC_INSB_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St8functionIFvN2v85LocalINSA_7ContextEEENSB_INSA_6ObjectEEEEEESaISI_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEEEEC2ERKS7_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %3, align 16
  br label %_ZNSt8functionIFvN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEEEEC2ERKS7_.exit.i

_ZNSt8functionIFvN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEEEEC2ERKS7_.exit.i: ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  %i.j = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ]
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  store ptr %i.m, ptr %i.k, align 16
  store ptr %i.j, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
end_hunk_1
