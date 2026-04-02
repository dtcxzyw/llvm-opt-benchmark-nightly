begin_hunk_0
  %.us-phi = phi ptr [ %.04489.us, %.lr.ph.split.us ], [ %.04489, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04093, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32 ; 3 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16)
  %i.be = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.be, label %.thread76, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
end_hunk_0
