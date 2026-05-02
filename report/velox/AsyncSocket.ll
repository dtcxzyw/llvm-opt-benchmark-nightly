inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket20invokeConnectSuccessEv:bb.a
  resume { ptr, i32 } %i.ac

.lr.ph:                                           ; preds = %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit, %.lr.ph
  %.02338 = phi i1 [ %5, %.lr.ph ], [ false, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ]
  %.02437 = phi ptr [ %i.ak, %.lr.ph ], [ %i.z, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.02437, align 8, !tbaa !14208 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZN5folly11AsyncSocket20invokeConnectSuccessEv:bb.a
  %i.ah = load ptr, ptr %.02437, align 8, !tbaa !14208
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !14356, !range !13961, !noundef !149
  %4 = trunc nuw i8 %i.aj to i1
  %5 = or i1 %.02338, %4                          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02437, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.ab
  br i1 %.not, label %_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i, label %.lr.ph

_ZN5folly8FunctionIFvPNS_28AsyncSocketObserverInterfaceEPNS_11AsyncSocketEEEC2EOS6_.exit.i.i.i: ; preds = %.lr.ph, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit
  %.023.lcssa = phi i1 [ false, %_ZN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS9_EERSA_OT_.exit ], [ %5, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14214
end_hunk_1
