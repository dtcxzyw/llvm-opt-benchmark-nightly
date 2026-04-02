begin_hunk_0
  %.us-phi = phi ptr [ %.04489.us, %.lr.ph.split.us ], [ %.04489, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04093, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32 ; 3 uses
  %3 = load i128, ptr %i.bc, align 1
  %4 = load i128, ptr %i.bd, align 1
  %5 = icmp ne i128 %3, %4
  %6 = zext i1 %5 to i32
  %i.be = icmp eq i32 %6, 0
  br i1 %i.be, label %.thread76, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
end_hunk_0
