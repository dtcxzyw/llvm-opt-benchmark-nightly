inline.NumInlined: 1077
inline.NumDeleted: 530
begin_hunk_0_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  %.not86.i.i.i.i = icmp eq i32 %i.fe, 0
  %i.ff = and i32 %.sroa.0.0.copyload.i44.i.i.i.i, 960
  %.not87.i.i.i.i = icmp eq i32 %i.ff, 0
  %or.cond88.i.i.i.i = select i1 %.not86.i.i.i.i, i1 true, i1 %.not87.i.i.i.i
  %.sroa.012.0.i.i.i.i = select i1 %or.cond88.i.i.i.i, i32 458784, i32 458848 ; 2 uses
  %i.fg = call noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %.sroa.0.0.copyload.i.i.i57.i.i) #8
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread.i.i.i.i
  %i.fh = call noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %.sroa.0.0.copyload.i44.i.i.i.i) #8
  %.not.i.i58.i.i = xor i1 %i.fh, true
  %i.fi = and i32 %.sroa.0.0.copyload.i.i.i57.i.i, 16
end_hunk_0
begin_hunk_1_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %or.cond85.i.i.i.i, label %bb.al, label %.sink.split.i.i.i.i

bb.al:                                            ; preds = %bb.ak, %.thread.i.i.i.i
  %6 = or i32 %.sroa.012.0.i.i.i.i, 458768
  br label %.sink.split.i.i.i.i

bb.am:                                            ; preds = %bb.y, %bb.y, %bb.y
end_hunk_1
