inline.NumInlined: 2716
inline.NumDeleted: 953
begin_hunk_0_@_ZN2v88internal3Map18GetObjectCreateMapEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.fo = load atomic volatile i32, ptr %i.fj monotonic, align 4
  %i.fp = load atomic volatile i32, ptr %i.fj monotonic, align 4
  %i.fq = and i32 %i.fo, -536870912               ; 2 uses
  %2 = or i32 %i.fp, -536870912
  %i.fr = add i32 %2, %i.fq
  store atomic volatile i32 %i.fr, ptr %i.fj monotonic, align 4
  %i.fs = icmp eq i32 %i.fq, 536870912
  br i1 %i.fs, label %bb.x, label %_ZN2v88internal3Map40TransitionRootMapToPrototypeForNewObjectEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE.exit

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_ZN2v88internal3Map40TransitionRootMapToPrototypeForNewObjectEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.z = load atomic volatile i32, ptr %i.u monotonic, align 4
  %i.aa = load atomic volatile i32, ptr %i.u monotonic, align 4
  %i.ab = and i32 %i.z, -536870912                ; 2 uses
  %3 = or i32 %i.aa, -536870912
  %i.ac = add i32 %3, %i.ab
  store atomic volatile i32 %i.ac, ptr %i.u monotonic, align 4
  %i.ad = icmp eq i32 %i.ab, 536870912
  br i1 %i.ad, label %bb.f, label %_ZN2v88internal3Map25InobjectSlackTrackingStepEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN2v88internal3Map13GetDerivedMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10JSReceiverEEE:bb.a
bb.s:                                             ; preds = %bb.r
  %i.dn = load atomic volatile i32, ptr %i.di monotonic, align 4
  %i.do = load atomic volatile i32, ptr %i.di monotonic, align 4
  %i.dp = and i32 %i.dn, -536870912               ; 2 uses
  %4 = or i32 %i.do, -536870912
  %i.dq = add i32 %4, %i.dp
  store atomic volatile i32 %i.dq, ptr %i.di monotonic, align 4
  %i.dr = icmp eq i32 %i.dp, 536870912
  br i1 %i.dr, label %bb.t, label %_ZN2v88internal3Map40TransitionRootMapToPrototypeForNewObjectEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE.exit

bb.t:                                             ; preds = %bb.s
end_hunk_2
