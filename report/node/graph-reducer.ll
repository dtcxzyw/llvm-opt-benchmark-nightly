inline.NumInlined: 623
inline.NumDeleted: 364
begin_hunk_0_@_ZN2v88internal8compiler12GraphReducer6ReduceEPNS1_4NodeE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit
  %4 = phi ptr [ %i.b, %.lr.ph.lr.ph ], [ %i.ck, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ]
  %.015.ph73 = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %i.cj, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ]
  %.016.ph72 = phi ptr [ %i.b, %.lr.ph.lr.ph ], [ %.01568, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ] ; 2 uses
  %.sroa.043.0.ph71 = phi ptr [ undef, %.lr.ph.lr.ph ], [ %.sroa.043.1, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %i.p = phi ptr [ %4, %.lr.ph ], [ %i.eq, %bb.af ]
  %.01568 = phi ptr [ %.015.ph73, %.lr.ph ], [ %i.er, %bb.af ] ; 7 uses
  %.not18 = icmp eq ptr %.01568, %.016.ph72
  br i1 %.not18, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler12GraphReducer6ReduceEPNS1_4NodeE:bb.a
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit: ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, %bb.j, %bb.g, %bb.h, %bb.i
  %.sroa.043.2 = phi ptr [ %.sroa.043.0.ph71, %bb.h ], [ %.sroa.043.0.ph71, %bb.g ], [ %.sroa.043.0.ph71, %bb.i ], [ %i.ar, %bb.j ], [ %i.ar, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i ] ; 5 uses
  %.sroa.545.0 = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.j ], [ true, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler12GraphReducer6ReduceEPNS1_4NodeE:bb.a
  br i1 %.sroa.545.0, label %bb.q, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.043.2, i64 9
  %i.ch = cmpxchg weak ptr %i.cg, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ci = extractvalue { i8, i1 } %i.ch, 1
  br i1 %i.ci, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %.sroa.043.2) #18
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit: ; preds = %bb.r, %bb.q, %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.f
  %.sroa.043.1 = phi ptr [ %.sroa.043.0.ph71, %bb.f ], [ %.sroa.043.2, %_ZN2v88internal12StdoutStreamD1Ev.exit ], [ %.sroa.043.2, %bb.q ], [ %.sroa.043.2, %bb.r ]
  %i.cj = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ck = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not67 = icmp eq ptr %i.cj, %i.ck
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler12GraphReducer6ReduceEPNS1_4NodeE:bb.a

.critedge:                                        ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, %bb.af, %bb.a
  %i.es = phi ptr [ %i.eq, %bb.af ], [ %i.b, %bb.a ], [ %i.cj, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ]
  %.016.ph.lcssa66 = phi ptr [ %.016.ph72, %bb.af ], [ %i.b, %bb.a ], [ %.01568, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit ]
  %i.et = icmp eq ptr %.016.ph.lcssa66, %i.es
  %spec.select = select i1 %i.et, ptr null, ptr %1
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit31
end_hunk_3
