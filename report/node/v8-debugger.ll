inline.NumInlined: 2952
inline.NumDeleted: 1691
begin_hunk_0_@_ZNK12v8_inspector15AsyncStackTrace6parentEv
declare void @_ZNK12v8_inspector15AsyncStackTrace6parentEv(ptr dead_on_unwind writable sret(%"class.std::weak_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10V8Debugger13stackTraceForEiRKNS_14V8StackTraceIdE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(817) %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.422", align 8    ; 6 uses
  %5 = alloca %"class.v8_inspector::internal::V8DebuggerId", align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN12v8_inspector10V8Debugger13stackTraceForEiRKNS_14V8StackTraceIdE:bb.a
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.bh, %bb.o ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !229 ; 3 uses
  store ptr %i.bt, ptr %i.br, align 8, !alias.scope !229
end_hunk_1
begin_hunk_2_@_ZN12v8_inspector10V8Debugger13stackTraceForEiRKNS_14V8StackTraceIdE:bb.a
  br i1 %.not.i.i.i.i3, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt13unordered_mapImSt8weak_ptrIN12v8_inspector15AsyncStackTraceEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEE4findERS9_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load atomic i32, ptr %i.bu monotonic, align 8, !noalias !229
  br label %bb.s

end_hunk_2
begin_hunk_3_@_ZN12v8_inspector10V8Debugger13stackTraceForEiRKNS_14V8StackTraceIdE:bb.a
  %i.bx = cmpxchg weak ptr %i.bu, i32 %.06.i.i.i.i.i, i32 %i.bw acq_rel monotonic, align 8, !noalias !229 ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bx, 1
  %i.bz = extractvalue { i32, i1 } %i.bx, 0
  br i1 %i.by, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, label %bb.s, !llvm.loop !68

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.s
  store ptr null, ptr %i.br, align 8, !alias.scope !229
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i: ; preds = %bb.t
  %.pr.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !229 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i3.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.ca = load atomic i32, ptr %6 monotonic, align 8, !noalias !229
  %.fr.i.i.i = freeze i32 %i.ca
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.cb = load ptr, ptr %i.bq, align 8, !noalias !229
  br i1 %.not.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN12v8_inspector15AsyncStackTraceEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNSt13unordered_mapImSt8weak_ptrIN12v8_inspector15AsyncStackTraceEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEE4findERS9_.exit
  br label %_ZNKSt8weak_ptrIN12v8_inspector15AsyncStackTraceEE4lockEv.exit

_ZNKSt8weak_ptrIN12v8_inspector15AsyncStackTraceEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
end_hunk_3
