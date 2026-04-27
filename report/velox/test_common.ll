inline.NumInlined: 8285
inline.NumDeleted: 2143
begin_hunk_0_@_ZN5arrow3ipc4test9MakeUnionEPSt10shared_ptrINS_11RecordBatchEE:._crit_edge.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajj, i64 noundef %i.ajn) #24
  br label %.body303

.body303:                                         ; preds = %bb.kt, %bb.ks, %bb.fv
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uy, %bb.fv ], [ %.pn89.pn.pn.pn.pn.pn.pn, %bb.kt ], [ %.pn89.pn.pn.pn.pn.pn.pn, %bb.ks ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.ku
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc4test9MakeUnionEPSt10shared_ptrINS_11RecordBatchEE:._crit_edge.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aqp, i64 noundef %i.aqt) #24
  br label %.body278

.body278:                                         ; preds = %bb.nd, %bb.nc, %bb.eu
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sm, %bb.eu ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.nd ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.nc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #23
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  call void @_ZdlPvm(ptr noundef nonnull %i.bpd, i64 noundef %i.bph) #24
  br label %.body

.body:                                            ; preds = %bb.wq, %_ZNSt6vectorIiSaIiEED2Ev.exit608, %bb.n
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.wq ], [ %.pn110.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit608 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.bpi = load ptr, ptr %13, align 8, !tbaa !94  ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc4test18MakeDictionaryFlatEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  call void @_ZdlPvm(ptr noundef nonnull %i.agh, i64 noundef %i.agl) #24
  br label %.body

.body:                                            ; preds = %bb.kj, %_ZNSt6vectorIiSaIiEED2Ev.exit294, %bb.n
  %.pn56.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.n ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %bb.kj ], [ %.pn56.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.agm = load ptr, ptr %12, align 8, !tbaa !94  ; 3 uses
end_hunk_3
