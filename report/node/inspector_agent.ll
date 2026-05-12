inline.NumInlined: 4348
inline.NumDeleted: 2349
begin_hunk_0_@_ZSt12construct_atISt4pairIKPvN4node15TimerWrapHandleEEJRKSt21piecewise_construct_tSt5tupleIJS1_EES9_IJPNS3_11EnvironmentEZNS3_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS1_ES1_EUlvE_EEEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %.sroa.0 = alloca %class.anon.1199, align 8     ; 2 uses
  %i.d = load i64, ptr %2, align 8
  %i.e = inttoptr i64 %i.d to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZSt12construct_atISt4pairIKPvN4node15TimerWrapHandleEEJRKSt21piecewise_construct_tSt5tupleIJS1_EES9_IJPNS3_11EnvironmentEZNS3_9inspector19NodeInspectorClient19startRepeatingTimerEdPFvS1_ES1_EUlvE_EEEEDTgsnwcvS1_Li0E_T_pispclsr3stdE7declvalIT0_EEEEPSJ_DpOSK_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.n, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN4node9inspector19NodeInspectorClient19startRepeatingTimerEdPFvPvES4_EUlvE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 216
end_hunk_1
