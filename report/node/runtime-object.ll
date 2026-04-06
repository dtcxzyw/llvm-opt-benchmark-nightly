begin_hunk_0_@_ZN2v88internal19Runtime_GetPropertyEiPmPNS0_7IsolateE:bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %.sroa.07.0.in34.i.i = and i32 %i.fz, %.0.i.i.i24 ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.gb = shl nuw nsw i64 %.sroa.07.035.i.i, 32
  %sext.i36.i.i = add nuw nsw i64 %i.gb, 21474836480
  %7 = lshr exact i64 %sext.i36.i.i, 29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %7
  %i.gd = load atomic volatile i64, ptr %i.gc monotonic, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.fw
  br i1 %i.ge, label %.critedge9.i, label %.lr.ph.i.i
end_hunk_0
