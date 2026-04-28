inline.NumInlined: 3035
inline.NumDeleted: 949
begin_hunk_0_@_ZN2v88internal19Runtime_GetPropertyEiPmPNS0_7IsolateE:bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %.sroa.07.0.in34.i.i = and i32 %i.fz, %.0.i.i.i24 ; 2 uses
  %.sroa.07.035.i.i = zext nneg i32 %.sroa.07.0.in34.i.i to i64 ; 2 uses
  %i.gb = shl nuw nsw i64 %.sroa.07.035.i.i, 3
  %7 = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.gd = load atomic volatile i64, ptr %i.gc monotonic, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.fw
  br i1 %i.ge, label %.critedge9.i, label %.lr.ph.i.i
end_hunk_0
