inline.NumInlined: 794
inline.NumDeleted: 326
begin_hunk_0_@_ZN10duckdb_re2L6FanoutEPNS_4ProgEPSt6vectorIiSaIiEE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 -85, i64 %i.q, i1 false), !tbaa !3
  br label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit

.thread.i:                                        ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #31
  br label %common.resume

common.resume:                                    ; preds = %.thread.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.r, %.thread.i ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_re211SparseArrayIiEC2Ei.exit:         ; preds = %bb.b, %.lr.ph.i.i
  invoke void @_ZN10duckdb_re24Prog6FanoutEPNS_11SparseArrayIiEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag:bb.a
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = load ptr, ptr %0, align 8, !tbaa !221    ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag:bb.a

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %0, align 8, !tbaa !221      ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %3) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIPiEES3_mT_S4_.exit, %bb.g
end_hunk_2
