begin_hunk_0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1
  unreachable

bb.c:                                             ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader, %_ZN2v88internal6handleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_6HandleIT_EENS0_6TaggedIS7_EEPNS0_7IsolateE.exit.i.i
  %.02488 = phi i32 [ 0, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader ], [ %.226.ph, %_ZN2v88internal6handleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_6HandleIT_EENS0_6TaggedIS7_EEPNS0_7IsolateE.exit.i.i ] ; 4 uses
  %.sroa.11.087 = phi ptr [ %1, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.preheader ], [ %.0.i.i.i.i, %_ZN2v88internal6handleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_6HandleIT_EENS0_6TaggedIS7_EEPNS0_7IsolateE.exit.i.i ] ; 3 uses
  %4 = load i64, ptr %.sroa.11.087, align 8       ; 2 uses
  %i.e = add i64 %4, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
end_hunk_1
begin_hunk_2
  %i.an = load atomic volatile i64, ptr %i.ah monotonic, align 8
  %i.ao = add i64 %i.an, 23
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = load i64, ptr %i.d, align 8
  %i.as = icmp eq i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %i.b, align 8             ; 2 uses
end_hunk_2
begin_hunk_3
  %i.aw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6handleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_6HandleIT_EENS0_6TaggedIS7_EEPNS0_7IsolateE.exit.i.i

_ZN2v88internal6handleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_6HandleIT_EENS0_6TaggedIS7_EEPNS0_7IsolateE.exit.i.i: ; preds = %.thread.i.cont, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %i.at, %.thread.i.cont ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ay = add i64 %i.ax, 8
end_hunk_3
