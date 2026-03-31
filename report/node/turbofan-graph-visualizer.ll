begin_hunk_0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.fu = load ptr, ptr %1, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i16, ptr %i.fv, align 8            ; 3 uses
  %i.fx = and i16 %i.fw, -2
  %i.fy = icmp eq i16 %i.fx, 36
  br i1 %i.fy, label %.thread, label %bb.j
end_hunk_0
begin_hunk_1
  %i.hy = add nsw i32 %i.hu, %i.hx
  %i.hz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i32 noundef %i.hy) #25
  %i.ia = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull @.str.58, i64 noundef 1) #25 ; 0 uses
  %14 = icmp eq i16 %i.fw, 2
  br i1 %14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ib = load ptr, ptr %i.cg, align 8, !nonnull !6, !align !22
  %i.ic = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull @.str.61, i64 noundef 17) #25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.j, %bb.l, %bb.k
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ie, null
end_hunk_1
