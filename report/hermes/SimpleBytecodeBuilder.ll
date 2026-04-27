inline.NumInlined: 309
inline.NumDeleted: 149
begin_hunk_0_@_ZN6hermes3hbc21SimpleBytecodeBuilder22generateBytecodeBufferEv:bb.a
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.u, %bb.t, %bb.s, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i
  %i.du = phi ptr [ %i.co, %bb.u ], [ %i.co, %bb.t ], [ %i.co, %bb.s ], [ %i.dk, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.pre, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %i.dv = phi ptr [ %i.dt, %bb.u ], [ %i.cn, %bb.t ], [ %i.cn, %bb.s ], [ %i.dq, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i ], [ %.0.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 28
end_hunk_0
