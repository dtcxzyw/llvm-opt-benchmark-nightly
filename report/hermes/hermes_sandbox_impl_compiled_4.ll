inline.NumInlined: 16097
inline.NumDeleted: 33
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AabstractEqualityTest_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %.0903 = phi double [ %.0.copyload.i1089, %bb.ak ], [ %i.iw, %bb.al ] ; 2 uses
  %i.ix = tail call double @llvm.fabs.f64(double %.0903) ; 4 uses
  %.not917 = fcmp one double %i.ix, 0x7FF0000000000000
  %i.iy = tail call double @llvm.trunc.f64(double %i.ix)
  %i.iz = fcmp oeq double %i.iy, %i.ix
  %or.cond = and i1 %.not917, %i.iz
  br i1 %or.cond, label %bb.ao, label %bb.an
end_hunk_0
