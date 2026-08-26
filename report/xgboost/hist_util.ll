Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hist_util?download=true
inline.NumInlined: 2975
inline.NumDeleted: 854
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_:bb.a
  %2 = alloca %class.anon.146, align 8            ; 5 uses
  %3 = alloca %class.anon.146, align 8            ; 5 uses
  %4 = alloca %class.anon.144, align 8            ; 5 uses
  %5 = alloca %class.anon.142, align 8            ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.k [
    i8 1, label %bb.b
    i8 2, label %bb.e
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !399, !nonnull !61 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !401, !nonnull !61, !align !67 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.e, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %i.a, ptr %5, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5), !inline_history !402
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.k, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.m), !inline_history !402
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !399, !nonnull !61 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !401, !nonnull !61, !align !67 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !51    ; 2 uses
  %.not.i8 = icmp eq i8 %i.r, 2
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.n, ptr %4, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !403
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i9 = load i64, ptr %i.t, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.22.0.copyload.i.i11 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i10, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %i.v, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i.i14 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i13, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i9, ptr %.sroa.22.0.copyload.i.i11, i64 %.sroa.0.0.copyload.i.i12, ptr %.sroa.2.0.copyload.i.i14, ptr noundef nonnull align 8 dereferenceable(225) %i.x, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.z), !inline_history !403
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !399, !nonnull !61 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !401, !nonnull !61, !align !67 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51  ; 2 uses
  %.not.i17 = icmp eq i8 %i.ae, 4
  br i1 %.not.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.aa, ptr %3, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !404
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i18 = load i64, ptr %i.ag, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.22.0.copyload.i.i20 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i19, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.ai, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i22, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i18, ptr %.sroa.22.0.copyload.i.i20, i64 %.sroa.0.0.copyload.i.i21, ptr %.sroa.2.0.copyload.i.i23, ptr noundef nonnull align 8 dereferenceable(225) %i.ak, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.am), !inline_history !404
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.an = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.an, ptr noundef nonnull @.str.46, i32 noundef 223)
  %i.ao = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.aq = load ptr, ptr %1, align 8, !tbaa !399, !nonnull !61 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !401, !nonnull !61, !align !67 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !51  ; 2 uses
  %.not.i26 = icmp eq i8 %i.au, 4
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.aq, ptr %2, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.as, ptr %i.av, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !404
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %i.aw, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.22.0.copyload.i.i29 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i28, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i30 = load i64, ptr %i.ay, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i32 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !74, !nonnull !61, !align !67
  call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i27, ptr %.sroa.22.0.copyload.i.i29, i64 %.sroa.0.0.copyload.i.i30, ptr %.sroa.2.0.copyload.i.i32, ptr noundef nonnull align 8 dereferenceable(225) %i.ba, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.bc), !inline_history !404
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.n:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.bd

_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = add nsw i64 %i.l, -1                     ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407  ; 4 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = add nsw i64 %i.l, -2                     ; 2 uses
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.v = and i64 %i.r, 32
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068116.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0111115.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.w = add nuw i64 %.068116.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.epil
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0111115.epil.init, i64 %i.ac)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph126, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ah = ptrtoint ptr %i.af to i64
  br label %.lr.ph126

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068116 = phi i64 [ 0, %.lr.ph.new ], [ %i.ap, %bb.b ] ; 3 uses
  %.0111115 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ai = or disjoint i64 %.068116, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ai)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = sub i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0111115, i64 %i.ao)
  %i.ap = add nuw i64 %.068116, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ap)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ai
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = sub i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.av) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !410

.lr.ph126:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc75 ] ; 16 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !83  ; 4 uses
  %.not129 = icmp eq i64 %2, 0
  br i1 %.not129, label %.lr.ph126.split, label %.lr.ph126.split.us

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph126 ] ; 3 uses
  %.071125.us = phi i64 [ %i.ay, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 6 uses
  %umin185 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m) ; 2 uses
  %i.ax = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ax, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m)
  %i.ay = add nuw i64 %.071125.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ay)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !129 ; 5 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = sub nsw i64 %i.be, %i.bb                ; 2 uses
  %i.bg = shl nsw i64 %i.bf, 1                    ; 4 uses
  %i.bh = icmp eq i32 %i.bd, %i.ba                ; 2 uses
  br i1 %i.bh, label %.lr.ph118.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph126.split.us
  %.idx.i.i.us = shl nsw i64 %i.bf, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph118.us.preheader

.lr.ph118.us.preheader:                           ; preds = %.lr.ph126.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter186 = and i64 %umin185, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.bi = or disjoint i64 %.071125.us, 1          ; 2 uses
  %i.bj = icmp eq i64 %umin185, %.neg
  br label %.lr.ph118.us

.lr.ph118.us:                                     ; preds = %.lr.ph118.us.preheader, %._crit_edge.us
  %.073119.us = phi i64 [ %i.df, %._crit_edge.us ], [ 0, %.lr.ph118.us.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073119.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !68 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.c, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bq = sub i64 %i.bp, %i.bn                    ; 3 uses
  %.idx114.us = shl i64 %i.bl, 3
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx114.us
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !349
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn ; 3 uses
  %i.bu = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  br i1 %lcmp.mod187.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118.us
  %i.bv = icmp ult i64 %.071125.us, %i.bq
  br i1 %i.bv, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.071125.us
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !129
  %i.by = sub i32 %i.bx, %i.ba
  %i.bz = shl i32 %i.by, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.ca ; 2 uses
  %i.cc = load <2 x double>, ptr %i.cb, align 8, !tbaa !255
  %i.cd = fadd <2 x double> %i.cc, %i.bu
  store <2 x double> %i.cd, ptr %i.cb, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph118.us
  %.072117.us.unr = phi i64 [ %.071125.us, %.lr.ph118.us ], [ %i.bi, %bb.c ], [ %i.bi, %.prol.preheader ]
  br i1 %i.bj, label %._crit_edge.us, label %.lr.ph118.us.new

.lr.ph118.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072117.us = phi i64 [ %i.cx, %bb.g ], [ %.072117.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ce = icmp ult i64 %.072117.us, %i.bq
  br i1 %i.ce, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph118.us.new
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.072117.us
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !129
  %i.ch = sub i32 %i.cg, %i.ba
  %i.ci = shl i32 %i.ch, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cj ; 2 uses
  %i.cl = load <2 x double>, ptr %i.ck, align 8, !tbaa !255
  %i.cm = fadd <2 x double> %i.cl, %i.bu
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph118.us.new
  %i.cn = add nuw i64 %.072117.us, 1              ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.bq
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129
  %i.cr = sub i32 %i.cq, %i.ba
  %i.cs = shl i32 %i.cr, 1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.ct ; 2 uses
  %i.cv = load <2 x double>, ptr %i.cu, align 8, !tbaa !255
  %i.cw = fadd <2 x double> %i.cv, %i.bu
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cx = add nuw i64 %.072117.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph118.us.new, !llvm.loop !411

.lr.ph124.us:                                     ; preds = %.lr.ph124.us.preheader181, %.lr.ph124.us
  %.0122.us = phi i64 [ %i.dd, %.lr.ph124.us ], [ %.0122.us.ph, %.lr.ph124.us.preheader181 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122.us
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !255
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0122.us ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd double %i.cz, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !255
  %i.dd = add nuw i64 %.0122.us, 1                ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dd, %i.bg
  br i1 %exitcond134.not, label %.loopexit.us, label %.lr.ph124.us, !llvm.loop !412

.loopexit.us:                                     ; preds = %.lr.ph124.us, %middle.block, %._crit_edge121.split.us
  %i.de = icmp ult i64 %i.ay, %i.m
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.de, label %.lr.ph126.split.us, label %._crit_edge127, !llvm.loop !413

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.df = add nuw i64 %.073119.us, 1              ; 2 uses
  %exitcond133.not = icmp eq i64 %i.df, %2
  br i1 %exitcond133.not, label %._crit_edge121.split.us, label %.lr.ph118.us, !llvm.loop !414

._crit_edge121.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bb, 4             ; 2 uses
  %i.dg = getelementptr i8, ptr %i.o, i64 %.idx.us ; 3 uses
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph124.us.preheader

.lr.ph124.us.preheader:                           ; preds = %._crit_edge121.split.us
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph124.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.us.preheader
  %i.dh = shl nuw nsw i64 %i.be, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.dh
  %i.di = sub nsw i64 %i.dh, %.idx.us
  %scevgep156 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.di
  %bound0 = icmp ult ptr %i.dg, %scevgep156
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <2 x double>, ptr %i.dj, align 8, !tbaa !255, !alias.scope !415
  %wide.load157 = load <2 x double>, ptr %i.dk, align 8, !tbaa !255, !alias.scope !415
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.dl, align 8, !tbaa !255, !alias.scope !418, !noalias !415
  %wide.load159 = load <2 x double>, ptr %i.dm, align 8, !tbaa !255, !alias.scope !418, !noalias !415
  %i.dn = fadd <2 x double> %wide.load, %wide.load158
  %i.do = fadd <2 x double> %wide.load157, %wide.load159
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !255, !alias.scope !418, !noalias !415
  store <2 x double> %i.do, ptr %i.dm, align 8, !tbaa !255, !alias.scope !418, !noalias !415
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !420

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph124.us.preheader181

.lr.ph124.us.preheader181:                        ; preds = %vector.memcheck, %.lr.ph124.us.preheader, %middle.block
  %.0122.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph124.us

.loopexit:                                        ; preds = %.lr.ph124, %middle.block177, %.lr.ph126.split
  %i.dq = icmp ult i64 %i.dt, %i.m
  br i1 %i.dq, label %.lr.ph126.split, label %._crit_edge127, !llvm.loop !413

._crit_edge127:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge127
  %i.dr = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.ds = sub i64 %.sroa.10.0.ph, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.ds) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge127, %bb.h
  ret void

.lr.ph126.split:                                  ; preds = %.lr.ph126, %.loopexit
  %.071125 = phi i64 [ %i.dt, %.loopexit ], [ 0, %.lr.ph126 ] ; 2 uses
  %i.dt = add nuw i64 %.071125, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.dt)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !129 ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = sub nsw i64 %i.dz, %i.dw                ; 2 uses
  %i.eb = shl nsw i64 %i.ea, 1                    ; 4 uses
  %i.ec = icmp eq i32 %i.dy, %i.dv
  br i1 %i.ec, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.lr.ph126.split
  %.idx.i.i = shl nsw i64 %i.ea, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.dw, 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 3 uses
  %min.iters.check167 = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check167, label %.lr.ph124.preheader180, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph124.preheader
  %i.ee = shl nuw nsw i64 %i.dz, 4
  %scevgep161 = getelementptr i8, ptr %i.o, i64 %i.ee
  %scevgep162 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0163 = icmp ult ptr %i.ed, %scevgep162
  %bound1164 = icmp ult ptr %.sroa.083.0.ph, %scevgep161
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph124.preheader180, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck160
  %n.vec169 = and i64 %i.eb, -4                   ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index171 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load172 = load <2 x double>, ptr %i.ef, align 8, !tbaa !255, !alias.scope !421
  %wide.load173 = load <2 x double>, ptr %i.eg, align 8, !tbaa !255, !alias.scope !421
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index171 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.eh, align 8, !tbaa !255, !alias.scope !424, !noalias !421
  %wide.load175 = load <2 x double>, ptr %i.ei, align 8, !tbaa !255, !alias.scope !424, !noalias !421
  %i.ej = fadd <2 x double> %wide.load172, %wide.load174
  %i.ek = fadd <2 x double> %wide.load173, %wide.load175
  store <2 x double> %i.ej, ptr %i.eh, align 8, !tbaa !255, !alias.scope !424, !noalias !421
  store <2 x double> %i.ek, ptr %i.ei, align 8, !tbaa !255, !alias.scope !424, !noalias !421
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.el, label %middle.block177, label %vector.body170, !llvm.loop !426

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.eb, %n.vec169
  br i1 %cmp.n178, label %.loopexit, label %.lr.ph124.preheader180

.lr.ph124.preheader180:                           ; preds = %vector.memcheck160, %.lr.ph124.preheader, %middle.block177
  %.0122.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.lr.ph124.preheader ], [ %n.vec169, %middle.block177 ]
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader180, %.lr.ph124
  %.0122 = phi i64 [ %i.er, %.lr.ph124 ], [ %.0122.ph, %.lr.ph124.preheader180 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122
  %i.en = load double, ptr %i.em, align 8, !tbaa !255
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.0122 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !255
  %i.eq = fadd double %i.en, %i.ep
  store double %i.eq, ptr %i.eo, align 8, !tbaa !255
  %i.er = add nuw i64 %.0122, 1                   ; 2 uses
  %exitcond136.not = icmp eq i64 %i.er, %i.eb
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph124, !llvm.loop !427
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = add nsw i64 %i.l, -1                     ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407  ; 4 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = add nsw i64 %i.l, -2                     ; 2 uses
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.v = and i64 %i.r, 32
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068116.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0111115.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.w = add nuw i64 %.068116.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.epil
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0111115.epil.init, i64 %i.ac)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph126, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ah = ptrtoint ptr %i.af to i64
  br label %.lr.ph126

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068116 = phi i64 [ 0, %.lr.ph.new ], [ %i.ap, %bb.b ] ; 3 uses
  %.0111115 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ai = or disjoint i64 %.068116, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ai)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = sub i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0111115, i64 %i.ao)
  %i.ap = add nuw i64 %.068116, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ap)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ai
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = sub i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.av) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !428

.lr.ph126:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc75 ] ; 16 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !83  ; 4 uses
  %.not129 = icmp eq i64 %2, 0
  br i1 %.not129, label %.lr.ph126.split, label %.lr.ph126.split.us

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph126 ] ; 3 uses
  %.071125.us = phi i64 [ %i.ay, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 6 uses
  %umin185 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m) ; 2 uses
  %i.ax = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ax, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m)
  %i.ay = add nuw i64 %.071125.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ay)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !129 ; 5 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = sub nsw i64 %i.be, %i.bb                ; 2 uses
  %i.bg = shl nsw i64 %i.bf, 1                    ; 4 uses
  %i.bh = icmp eq i32 %i.bd, %i.ba                ; 2 uses
  br i1 %i.bh, label %.lr.ph118.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph126.split.us
  %.idx.i.i.us = shl nsw i64 %i.bf, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph118.us.preheader

.lr.ph118.us.preheader:                           ; preds = %.lr.ph126.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter186 = and i64 %umin185, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.bi = or disjoint i64 %.071125.us, 1          ; 2 uses
  %i.bj = icmp eq i64 %umin185, %.neg
  br label %.lr.ph118.us

.lr.ph118.us:                                     ; preds = %.lr.ph118.us.preheader, %._crit_edge.us
  %.073119.us = phi i64 [ %i.di, %._crit_edge.us ], [ 0, %.lr.ph118.us.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073119.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !68 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.c, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bq = sub i64 %i.bp, %i.bn                    ; 3 uses
  %.idx114.us = shl i64 %i.bl, 3
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx114.us
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !349
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bn ; 3 uses
  %i.bu = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  br i1 %lcmp.mod187.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118.us
  %i.bv = icmp ult i64 %.071125.us, %i.bq
  br i1 %i.bv, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %.071125.us
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !429
  %i.by = zext i16 %i.bx to i32
  %i.bz = sub i32 %i.by, %i.ba
  %i.ca = shl i32 %i.bz, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cb ; 2 uses
  %i.cd = load <2 x double>, ptr %i.cc, align 8, !tbaa !255
  %i.ce = fadd <2 x double> %i.cd, %i.bu
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph118.us
  %.072117.us.unr = phi i64 [ %.071125.us, %.lr.ph118.us ], [ %i.bi, %bb.c ], [ %i.bi, %.prol.preheader ]
  br i1 %i.bj, label %._crit_edge.us, label %.lr.ph118.us.new

.lr.ph118.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072117.us = phi i64 [ %i.da, %bb.g ], [ %.072117.us.unr, %.prol.loopexit ] ; 4 uses
  %i.cf = icmp ult i64 %.072117.us, %i.bq
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph118.us.new
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %.072117.us
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !429
  %i.ci = zext i16 %i.ch to i32
  %i.cj = sub i32 %i.ci, %i.ba
  %i.ck = shl i32 %i.cj, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cl ; 2 uses
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !255
  %i.co = fadd <2 x double> %i.cn, %i.bu
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph118.us.new
  %i.cp = add nuw i64 %.072117.us, 1              ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.bq
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.cp
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !429
  %i.ct = zext i16 %i.cs to i32
  %i.cu = sub i32 %i.ct, %i.ba
  %i.cv = shl i32 %i.cu, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cw ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !255
  %i.cz = fadd <2 x double> %i.cy, %i.bu
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.da = add nuw i64 %.072117.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph118.us.new, !llvm.loop !431

.lr.ph124.us:                                     ; preds = %.lr.ph124.us.preheader181, %.lr.ph124.us
  %.0122.us = phi i64 [ %i.dg, %.lr.ph124.us ], [ %.0122.us.ph, %.lr.ph124.us.preheader181 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !255
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0122.us ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.0122.us, 1                ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dg, %i.bg
  br i1 %exitcond134.not, label %.loopexit.us, label %.lr.ph124.us, !llvm.loop !432

.loopexit.us:                                     ; preds = %.lr.ph124.us, %middle.block, %._crit_edge121.split.us
  %i.dh = icmp ult i64 %i.ay, %i.m
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %.lr.ph126.split.us, label %._crit_edge127, !llvm.loop !433

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.di = add nuw i64 %.073119.us, 1              ; 2 uses
  %exitcond133.not = icmp eq i64 %i.di, %2
  br i1 %exitcond133.not, label %._crit_edge121.split.us, label %.lr.ph118.us, !llvm.loop !434

._crit_edge121.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bb, 4             ; 2 uses
  %i.dj = getelementptr i8, ptr %i.o, i64 %.idx.us ; 3 uses
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph124.us.preheader

.lr.ph124.us.preheader:                           ; preds = %._crit_edge121.split.us
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph124.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.us.preheader
  %i.dk = shl nuw nsw i64 %i.be, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.dk
  %i.dl = sub nsw i64 %i.dk, %.idx.us
  %scevgep156 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.dl
  %bound0 = icmp ult ptr %i.dj, %scevgep156
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !255, !alias.scope !435
  %wide.load157 = load <2 x double>, ptr %i.dn, align 8, !tbaa !255, !alias.scope !435
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.do, align 8, !tbaa !255, !alias.scope !438, !noalias !435
  %wide.load159 = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !438, !noalias !435
  %i.dq = fadd <2 x double> %wide.load, %wide.load158
  %i.dr = fadd <2 x double> %wide.load157, %wide.load159
  store <2 x double> %i.dq, ptr %i.do, align 8, !tbaa !255, !alias.scope !438, !noalias !435
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !255, !alias.scope !438, !noalias !435
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph124.us.preheader181

.lr.ph124.us.preheader181:                        ; preds = %vector.memcheck, %.lr.ph124.us.preheader, %middle.block
  %.0122.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph124.us

.loopexit:                                        ; preds = %.lr.ph124, %middle.block177, %.lr.ph126.split
  %i.dt = icmp ult i64 %i.dw, %i.m
  br i1 %i.dt, label %.lr.ph126.split, label %._crit_edge127, !llvm.loop !433

._crit_edge127:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge127
  %i.du = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.dv = sub i64 %.sroa.10.0.ph, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge127, %bb.h
  ret void

.lr.ph126.split:                                  ; preds = %.lr.ph126, %.loopexit
  %.071125 = phi i64 [ %i.dw, %.loopexit ], [ 0, %.lr.ph126 ] ; 2 uses
  %i.dw = add nuw i64 %.071125, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.dw)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = sub nsw i64 %i.ec, %i.dz                ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 1                    ; 4 uses
  %i.ef = icmp eq i32 %i.eb, %i.dy
  br i1 %i.ef, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.lr.ph126.split
  %.idx.i.i = shl nsw i64 %i.ed, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 3 uses
  %min.iters.check167 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check167, label %.lr.ph124.preheader180, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph124.preheader
  %i.eh = shl nuw nsw i64 %i.ec, 4
  %scevgep161 = getelementptr i8, ptr %i.o, i64 %i.eh
  %scevgep162 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0163 = icmp ult ptr %i.eg, %scevgep162
  %bound1164 = icmp ult ptr %.sroa.083.0.ph, %scevgep161
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph124.preheader180, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck160
  %n.vec169 = and i64 %i.ee, -4                   ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index171 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load172 = load <2 x double>, ptr %i.ei, align 8, !tbaa !255, !alias.scope !441
  %wide.load173 = load <2 x double>, ptr %i.ej, align 8, !tbaa !255, !alias.scope !441
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index171 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.ek, align 8, !tbaa !255, !alias.scope !444, !noalias !441
  %wide.load175 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !444, !noalias !441
  %i.em = fadd <2 x double> %wide.load172, %wide.load174
  %i.en = fadd <2 x double> %wide.load173, %wide.load175
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !255, !alias.scope !444, !noalias !441
  store <2 x double> %i.en, ptr %i.el, align 8, !tbaa !255, !alias.scope !444, !noalias !441
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.eo, label %middle.block177, label %vector.body170, !llvm.loop !446

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.ee, %n.vec169
  br i1 %cmp.n178, label %.loopexit, label %.lr.ph124.preheader180

.lr.ph124.preheader180:                           ; preds = %vector.memcheck160, %.lr.ph124.preheader, %middle.block177
  %.0122.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.lr.ph124.preheader ], [ %n.vec169, %middle.block177 ]
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader180, %.lr.ph124
  %.0122 = phi i64 [ %i.eu, %.lr.ph124 ], [ %.0122.ph, %.lr.ph124.preheader180 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.0122 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !255
  %i.et = fadd double %i.eq, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !255
  %i.eu = add nuw i64 %.0122, 1                   ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eu, %i.ee
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph124, !llvm.loop !447
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = add nsw i64 %i.l, -1                     ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407  ; 4 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = add nsw i64 %i.l, -2                     ; 2 uses
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.v = and i64 %i.r, 32
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068116.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0111115.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.w = add nuw i64 %.068116.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.epil
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = sub i32 %i.y, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0111115.epil.init, i64 %i.ac)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph126, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !255
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ah = ptrtoint ptr %i.af to i64
  br label %.lr.ph126

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068116 = phi i64 [ 0, %.lr.ph.new ], [ %i.ap, %bb.b ] ; 3 uses
  %.0111115 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ai = or disjoint i64 %.068116, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ai)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.068116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = sub i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0111115, i64 %i.ao)
  %i.ap = add nuw i64 %.068116, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ap)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.speculated95.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ai
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = sub i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.av) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !448

.lr.ph126:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ae, %.noexc75 ] ; 16 uses
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !83  ; 4 uses
  %.not129 = icmp eq i64 %2, 0
  br i1 %.not129, label %.lr.ph126.split, label %.lr.ph126.split.us

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph126 ] ; 3 uses
  %.071125.us = phi i64 [ %i.ay, %.loopexit.us ], [ 0, %.lr.ph126 ] ; 6 uses
  %umin185 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m) ; 2 uses
  %i.ax = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ax, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.m)
  %i.ay = add nuw i64 %.071125.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.ay)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !129 ; 5 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = sub nsw i64 %i.be, %i.bb                ; 2 uses
  %i.bg = shl nsw i64 %i.bf, 1                    ; 4 uses
  %i.bh = icmp eq i32 %i.bd, %i.ba                ; 2 uses
  br i1 %i.bh, label %.lr.ph118.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph126.split.us
  %.idx.i.i.us = shl nsw i64 %i.bf, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph118.us.preheader

.lr.ph118.us.preheader:                           ; preds = %.lr.ph126.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter186 = and i64 %umin185, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.bi = or disjoint i64 %.071125.us, 1          ; 2 uses
  %i.bj = icmp eq i64 %umin185, %.neg
  br label %.lr.ph118.us

.lr.ph118.us:                                     ; preds = %.lr.ph118.us.preheader, %._crit_edge.us
  %.073119.us = phi i64 [ %i.di, %._crit_edge.us ], [ 0, %.lr.ph118.us.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073119.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !68 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.c, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bq = sub i64 %i.bp, %i.bn                    ; 3 uses
  %.idx114.us = shl i64 %i.bl, 3
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx114.us
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !349
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bn ; 3 uses
  %i.bu = fpext <2 x float> %i.bs to <2 x double> ; 3 uses
  br i1 %lcmp.mod187.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118.us
  %i.bv = icmp ult i64 %.071125.us, %i.bq
  br i1 %i.bv, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.071125.us
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !93
  %i.by = zext i8 %i.bx to i32
  %i.bz = sub i32 %i.by, %i.ba
  %i.ca = shl i32 %i.bz, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cb ; 2 uses
  %i.cd = load <2 x double>, ptr %i.cc, align 8, !tbaa !255
  %i.ce = fadd <2 x double> %i.cd, %i.bu
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph118.us
  %.072117.us.unr = phi i64 [ %.071125.us, %.lr.ph118.us ], [ %i.bi, %bb.c ], [ %i.bi, %.prol.preheader ]
  br i1 %i.bj, label %._crit_edge.us, label %.lr.ph118.us.new

.lr.ph118.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072117.us = phi i64 [ %i.da, %bb.g ], [ %.072117.us.unr, %.prol.loopexit ] ; 4 uses
  %i.cf = icmp ult i64 %.072117.us, %i.bq
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph118.us.new
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.072117.us
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !93
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub i32 %i.ci, %i.ba
  %i.ck = shl i32 %i.cj, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cl ; 2 uses
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !255
  %i.co = fadd <2 x double> %i.cn, %i.bu
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph118.us.new
  %i.cp = add nuw i64 %.072117.us, 1              ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.bq
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !93
  %i.ct = zext i8 %i.cs to i32
  %i.cu = sub i32 %i.ct, %i.ba
  %i.cv = shl i32 %i.cu, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cw ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !255
  %i.cz = fadd <2 x double> %i.cy, %i.bu
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.da = add nuw i64 %.072117.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph118.us.new, !llvm.loop !449

.lr.ph124.us:                                     ; preds = %.lr.ph124.us.preheader181, %.lr.ph124.us
  %.0122.us = phi i64 [ %i.dg, %.lr.ph124.us ], [ %.0122.us.ph, %.lr.ph124.us.preheader181 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !255
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0122.us ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.0122.us, 1                ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dg, %i.bg
  br i1 %exitcond134.not, label %.loopexit.us, label %.lr.ph124.us, !llvm.loop !450

.loopexit.us:                                     ; preds = %.lr.ph124.us, %middle.block, %._crit_edge121.split.us
  %i.dh = icmp ult i64 %i.ay, %i.m
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %.lr.ph126.split.us, label %._crit_edge127, !llvm.loop !451

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.di = add nuw i64 %.073119.us, 1              ; 2 uses
  %exitcond133.not = icmp eq i64 %i.di, %2
  br i1 %exitcond133.not, label %._crit_edge121.split.us, label %.lr.ph118.us, !llvm.loop !452

._crit_edge121.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bb, 4             ; 2 uses
  %i.dj = getelementptr i8, ptr %i.o, i64 %.idx.us ; 3 uses
  br i1 %i.bh, label %.loopexit.us, label %.lr.ph124.us.preheader

.lr.ph124.us.preheader:                           ; preds = %._crit_edge121.split.us
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph124.us.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.us.preheader
  %i.dk = shl nuw nsw i64 %i.be, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.dk
  %i.dl = sub nsw i64 %i.dk, %.idx.us
  %scevgep156 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.dl
  %bound0 = icmp ult ptr %i.dj, %scevgep156
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.us.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !255, !alias.scope !453
  %wide.load157 = load <2 x double>, ptr %i.dn, align 8, !tbaa !255, !alias.scope !453
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.do, align 8, !tbaa !255, !alias.scope !456, !noalias !453
  %wide.load159 = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !456, !noalias !453
  %i.dq = fadd <2 x double> %wide.load, %wide.load158
  %i.dr = fadd <2 x double> %wide.load157, %wide.load159
  store <2 x double> %i.dq, ptr %i.do, align 8, !tbaa !255, !alias.scope !456, !noalias !453
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !255, !alias.scope !456, !noalias !453
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph124.us.preheader181

.lr.ph124.us.preheader181:                        ; preds = %vector.memcheck, %.lr.ph124.us.preheader, %middle.block
  %.0122.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph124.us

.loopexit:                                        ; preds = %.lr.ph124, %middle.block177, %.lr.ph126.split
  %i.dt = icmp ult i64 %i.dw, %i.m
  br i1 %i.dt, label %.lr.ph126.split, label %._crit_edge127, !llvm.loop !451

._crit_edge127:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge127
  %i.du = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.dv = sub i64 %.sroa.10.0.ph, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge127, %bb.h
  ret void

.lr.ph126.split:                                  ; preds = %.lr.ph126, %.loopexit
  %.071125 = phi i64 [ %i.dw, %.loopexit ], [ 0, %.lr.ph126 ] ; 2 uses
  %i.dw = add nuw i64 %.071125, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.dw)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.071125
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.speculated
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = sub nsw i64 %i.ec, %i.dz                ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 1                    ; 4 uses
  %i.ef = icmp eq i32 %i.eb, %i.dy
  br i1 %i.ef, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.lr.ph126.split
  %.idx.i.i = shl nsw i64 %i.ed, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 3 uses
  %min.iters.check167 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check167, label %.lr.ph124.preheader180, label %vector.memcheck160

vector.memcheck160:                               ; preds = %.lr.ph124.preheader
  %i.eh = shl nuw nsw i64 %i.ec, 4
  %scevgep161 = getelementptr i8, ptr %i.o, i64 %i.eh
  %scevgep162 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0163 = icmp ult ptr %i.eg, %scevgep162
  %bound1164 = icmp ult ptr %.sroa.083.0.ph, %scevgep161
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph124.preheader180, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck160
  %n.vec169 = and i64 %i.ee, -4                   ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index171 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load172 = load <2 x double>, ptr %i.ei, align 8, !tbaa !255, !alias.scope !459
  %wide.load173 = load <2 x double>, ptr %i.ej, align 8, !tbaa !255, !alias.scope !459
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index171 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load174 = load <2 x double>, ptr %i.ek, align 8, !tbaa !255, !alias.scope !462, !noalias !459
  %wide.load175 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !462, !noalias !459
  %i.em = fadd <2 x double> %wide.load172, %wide.load174
  %i.en = fadd <2 x double> %wide.load173, %wide.load175
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !255, !alias.scope !462, !noalias !459
  store <2 x double> %i.en, ptr %i.el, align 8, !tbaa !255, !alias.scope !462, !noalias !459
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.eo, label %middle.block177, label %vector.body170, !llvm.loop !464

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.ee, %n.vec169
  br i1 %cmp.n178, label %.loopexit, label %.lr.ph124.preheader180

.lr.ph124.preheader180:                           ; preds = %vector.memcheck160, %.lr.ph124.preheader, %middle.block177
  %.0122.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.lr.ph124.preheader ], [ %n.vec169, %middle.block177 ]
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader180, %.lr.ph124
  %.0122 = phi i64 [ %i.eu, %.lr.ph124 ], [ %.0122.ph, %.lr.ph124.preheader180 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0122
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.0122 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !255
  %i.et = fadd double %i.eq, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !255
  %i.eu = add nuw i64 %.0122, 1                   ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eu, %i.ee
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph124, !llvm.loop !465
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.1", align 8 ; 4 uses
  %3 = alloca %class.anon.144, align 8            ; 5 uses
  %4 = alloca %class.anon.159, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !50, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51    ; 3 uses
  %.not.i = icmp eq i8 %i.e, 2                    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !466
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.k, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.m), !inline_history !466
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %0, ptr %4, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !68 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_:bb.a
  %i.k = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.m = load ptr, ptr %1, align 8, !tbaa !550, !nonnull !61
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !552, !nonnull !61, !align !67
  call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o), !inline_history !555
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.146, align 8            ; 5 uses
  %3 = alloca %class.anon.184, align 8            ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !48, !range !60, !noundef !61
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51    ; 3 uses
  %.not.i = icmp eq i8 %i.d, 4                    ; 2 uses
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !473
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.j, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.l), !inline_history !473
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.f:                                             ; preds = %.split
  %i.n = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73, !nonnull !61, !align !67
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb0ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.t)
  br label %_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !556, !nonnull !61
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c), !inline_history !559
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !556, !nonnull !61
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !558, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f), !inline_history !560
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !556, !nonnull !61
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !558, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i), !inline_history !561
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.j = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull @.str.46, i32 noundef 223)
  %i.k = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.m = load ptr, ptr %1, align 8, !tbaa !556, !nonnull !61
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !558, !nonnull !61, !align !67
  call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o), !inline_history !561
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb0ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = add nsw i64 %i.n, -1                     ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !407  ; 4 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 6 uses
  %i.t = add nsw i64 %i.n, -2                     ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.v, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.x = and i64 %i.t, 32
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068118.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0112117.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod186 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.y = add nuw i64 %.068118.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.y)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.epil
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !129
  %i.ad = sub i32 %i.aa, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0112117.epil.init, i64 %i.ae)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph128, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !255
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.af, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.aj = ptrtoint ptr %i.ah to i64
  br label %.lr.ph128

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068118 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 3 uses
  %.0112117 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ak = or disjoint i64 %.068118, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ak)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0112117, i64 %i.aq)
  %i.ar = add nuw i64 %.068118, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ar)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %i.aw = sub i32 %i.at, %i.av
  %i.ax = zext i32 %i.aw to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.ax) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !562

.lr.ph128:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aj, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc75 ] ; 16 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !83  ; 4 uses
  %.not131 = icmp eq i64 %2, 0
  br i1 %.not131, label %.lr.ph128.split, label %.lr.ph128.split.us

.lr.ph128.split.us:                               ; preds = %.lr.ph128, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph128 ] ; 3 uses
  %.071127.us = phi i64 [ %i.ba, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 6 uses
  %umin187 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o) ; 2 uses
  %i.az = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.az, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o)
  %i.ba = add nuw i64 %.071127.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129 ; 5 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !129 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %i.bd                ; 2 uses
  %i.bi = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bj = icmp eq i32 %i.bf, %i.bc                ; 2 uses
  br i1 %i.bj, label %.lr.ph120.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph128.split.us
  %.idx.i.i.us = shl nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph120.us.preheader

.lr.ph120.us.preheader:                           ; preds = %.lr.ph128.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter188 = and i64 %umin187, 1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %i.bk = or disjoint i64 %.071127.us, 1          ; 2 uses
  %i.bl = icmp eq i64 %umin187, %.neg
  br label %.lr.ph120.us

.lr.ph120.us:                                     ; preds = %.lr.ph120.us.preheader, %._crit_edge.us
  %.073121.us = phi i64 [ %i.di, %._crit_edge.us ], [ 0, %.lr.ph120.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073121.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = sub i64 %i.bn, %i.e
  %i.bp = getelementptr [8 x i8], ptr %i.c, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !68
  %i.bt = sub i64 %i.bs, %i.bq                    ; 3 uses
  %.idx116.us = shl i64 %i.bn, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.us
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !349
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq ; 3 uses
  %i.bx = fpext <2 x float> %i.bv to <2 x double> ; 3 uses
  br i1 %lcmp.mod189.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120.us
  %i.by = icmp ult i64 %.071127.us, %i.bt
  br i1 %i.by, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.071127.us
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !129
  %i.cb = sub i32 %i.ca, %i.bc
  %i.cc = shl i32 %i.cb, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cd ; 2 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 8, !tbaa !255
  %i.cg = fadd <2 x double> %i.cf, %i.bx
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph120.us
  %.072119.us.unr = phi i64 [ %.071127.us, %.lr.ph120.us ], [ %i.bk, %bb.c ], [ %i.bk, %.prol.preheader ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph120.us.new

.lr.ph120.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072119.us = phi i64 [ %i.da, %bb.g ], [ %.072119.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ch = icmp ult i64 %.072119.us, %i.bt
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph120.us.new
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.072119.us
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !129
  %i.ck = sub i32 %i.cj, %i.bc
  %i.cl = shl i32 %i.ck, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cm ; 2 uses
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !255
  %i.cp = fadd <2 x double> %i.co, %i.bx
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph120.us.new
  %i.cq = add nuw i64 %.072119.us, 1              ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.bt
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !129
  %i.cu = sub i32 %i.ct, %i.bc
  %i.cv = shl i32 %i.cu, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cw ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !255
  %i.cz = fadd <2 x double> %i.cy, %i.bx
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.da = add nuw i64 %.072119.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph120.us.new, !llvm.loop !563

.lr.ph126.us:                                     ; preds = %.lr.ph126.us.preheader183, %.lr.ph126.us
  %.0124.us = phi i64 [ %i.dg, %.lr.ph126.us ], [ %.0124.us.ph, %.lr.ph126.us.preheader183 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !255
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0124.us ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dg, %i.bi
  br i1 %exitcond136.not, label %.loopexit.us, label %.lr.ph126.us, !llvm.loop !564

.loopexit.us:                                     ; preds = %.lr.ph126.us, %middle.block, %._crit_edge123.split.us
  %i.dh = icmp ult i64 %i.ba, %i.o
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %.lr.ph128.split.us, label %._crit_edge129, !llvm.loop !565

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.di = add nuw i64 %.073121.us, 1              ; 2 uses
  %exitcond135.not = icmp eq i64 %i.di, %2
  br i1 %exitcond135.not, label %._crit_edge123.split.us, label %.lr.ph120.us, !llvm.loop !566

._crit_edge123.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bd, 4             ; 2 uses
  %i.dj = getelementptr i8, ptr %i.q, i64 %.idx.us ; 3 uses
  br i1 %i.bj, label %.loopexit.us, label %.lr.ph126.us.preheader

.lr.ph126.us.preheader:                           ; preds = %._crit_edge123.split.us
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph126.us.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph126.us.preheader
  %i.dk = shl nuw nsw i64 %i.bg, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.dk
  %i.dl = sub nsw i64 %i.dk, %.idx.us
  %scevgep158 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.dl
  %bound0 = icmp ult ptr %i.dj, %scevgep158
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph126.us.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !255, !alias.scope !567
  %wide.load159 = load <2 x double>, ptr %i.dn, align 8, !tbaa !255, !alias.scope !567
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load160 = load <2 x double>, ptr %i.do, align 8, !tbaa !255, !alias.scope !570, !noalias !567
  %wide.load161 = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !570, !noalias !567
  %i.dq = fadd <2 x double> %wide.load, %wide.load160
  %i.dr = fadd <2 x double> %wide.load159, %wide.load161
  store <2 x double> %i.dq, ptr %i.do, align 8, !tbaa !255, !alias.scope !570, !noalias !567
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !255, !alias.scope !570, !noalias !567
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph126.us.preheader183

.lr.ph126.us.preheader183:                        ; preds = %vector.memcheck, %.lr.ph126.us.preheader, %middle.block
  %.0124.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph126.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph126.us

.loopexit:                                        ; preds = %.lr.ph126, %middle.block179, %.lr.ph128.split
  %i.dt = icmp ult i64 %i.dw, %i.o
  br i1 %i.dt, label %.lr.ph128.split, label %._crit_edge129, !llvm.loop !565

._crit_edge129:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge129
  %i.du = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.dv = sub i64 %.sroa.10.0.ph, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge129, %bb.h
  ret void

.lr.ph128.split:                                  ; preds = %.lr.ph128, %.loopexit
  %.071127 = phi i64 [ %i.dw, %.loopexit ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.dw = add nuw i64 %.071127, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.dw)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = sub nsw i64 %i.ec, %i.dz                ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 1                    ; 4 uses
  %i.ef = icmp eq i32 %i.eb, %i.dy
  br i1 %i.ef, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %.lr.ph128.split
  %.idx.i.i = shl nsw i64 %i.ed, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check169, label %.lr.ph126.preheader182, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph126.preheader
  %i.eh = shl nuw nsw i64 %i.ec, 4
  %scevgep163 = getelementptr i8, ptr %i.q, i64 %i.eh
  %scevgep164 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0165 = icmp ult ptr %i.eg, %scevgep164
  %bound1166 = icmp ult ptr %.sroa.083.0.ph, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %.lr.ph126.preheader182, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck162
  %n.vec171 = and i64 %i.ee, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index173 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load174 = load <2 x double>, ptr %i.ei, align 8, !tbaa !255, !alias.scope !573
  %wide.load175 = load <2 x double>, ptr %i.ej, align 8, !tbaa !255, !alias.scope !573
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index173 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.ek, align 8, !tbaa !255, !alias.scope !576, !noalias !573
  %wide.load177 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !576, !noalias !573
  %i.em = fadd <2 x double> %wide.load174, %wide.load176
  %i.en = fadd <2 x double> %wide.load175, %wide.load177
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !255, !alias.scope !576, !noalias !573
  store <2 x double> %i.en, ptr %i.el, align 8, !tbaa !255, !alias.scope !576, !noalias !573
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.eo, label %middle.block179, label %vector.body172, !llvm.loop !578

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.ee, %n.vec171
  br i1 %cmp.n180, label %.loopexit, label %.lr.ph126.preheader182

.lr.ph126.preheader182:                           ; preds = %vector.memcheck162, %.lr.ph126.preheader, %middle.block179
  %.0124.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph126.preheader ], [ %n.vec171, %middle.block179 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader182, %.lr.ph126
  %.0124 = phi i64 [ %i.eu, %.lr.ph126 ], [ %.0124.ph, %.lr.ph126.preheader182 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.0124 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !255
  %i.et = fadd double %i.eq, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !255
  %i.eu = add nuw i64 %.0124, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.eu, %i.ee
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph126, !llvm.loop !579
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb0ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = add nsw i64 %i.n, -1                     ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !407  ; 4 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 6 uses
  %i.t = add nsw i64 %i.n, -2                     ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.v, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.x = and i64 %i.t, 32
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068118.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0112117.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod186 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.y = add nuw i64 %.068118.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.y)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.epil
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !129
  %i.ad = sub i32 %i.aa, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0112117.epil.init, i64 %i.ae)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph128, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !255
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.af, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.aj = ptrtoint ptr %i.ah to i64
  br label %.lr.ph128

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068118 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 3 uses
  %.0112117 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ak = or disjoint i64 %.068118, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ak)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0112117, i64 %i.aq)
  %i.ar = add nuw i64 %.068118, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ar)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %i.aw = sub i32 %i.at, %i.av
  %i.ax = zext i32 %i.aw to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.ax) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !580

.lr.ph128:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aj, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc75 ] ; 16 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !83  ; 4 uses
  %.not131 = icmp eq i64 %2, 0
  br i1 %.not131, label %.lr.ph128.split, label %.lr.ph128.split.us

.lr.ph128.split.us:                               ; preds = %.lr.ph128, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph128 ] ; 3 uses
  %.071127.us = phi i64 [ %i.ba, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 6 uses
  %umin187 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o) ; 2 uses
  %i.az = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.az, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o)
  %i.ba = add nuw i64 %.071127.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129 ; 5 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !129 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %i.bd                ; 2 uses
  %i.bi = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bj = icmp eq i32 %i.bf, %i.bc                ; 2 uses
  br i1 %i.bj, label %.lr.ph120.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph128.split.us
  %.idx.i.i.us = shl nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph120.us.preheader

.lr.ph120.us.preheader:                           ; preds = %.lr.ph128.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter188 = and i64 %umin187, 1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %i.bk = or disjoint i64 %.071127.us, 1          ; 2 uses
  %i.bl = icmp eq i64 %umin187, %.neg
  br label %.lr.ph120.us

.lr.ph120.us:                                     ; preds = %.lr.ph120.us.preheader, %._crit_edge.us
  %.073121.us = phi i64 [ %i.dl, %._crit_edge.us ], [ 0, %.lr.ph120.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073121.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = sub i64 %i.bn, %i.e
  %i.bp = getelementptr [8 x i8], ptr %i.c, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !68
  %i.bt = sub i64 %i.bs, %i.bq                    ; 3 uses
  %.idx116.us = shl i64 %i.bn, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.us
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !349
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bq ; 3 uses
  %i.bx = fpext <2 x float> %i.bv to <2 x double> ; 3 uses
  br i1 %lcmp.mod189.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120.us
  %i.by = icmp ult i64 %.071127.us, %i.bt
  br i1 %i.by, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %.071127.us
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !429
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub i32 %i.cb, %i.bc
  %i.cd = shl i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.ce ; 2 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 8, !tbaa !255
  %i.ch = fadd <2 x double> %i.cg, %i.bx
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph120.us
  %.072119.us.unr = phi i64 [ %.071127.us, %.lr.ph120.us ], [ %i.bk, %bb.c ], [ %i.bk, %.prol.preheader ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph120.us.new

.lr.ph120.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072119.us = phi i64 [ %i.dd, %bb.g ], [ %.072119.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ci = icmp ult i64 %.072119.us, %i.bt
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph120.us.new
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %.072119.us
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !429
  %i.cl = zext i16 %i.ck to i32
  %i.cm = sub i32 %i.cl, %i.bc
  %i.cn = shl i32 %i.cm, 1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.co ; 2 uses
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !255
  %i.cr = fadd <2 x double> %i.cq, %i.bx
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph120.us.new
  %i.cs = add nuw i64 %.072119.us, 1              ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.bt
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.cs
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !429
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub i32 %i.cw, %i.bc
  %i.cy = shl i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cz ; 2 uses
  %i.db = load <2 x double>, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd <2 x double> %i.db, %i.bx
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dd = add nuw i64 %.072119.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dd, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph120.us.new, !llvm.loop !581

.lr.ph126.us:                                     ; preds = %.lr.ph126.us.preheader183, %.lr.ph126.us
  %.0124.us = phi i64 [ %i.dj, %.lr.ph126.us ], [ %.0124.us.ph, %.lr.ph126.us.preheader183 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0124.us ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !255
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !255
  %i.dj = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dj, %i.bi
  br i1 %exitcond136.not, label %.loopexit.us, label %.lr.ph126.us, !llvm.loop !582

.loopexit.us:                                     ; preds = %.lr.ph126.us, %middle.block, %._crit_edge123.split.us
  %i.dk = icmp ult i64 %i.ba, %i.o
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph128.split.us, label %._crit_edge129, !llvm.loop !583

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.dl = add nuw i64 %.073121.us, 1              ; 2 uses
  %exitcond135.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond135.not, label %._crit_edge123.split.us, label %.lr.ph120.us, !llvm.loop !584

._crit_edge123.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bd, 4             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.q, i64 %.idx.us ; 3 uses
  br i1 %i.bj, label %.loopexit.us, label %.lr.ph126.us.preheader

.lr.ph126.us.preheader:                           ; preds = %._crit_edge123.split.us
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph126.us.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph126.us.preheader
  %i.dn = shl nuw nsw i64 %i.bg, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.dn
  %i.do = sub nsw i64 %i.dn, %.idx.us
  %scevgep158 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %scevgep158
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph126.us.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !585
  %wide.load159 = load <2 x double>, ptr %i.dq, align 8, !tbaa !255, !alias.scope !585
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load160 = load <2 x double>, ptr %i.dr, align 8, !tbaa !255, !alias.scope !588, !noalias !585
  %wide.load161 = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !588, !noalias !585
  %i.dt = fadd <2 x double> %wide.load, %wide.load160
  %i.du = fadd <2 x double> %wide.load159, %wide.load161
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !255, !alias.scope !588, !noalias !585
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !255, !alias.scope !588, !noalias !585
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph126.us.preheader183

.lr.ph126.us.preheader183:                        ; preds = %vector.memcheck, %.lr.ph126.us.preheader, %middle.block
  %.0124.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph126.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph126.us

.loopexit:                                        ; preds = %.lr.ph126, %middle.block179, %.lr.ph128.split
  %i.dw = icmp ult i64 %i.dz, %i.o
  br i1 %i.dw, label %.lr.ph128.split, label %._crit_edge129, !llvm.loop !583

._crit_edge129:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge129
  %i.dx = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.dy = sub i64 %.sroa.10.0.ph, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge129, %bb.h
  ret void

.lr.ph128.split:                                  ; preds = %.lr.ph128, %.loopexit
  %.071127 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.dz = add nuw i64 %.071127, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = sub nsw i64 %i.ef, %i.ec                ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 4 uses
  %i.ei = icmp eq i32 %i.ee, %i.eb
  br i1 %i.ei, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %.lr.ph128.split
  %.idx.i.i = shl nsw i64 %i.eg, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ec, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check169, label %.lr.ph126.preheader182, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph126.preheader
  %i.ek = shl nuw nsw i64 %i.ef, 4
  %scevgep163 = getelementptr i8, ptr %i.q, i64 %i.ek
  %scevgep164 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0165 = icmp ult ptr %i.ej, %scevgep164
  %bound1166 = icmp ult ptr %.sroa.083.0.ph, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %.lr.ph126.preheader182, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck162
  %n.vec171 = and i64 %i.eh, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index173 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load174 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !591
  %wide.load175 = load <2 x double>, ptr %i.em, align 8, !tbaa !255, !alias.scope !591
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index173 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.en, align 8, !tbaa !255, !alias.scope !594, !noalias !591
  %wide.load177 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !594, !noalias !591
  %i.ep = fadd <2 x double> %wide.load174, %wide.load176
  %i.eq = fadd <2 x double> %wide.load175, %wide.load177
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !255, !alias.scope !594, !noalias !591
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !255, !alias.scope !594, !noalias !591
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.er, label %middle.block179, label %vector.body172, !llvm.loop !596

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.eh, %n.vec171
  br i1 %cmp.n180, label %.loopexit, label %.lr.ph126.preheader182

.lr.ph126.preheader182:                           ; preds = %vector.memcheck162, %.lr.ph126.preheader, %middle.block179
  %.0124.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph126.preheader ], [ %n.vec171, %middle.block179 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader182, %.lr.ph126
  %.0124 = phi i64 [ %i.ex, %.lr.ph126 ], [ %.0124.ph, %.lr.ph126.preheader182 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124
  %i.et = load double, ptr %i.es, align 8, !tbaa !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0124 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !255
  %i.ew = fadd double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !255
  %i.ex = add nuw i64 %.0124, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph126, !llvm.loop !597
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb1ELb0ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = load ptr, ptr %4, align 8, !tbaa !406
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = add nsw i64 %i.n, -1                     ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !407  ; 4 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 6 uses
  %i.t = add nsw i64 %i.n, -2                     ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.v, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.x = and i64 %i.t, 32
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.068118.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0112117.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod186 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.y = add nuw i64 %.068118.epil.init, 32
  %.sroa.speculated95.epil = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.y)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.epil
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !129
  %i.ad = sub i32 %i.aa, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %.sroa.speculated89.epil = tail call i64 @llvm.umax.i64(i64 %.0112117.epil.init, i64 %i.ae)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated89.lcssa = phi i64 [ %.sroa.speculated89.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated89.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated89.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph128, label %.noexc75

.noexc75:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = shl nuw nsw i64 %.sroa.speculated89.lcssa, 4 ; 3 uses
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !255
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.af, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.aj = ptrtoint ptr %i.ah to i64
  br label %.lr.ph128

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.068118 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 3 uses
  %.0112117 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated89.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ak = or disjoint i64 %.068118, 32            ; 2 uses
  %.sroa.speculated95 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ak)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.068118
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %.sroa.speculated89 = tail call i64 @llvm.umax.i64(i64 %.0112117, i64 %i.aq)
  %i.ar = add nuw i64 %.068118, 64                ; 3 uses
  %.sroa.speculated95.1 = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ar)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.speculated95.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %i.aw = sub i32 %i.at, %i.av
  %i.ax = zext i32 %i.aw to i64
  %.sroa.speculated89.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated89, i64 %i.ax) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !598

.lr.ph128:                                        ; preds = %.noexc75, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aj, %.noexc75 ]
  %.sroa.083.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc75 ] ; 16 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !83  ; 4 uses
  %.not131 = icmp eq i64 %2, 0
  br i1 %.not131, label %.lr.ph128.split, label %.lr.ph128.split.us

.lr.ph128.split.us:                               ; preds = %.lr.ph128, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph128 ] ; 3 uses
  %.071127.us = phi i64 [ %i.ba, %.loopexit.us ], [ 0, %.lr.ph128 ] ; 6 uses
  %umin187 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o) ; 2 uses
  %i.az = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.az, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.o)
  %i.ba = add nuw i64 %.071127.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129 ; 5 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !129 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %i.bd                ; 2 uses
  %i.bi = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bj = icmp eq i32 %i.bf, %i.bc                ; 2 uses
  br i1 %i.bj, label %.lr.ph120.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph128.split.us
  %.idx.i.i.us = shl nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph120.us.preheader

.lr.ph120.us.preheader:                           ; preds = %.lr.ph128.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter188 = and i64 %umin187, 1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  %i.bk = or disjoint i64 %.071127.us, 1          ; 2 uses
  %i.bl = icmp eq i64 %umin187, %.neg
  br label %.lr.ph120.us

.lr.ph120.us:                                     ; preds = %.lr.ph120.us.preheader, %._crit_edge.us
  %.073121.us = phi i64 [ %i.dl, %._crit_edge.us ], [ 0, %.lr.ph120.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.073121.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = sub i64 %i.bn, %i.e
  %i.bp = getelementptr [8 x i8], ptr %i.c, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !68
  %i.bt = sub i64 %i.bs, %i.bq                    ; 3 uses
  %.idx116.us = shl i64 %i.bn, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116.us
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !349
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bq ; 3 uses
  %i.bx = fpext <2 x float> %i.bv to <2 x double> ; 3 uses
  br i1 %lcmp.mod189.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120.us
  %i.by = icmp ult i64 %.071127.us, %i.bt
  br i1 %i.by, label %bb.c, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.071127.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !93
  %i.cb = zext i8 %i.ca to i32
  %i.cc = sub i32 %i.cb, %i.bc
  %i.cd = shl i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.ce ; 2 uses
  %i.cg = load <2 x double>, ptr %i.cf, align 8, !tbaa !255
  %i.ch = fadd <2 x double> %i.cg, %i.bx
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c, %.lr.ph120.us
  %.072119.us.unr = phi i64 [ %.071127.us, %.lr.ph120.us ], [ %i.bk, %bb.c ], [ %i.bk, %.prol.preheader ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph120.us.new

.lr.ph120.us.new:                                 ; preds = %.prol.loopexit, %bb.g
  %.072119.us = phi i64 [ %i.dd, %bb.g ], [ %.072119.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ci = icmp ult i64 %.072119.us, %i.bt
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph120.us.new
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.072119.us
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !93
  %i.cl = zext i8 %i.ck to i32
  %i.cm = sub i32 %i.cl, %i.bc
  %i.cn = shl i32 %i.cm, 1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.co ; 2 uses
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !255
  %i.cr = fadd <2 x double> %i.cq, %i.bx
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !255
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph120.us.new
  %i.cs = add nuw i64 %.072119.us, 1              ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.bt
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cs
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !93
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub i32 %i.cw, %i.bc
  %i.cy = shl i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %i.cz ; 2 uses
  %i.db = load <2 x double>, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd <2 x double> %i.db, %i.bx
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dd = add nuw i64 %.072119.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dd, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph120.us.new, !llvm.loop !599

.lr.ph126.us:                                     ; preds = %.lr.ph126.us.preheader183, %.lr.ph126.us
  %.0124.us = phi i64 [ %i.dj, %.lr.ph126.us ], [ %.0124.us.ph, %.lr.ph126.us.preheader183 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0124.us ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !255
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !255
  %i.dj = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dj, %i.bi
  br i1 %exitcond136.not, label %.loopexit.us, label %.lr.ph126.us, !llvm.loop !600

.loopexit.us:                                     ; preds = %.lr.ph126.us, %middle.block, %._crit_edge123.split.us
  %i.dk = icmp ult i64 %i.ba, %i.o
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph128.split.us, label %._crit_edge129, !llvm.loop !601

._crit_edge.us:                                   ; preds = %bb.g, %.prol.loopexit
  %i.dl = add nuw i64 %.073121.us, 1              ; 2 uses
  %exitcond135.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond135.not, label %._crit_edge123.split.us, label %.lr.ph120.us, !llvm.loop !602

._crit_edge123.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bd, 4             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.q, i64 %.idx.us ; 3 uses
  br i1 %i.bj, label %.loopexit.us, label %.lr.ph126.us.preheader

.lr.ph126.us.preheader:                           ; preds = %._crit_edge123.split.us
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph126.us.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph126.us.preheader
  %i.dn = shl nuw nsw i64 %i.bg, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.dn
  %i.do = sub nsw i64 %i.dn, %.idx.us
  %scevgep158 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %scevgep158
  %bound1 = icmp ult ptr %.sroa.083.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph126.us.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !603
  %wide.load159 = load <2 x double>, ptr %i.dq, align 8, !tbaa !255, !alias.scope !603
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load160 = load <2 x double>, ptr %i.dr, align 8, !tbaa !255, !alias.scope !606, !noalias !603
  %wide.load161 = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !606, !noalias !603
  %i.dt = fadd <2 x double> %wide.load, %wide.load160
  %i.du = fadd <2 x double> %wide.load159, %wide.load161
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !255, !alias.scope !606, !noalias !603
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !255, !alias.scope !606, !noalias !603
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph126.us.preheader183

.lr.ph126.us.preheader183:                        ; preds = %vector.memcheck, %.lr.ph126.us.preheader, %middle.block
  %.0124.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph126.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph126.us

.loopexit:                                        ; preds = %.lr.ph126, %middle.block179, %.lr.ph128.split
  %i.dw = icmp ult i64 %i.dz, %i.o
  br i1 %i.dw, label %.lr.ph128.split, label %._crit_edge129, !llvm.loop !601

._crit_edge129:                                   ; preds = %.loopexit.us, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.083.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge129
  %i.dx = ptrtoint ptr %.sroa.083.0.ph to i64
  %i.dy = sub i64 %.sroa.10.0.ph, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0.ph, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge129, %bb.h
  ret void

.lr.ph128.split:                                  ; preds = %.lr.ph128, %.loopexit
  %.071127 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.dz = add nuw i64 %.071127, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.071127
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.sroa.speculated
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = sub nsw i64 %i.ef, %i.ec                ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 4 uses
  %i.ei = icmp eq i32 %i.ee, %i.eb
  br i1 %i.ei, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %.lr.ph128.split
  %.idx.i.i = shl nsw i64 %i.eg, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.083.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ec, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check169, label %.lr.ph126.preheader182, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph126.preheader
  %i.ek = shl nuw nsw i64 %i.ef, 4
  %scevgep163 = getelementptr i8, ptr %i.q, i64 %i.ek
  %scevgep164 = getelementptr i8, ptr %.sroa.083.0.ph, i64 %.idx.i.i
  %bound0165 = icmp ult ptr %i.ej, %scevgep164
  %bound1166 = icmp ult ptr %.sroa.083.0.ph, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %.lr.ph126.preheader182, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck162
  %n.vec171 = and i64 %i.eh, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %index173 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load174 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !609
  %wide.load175 = load <2 x double>, ptr %i.em, align 8, !tbaa !255, !alias.scope !609
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index173 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.en, align 8, !tbaa !255, !alias.scope !612, !noalias !609
  %wide.load177 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !612, !noalias !609
  %i.ep = fadd <2 x double> %wide.load174, %wide.load176
  %i.eq = fadd <2 x double> %wide.load175, %wide.load177
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !255, !alias.scope !612, !noalias !609
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !255, !alias.scope !612, !noalias !609
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.er, label %middle.block179, label %vector.body172, !llvm.loop !614

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.eh, %n.vec171
  br i1 %cmp.n180, label %.loopexit, label %.lr.ph126.preheader182

.lr.ph126.preheader182:                           ; preds = %vector.memcheck162, %.lr.ph126.preheader, %middle.block179
  %.0124.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph126.preheader ], [ %n.vec171, %middle.block179 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader182, %.lr.ph126
  %.0124 = phi i64 [ %i.ex, %.lr.ph126 ], [ %.0124.ph, %.lr.ph126.preheader182 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0.ph, i64 %.0124
  %i.et = load double, ptr %i.es, align 8, !tbaa !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0124 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !255
  %i.ew = fadd double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !255
  %i.ex = add nuw i64 %.0124, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph126, !llvm.loop !615
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.1", align 8 ; 4 uses
  %3 = alloca %class.anon.192, align 8            ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !48, !range !60, !noundef !61
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !50, !range !60, !noundef !61
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb1ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !51    ; 2 uses
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb1ELb0ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !68 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !68 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73, !nonnull !61, !align !67 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74, !nonnull !61, !align !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.p, label %_ZZN7xgboost6common9BuildHistILb1EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb1ELb0ELb0EtEEEEDaSF_.exit, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 18) ; 2 uses
  %i.q = add i64 %.sroa.0.0.copyload.i, -1        ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_:bb.a
  %3 = alloca %class.anon.219, align 8            ; 5 uses
  %4 = alloca %class.anon.217, align 8            ; 5 uses
  %5 = alloca %class.anon.215, align 8            ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.k [
    i8 1, label %bb.b
    i8 2, label %bb.e
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !713, !nonnull !61 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !715, !nonnull !61, !align !67 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.e, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %i.a, ptr %5, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5), !inline_history !716
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.k, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.m), !inline_history !716
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !713, !nonnull !61 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !715, !nonnull !61, !align !67 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !51    ; 2 uses
  %.not.i8 = icmp eq i8 %i.r, 2
  br i1 %.not.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.n, ptr %4, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !717
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i9 = load i64, ptr %i.t, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.22.0.copyload.i.i11 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i10, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %i.v, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i.i14 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i13, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i9, ptr %.sroa.22.0.copyload.i.i11, i64 %.sroa.0.0.copyload.i.i12, ptr %.sroa.2.0.copyload.i.i14, ptr noundef nonnull align 8 dereferenceable(225) %i.x, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.z), !inline_history !717
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !713, !nonnull !61 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !715, !nonnull !61, !align !67 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51  ; 2 uses
  %.not.i17 = icmp eq i8 %i.ae, 4
  br i1 %.not.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.aa, ptr %3, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !718
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i18 = load i64, ptr %i.ag, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.22.0.copyload.i.i20 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i19, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.ai, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i22, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i18, ptr %.sroa.22.0.copyload.i.i20, i64 %.sroa.0.0.copyload.i.i21, ptr %.sroa.2.0.copyload.i.i23, ptr noundef nonnull align 8 dereferenceable(225) %i.ak, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.am), !inline_history !718
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.an = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.an, ptr noundef nonnull @.str.46, i32 noundef 223)
  %i.ao = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.aq = load ptr, ptr %1, align 8, !tbaa !713, !nonnull !61 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !715, !nonnull !61, !align !67 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !51  ; 2 uses
  %.not.i26 = icmp eq i8 %i.au, 4
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.aq, ptr %2, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.as, ptr %i.av, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !718
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %i.aw, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.22.0.copyload.i.i29 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i28, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i30 = load i64, ptr %i.ay, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i32 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i31, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !79, !nonnull !61, !align !67
  call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i27, ptr %.sroa.22.0.copyload.i.i29, i64 %.sroa.0.0.copyload.i.i30, ptr %.sroa.2.0.copyload.i.i32, ptr noundef nonnull align 8 dereferenceable(225) %i.ba, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.bc), !inline_history !718
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.n:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.bd

_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void

bb.p:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = add nsw i64 %i.m, -1                     ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407  ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 6 uses
  %i.s = add nsw i64 %i.m, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 5                         ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.u, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.w = and i64 %i.s, 32
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.x = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.x)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.epil
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = sub i32 %i.z, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.ad)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !255
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ae, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.aj = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aj)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = zext i32 %i.ao to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ap)
  %i.aq = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aq)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aj
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = sub i32 %i.as, %i.au
  %i.aw = zext i32 %i.av to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.aw) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !719

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc80 ] ; 16 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.az, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n) ; 2 uses
  %i.ay = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ay, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n)
  %i.az = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.az)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129 ; 5 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129 ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = sub nsw i64 %i.bf, %i.bc                ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 1                    ; 4 uses
  %i.bi = icmp eq i32 %i.be, %i.bb                ; 2 uses
  br i1 %i.bi, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.076128.us
  %i.bk = or disjoint i64 %.076128.us, 1
  %i.bl = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.di, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = mul i64 %i.bn, %i.n
  %.idx117.us = shl i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !349
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo ; 3 uses
  %i.bs = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bt = load i32, ptr %i.bj, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.076128.us
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  %i.bw = sub i32 %i.bt, %i.bb
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = shl i32 %i.bx, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.bz ; 2 uses
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !255
  %i.cc = fadd <2 x double> %i.cb, %i.bs
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.da, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.077120.us
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !129
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.077120.us
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !129
  %i.ch = sub i32 %i.ce, %i.bb
  %i.ci = add i32 %i.ch, %i.cg
  %i.cj = shl i32 %i.ci, 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.ck ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !255
  %i.cn = fadd <2 x double> %i.cm, %i.bs
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !255
  %i.co = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.co
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !129
  %i.ct = sub i32 %i.cq, %i.bb
  %i.cu = add i32 %i.ct, %i.cs
  %i.cv = shl i32 %i.cu, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cw ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !255
  %i.cz = fadd <2 x double> %i.cy, %i.bs
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !255
  %i.da = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !720

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dg, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !255
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0125.us ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dg, %i.bh
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !721

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dh = icmp ult i64 %i.az, %i.n
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dh, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !722

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.di = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.di, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !723

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bc, 4             ; 2 uses
  %i.dj = getelementptr i8, ptr %i.p, i64 %.idx.us ; 3 uses
  br i1 %i.bi, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dk = shl nuw nsw i64 %i.bf, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.dk
  %i.dl = sub nsw i64 %i.dk, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.dl
  %bound0 = icmp ult ptr %i.dj, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x double>, ptr %i.dm, align 8, !tbaa !255, !alias.scope !724
  %wide.load163 = load <2 x double>, ptr %i.dn, align 8, !tbaa !255, !alias.scope !724
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.do, align 8, !tbaa !255, !alias.scope !727, !noalias !724
  %wide.load165 = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !727, !noalias !724
  %i.dq = fadd <2 x double> %wide.load, %wide.load164
  %i.dr = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dq, ptr %i.do, align 8, !tbaa !255, !alias.scope !727, !noalias !724
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !255, !alias.scope !727, !noalias !724
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dt = icmp ult i64 %i.dw, %i.n
  br i1 %i.dt, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !722

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.du = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.dv = sub i64 %.sroa.10.0.ph, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.dw, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.dw = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.dw)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = sub nsw i64 %i.ec, %i.dz                ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 1                    ; 4 uses
  %i.ef = icmp eq i32 %i.eb, %i.dy
  br i1 %i.ef, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.ed, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.eh = shl nuw nsw i64 %i.ec, 4
  %scevgep167 = getelementptr i8, ptr %i.p, i64 %i.eh
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.eg, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.ee, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load178 = load <2 x double>, ptr %i.ei, align 8, !tbaa !255, !alias.scope !730
  %wide.load179 = load <2 x double>, ptr %i.ej, align 8, !tbaa !255, !alias.scope !730
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index177 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.ek, align 8, !tbaa !255, !alias.scope !733, !noalias !730
  %wide.load181 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !733, !noalias !730
  %i.em = fadd <2 x double> %wide.load178, %wide.load180
  %i.en = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !255, !alias.scope !733, !noalias !730
  store <2 x double> %i.en, ptr %i.el, align 8, !tbaa !255, !alias.scope !733, !noalias !730
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.eo, label %middle.block183, label %vector.body176, !llvm.loop !735

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.ee, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.eu, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !255
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.0125 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !255
  %i.et = fadd double %i.eq, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !255
  %i.eu = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.eu, %i.ee
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !736
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = add nsw i64 %i.m, -1                     ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407  ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 6 uses
  %i.s = add nsw i64 %i.m, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 5                         ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.u, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.w = and i64 %i.s, 32
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.x = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.x)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.epil
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = sub i32 %i.z, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.ad)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !255
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ae, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.aj = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aj)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = zext i32 %i.ao to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ap)
  %i.aq = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aq)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aj
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = sub i32 %i.as, %i.au
  %i.aw = zext i32 %i.av to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.aw) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !737

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc80 ] ; 16 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.az, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n) ; 2 uses
  %i.ay = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ay, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n)
  %i.az = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.az)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129 ; 5 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129 ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = sub nsw i64 %i.bf, %i.bc                ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 1                    ; 4 uses
  %i.bi = icmp eq i32 %i.be, %i.bb                ; 2 uses
  br i1 %i.bi, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.076128.us
  %i.bk = or disjoint i64 %.076128.us, 1
  %i.bl = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.dl, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = mul i64 %i.bn, %i.n
  %.idx117.us = shl i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !349
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bo ; 3 uses
  %i.bs = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bt = load i32, ptr %i.bj, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %.076128.us
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !429
  %i.bw = zext i16 %i.bv to i32
  %i.bx = sub i32 %i.bt, %i.bb
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = shl i32 %i.by, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.ca ; 2 uses
  %i.cc = load <2 x double>, ptr %i.cb, align 8, !tbaa !255
  %i.cd = fadd <2 x double> %i.cc, %i.bs
  store <2 x double> %i.cd, ptr %i.cb, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.dd, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.077120.us
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !129
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %.077120.us
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !429
  %i.ci = zext i16 %i.ch to i32
  %i.cj = sub i32 %i.cf, %i.bb
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = shl i32 %i.ck, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cm ; 2 uses
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !255
  %i.cp = fadd <2 x double> %i.co, %i.bs
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !255
  %i.cq = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !129
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.cq
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !429
  %i.cv = zext i16 %i.cu to i32
  %i.cw = sub i32 %i.cs, %i.bb
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = shl i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cz ; 2 uses
  %i.db = load <2 x double>, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd <2 x double> %i.db, %i.bs
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !255
  %i.dd = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dd, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !738

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dj, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0125.us ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !255
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !255
  %i.dj = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dj, %i.bh
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !739

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dk = icmp ult i64 %i.az, %i.n
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !740

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.dl = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !741

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bc, 4             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.p, i64 %.idx.us ; 3 uses
  br i1 %i.bi, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dn = shl nuw nsw i64 %i.bf, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.dn
  %i.do = sub nsw i64 %i.dn, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !742
  %wide.load163 = load <2 x double>, ptr %i.dq, align 8, !tbaa !255, !alias.scope !742
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.dr, align 8, !tbaa !255, !alias.scope !745, !noalias !742
  %wide.load165 = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !745, !noalias !742
  %i.dt = fadd <2 x double> %wide.load, %wide.load164
  %i.du = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !255, !alias.scope !745, !noalias !742
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !255, !alias.scope !745, !noalias !742
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !747

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dw = icmp ult i64 %i.dz, %i.n
  br i1 %i.dw, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !740

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.dx = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.dy = sub i64 %.sroa.10.0.ph, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.dz = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = sub nsw i64 %i.ef, %i.ec                ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 4 uses
  %i.ei = icmp eq i32 %i.ee, %i.eb
  br i1 %i.ei, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.eg, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ec, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.ek = shl nuw nsw i64 %i.ef, 4
  %scevgep167 = getelementptr i8, ptr %i.p, i64 %i.ek
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.ej, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.eh, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load178 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !748
  %wide.load179 = load <2 x double>, ptr %i.em, align 8, !tbaa !255, !alias.scope !748
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index177 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.en, align 8, !tbaa !255, !alias.scope !751, !noalias !748
  %wide.load181 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !751, !noalias !748
  %i.ep = fadd <2 x double> %wide.load178, %wide.load180
  %i.eq = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !255, !alias.scope !751, !noalias !748
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !255, !alias.scope !751, !noalias !748
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.er, label %middle.block183, label %vector.body176, !llvm.loop !753

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.eh, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.ex, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.et = load double, ptr %i.es, align 8, !tbaa !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0125 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !255
  %i.ew = fadd double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !255
  %i.ex = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !754
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = add nsw i64 %i.m, -1                     ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407  ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 6 uses
  %i.s = add nsw i64 %i.m, -2                     ; 2 uses
  %i.t = lshr i64 %i.s, 5                         ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.u, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.w = and i64 %i.s, 32
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.x = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.x)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.epil
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = sub i32 %i.z, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.ad)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !255
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ae, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.aj = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aj)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.073119
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = zext i32 %i.ao to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ap)
  %i.aq = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.aq)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.speculated100.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aj
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = sub i32 %i.as, %i.au
  %i.aw = zext i32 %i.av to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.aw) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !755

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ai, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %.noexc80 ] ; 16 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.az, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n) ; 2 uses
  %i.ay = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ay, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.n)
  %i.az = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.az)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129 ; 5 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !129 ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = sub nsw i64 %i.bf, %i.bc                ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 1                    ; 4 uses
  %i.bi = icmp eq i32 %i.be, %i.bb                ; 2 uses
  br i1 %i.bi, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.076128.us
  %i.bk = or disjoint i64 %.076128.us, 1
  %i.bl = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.dl, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %i.bo = mul i64 %i.bn, %i.n
  %.idx117.us = shl i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !349
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo ; 3 uses
  %i.bs = fpext <2 x float> %i.bq to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bt = load i32, ptr %i.bj, align 4, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.076128.us
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !93
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub i32 %i.bt, %i.bb
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = shl i32 %i.by, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.ca ; 2 uses
  %i.cc = load <2 x double>, ptr %i.cb, align 8, !tbaa !255
  %i.cd = fadd <2 x double> %i.cc, %i.bs
  store <2 x double> %i.cd, ptr %i.cb, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bk, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bl, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.dd, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.077120.us
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !129
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 %.077120.us
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !93
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub i32 %i.cf, %i.bb
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = shl i32 %i.ck, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cm ; 2 uses
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !255
  %i.cp = fadd <2 x double> %i.co, %i.bs
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !255
  %i.cq = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cq
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !93
  %i.cv = zext i8 %i.cu to i32
  %i.cw = sub i32 %i.cs, %i.bb
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = shl i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cz ; 2 uses
  %i.db = load <2 x double>, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd <2 x double> %i.db, %i.bs
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !255
  %i.dd = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dd, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !756

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dj, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0125.us ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !255
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !255
  %i.dj = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dj, %i.bh
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !757

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dk = icmp ult i64 %i.az, %i.n
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !758

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.dl = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !759

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.bc, 4             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.p, i64 %.idx.us ; 3 uses
  br i1 %i.bi, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dn = shl nuw nsw i64 %i.bf, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.dn
  %i.do = sub nsw i64 %i.dn, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !760
  %wide.load163 = load <2 x double>, ptr %i.dq, align 8, !tbaa !255, !alias.scope !760
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.dr, align 8, !tbaa !255, !alias.scope !763, !noalias !760
  %wide.load165 = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !763, !noalias !760
  %i.dt = fadd <2 x double> %wide.load, %wide.load164
  %i.du = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !255, !alias.scope !763, !noalias !760
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !255, !alias.scope !763, !noalias !760
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !765

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dw = icmp ult i64 %i.dz, %i.n
  br i1 %i.dw, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !758

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.dx = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.dy = sub i64 %.sroa.10.0.ph, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.dz = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.076128
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.speculated
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = sub nsw i64 %i.ef, %i.ec                ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 4 uses
  %i.ei = icmp eq i32 %i.ee, %i.eb
  br i1 %i.ei, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.eg, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ec, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.ek = shl nuw nsw i64 %i.ef, 4
  %scevgep167 = getelementptr i8, ptr %i.p, i64 %i.ek
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.ej, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.eh, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load178 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !766
  %wide.load179 = load <2 x double>, ptr %i.em, align 8, !tbaa !255, !alias.scope !766
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index177 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.en, align 8, !tbaa !255, !alias.scope !769, !noalias !766
  %wide.load181 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !769, !noalias !766
  %i.ep = fadd <2 x double> %wide.load178, %wide.load180
  %i.eq = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !255, !alias.scope !769, !noalias !766
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !255, !alias.scope !769, !noalias !766
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.er, label %middle.block183, label %vector.body176, !llvm.loop !771

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.eh, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.ex, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.et = load double, ptr %i.es, align 8, !tbaa !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0125 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !255
  %i.ew = fadd double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !255
  %i.ex = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !772
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.1", align 8 ; 4 uses
  %3 = alloca %class.anon.217, align 8            ; 5 uses
  %4 = alloca %class.anon.227, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !50, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51    ; 3 uses
  %.not.i = icmp eq i8 %i.e, 2                    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !773
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.k, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.m), !inline_history !773
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %0, ptr %4, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !68 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !68 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78, !nonnull !61, !align !67 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79, !nonnull !61, !align !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.v, label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEDaSF_.exit, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 18) ; 2 uses
  %i.w = add i64 %.sroa.0.0.copyload.i, -1        ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload.i, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68
  %i.z = load i64, ptr %.sroa.2.0.copyload.i, align 8, !tbaa !68
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, %i.w
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb0ENS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.s, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.u)
  br label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEDaSF_.exit

bb.i:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i
  %i.ac = sub i64 %.sroa.0.0.copyload.i, %.sroa.speculated.i.i.i ; 3 uses
  switch i64 %i.ac, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i [
    i64 -1, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i
    i64 0, label %bb.j
  ]

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i: ; preds = %bb.i
  br label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i, %bb.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload.i, %bb.i ], [ %i.ac, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i ]
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb1ENS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %i.ad, ptr nonnull %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.s, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.u)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i, %bb.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload.i, i64 %i.ac
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb0ENS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.speculated.i.i.i, ptr nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(225) %i.s, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %2)
  br label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEDaSF_.exit

_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEDaSF_.exit: ; preds = %bb.g, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit: ; preds = %bb.d, %bb.c, %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb1ELb0EtEEEEDaSF_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_:bb.a
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.m = load ptr, ptr %1, align 8, !tbaa !808, !nonnull !61
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !810, !nonnull !61, !align !67
  call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o), !inline_history !813
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.219, align 8            ; 5 uses
  %3 = alloca %class.anon.247, align 8            ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !48, !range !60, !noundef !61
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51    ; 3 uses
  %.not.i = icmp eq i8 %i.d, 4                    ; 2 uses
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %0, ptr %2, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !780
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb1ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(225) %i.j, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.l), !inline_history !780
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.e:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

bb.f:                                             ; preds = %.split
  %i.n = load ptr, ptr %1, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78, !nonnull !61, !align !67
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb0ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.r, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.t)
  br label %_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit

_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !814, !nonnull !61
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !816, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c), !inline_history !817
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !814, !nonnull !61
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !816, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f), !inline_history !818
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !814, !nonnull !61
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !816, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i), !inline_history !819
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.j = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull @.str.46, i32 noundef 223)
  %i.k = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.47, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.m = load ptr, ptr %1, align 8, !tbaa !814, !nonnull !61
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !816, !nonnull !61, !align !67
  call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EjE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o), !inline_history !819
  br label %bb.h

bb.f:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.b
  ret void

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb0ELb1EjEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = add nsw i64 %i.o, -1                     ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !407  ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83   ; 6 uses
  %i.u = add nsw i64 %i.o, -2                     ; 2 uses
  %i.v = lshr i64 %i.u, 5                         ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.y = and i64 %i.u, 32
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.z = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.z)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !129
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = zext i32 %i.ae to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.af)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !255
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ag, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ak = ptrtoint ptr %i.ai to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.al = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.al)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ar)
  %i.as = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.as)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.al
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !129
  %i.ax = sub i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.ay) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !820

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ak, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc80 ] ; 16 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.bb, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p) ; 2 uses
  %i.ba = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ba, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p)
  %i.bb = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.bb)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 5 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated.us
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !129 ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.be                ; 2 uses
  %i.bj = shl nsw i64 %i.bi, 1                    ; 4 uses
  %i.bk = icmp eq i32 %i.bg, %i.bd                ; 2 uses
  br i1 %i.bk, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bi, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.076128.us
  %i.bm = or disjoint i64 %.076128.us, 1
  %i.bn = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.dl, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.d
  %i.br = mul i64 %i.bq, %i.p
  %.idx117.us = shl i64 %i.bp, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !349
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br ; 3 uses
  %i.bv = fpext <2 x float> %i.bt to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.076128.us
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129
  %i.bz = sub i32 %i.bw, %i.bd
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = shl i32 %i.ca, 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cc ; 2 uses
  %i.ce = load <2 x double>, ptr %i.cd, align 8, !tbaa !255
  %i.cf = fadd <2 x double> %i.ce, %i.bv
  store <2 x double> %i.cf, ptr %i.cd, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bn, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.dd, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.077120.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !129
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.077120.us
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !129
  %i.ck = sub i32 %i.ch, %i.bd
  %i.cl = add i32 %i.ck, %i.cj
  %i.cm = shl i32 %i.cl, 1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cn ; 2 uses
  %i.cp = load <2 x double>, ptr %i.co, align 8, !tbaa !255
  %i.cq = fadd <2 x double> %i.cp, %i.bv
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !255
  %i.cr = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !129
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cr
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !129
  %i.cw = sub i32 %i.ct, %i.bd
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = shl i32 %i.cx, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cz ; 2 uses
  %i.db = load <2 x double>, ptr %i.da, align 8, !tbaa !255
  %i.dc = fadd <2 x double> %i.db, %i.bv
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !255
  %i.dd = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dd, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !821

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dj, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.df = load double, ptr %i.de, align 8, !tbaa !255
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0125.us ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !255
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !255
  %i.dj = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dj, %i.bj
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !822

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dk = icmp ult i64 %i.bb, %i.p
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dk, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !823

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.dl = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !824

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.be, 4             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.r, i64 %.idx.us ; 3 uses
  br i1 %i.bk, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dn = shl nuw nsw i64 %i.bh, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.dn
  %i.do = sub nsw i64 %i.dn, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <2 x double>, ptr %i.dp, align 8, !tbaa !255, !alias.scope !825
  %wide.load163 = load <2 x double>, ptr %i.dq, align 8, !tbaa !255, !alias.scope !825
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.dr, align 8, !tbaa !255, !alias.scope !828, !noalias !825
  %wide.load165 = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !828, !noalias !825
  %i.dt = fadd <2 x double> %wide.load, %wide.load164
  %i.du = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dt, ptr %i.dr, align 8, !tbaa !255, !alias.scope !828, !noalias !825
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !255, !alias.scope !828, !noalias !825
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dw = icmp ult i64 %i.dz, %i.p
  br i1 %i.dw, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !823

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.dx = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.dy = sub i64 %.sroa.10.0.ph, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.dy) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.dz = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !129 ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = sub nsw i64 %i.ef, %i.ec                ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 1                    ; 4 uses
  %i.ei = icmp eq i32 %i.ee, %i.eb
  br i1 %i.ei, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.eg, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ec, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.ek = shl nuw nsw i64 %i.ef, 4
  %scevgep167 = getelementptr i8, ptr %i.r, i64 %i.ek
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.ej, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.eh, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load178 = load <2 x double>, ptr %i.el, align 8, !tbaa !255, !alias.scope !831
  %wide.load179 = load <2 x double>, ptr %i.em, align 8, !tbaa !255, !alias.scope !831
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index177 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.en, align 8, !tbaa !255, !alias.scope !834, !noalias !831
  %wide.load181 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !834, !noalias !831
  %i.ep = fadd <2 x double> %wide.load178, %wide.load180
  %i.eq = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !255, !alias.scope !834, !noalias !831
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !255, !alias.scope !834, !noalias !831
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.er, label %middle.block183, label %vector.body176, !llvm.loop !836

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.eh, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.ex, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.et = load double, ptr %i.es, align 8, !tbaa !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0125 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !255
  %i.ew = fadd double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !255
  %i.ex = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.ex, %i.eh
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !837
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb0ELb1EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = add nsw i64 %i.o, -1                     ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !407  ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83   ; 6 uses
  %i.u = add nsw i64 %i.o, -2                     ; 2 uses
  %i.v = lshr i64 %i.u, 5                         ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.y = and i64 %i.u, 32
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.z = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.z)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !129
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = zext i32 %i.ae to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.af)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !255
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ag, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ak = ptrtoint ptr %i.ai to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.al = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.al)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ar)
  %i.as = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.as)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.al
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !129
  %i.ax = sub i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.ay) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !838

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ak, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc80 ] ; 16 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.bb, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p) ; 2 uses
  %i.ba = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ba, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p)
  %i.bb = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.bb)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 5 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated.us
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !129 ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.be                ; 2 uses
  %i.bj = shl nsw i64 %i.bi, 1                    ; 4 uses
  %i.bk = icmp eq i32 %i.bg, %i.bd                ; 2 uses
  br i1 %i.bk, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bi, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.076128.us
  %i.bm = or disjoint i64 %.076128.us, 1
  %i.bn = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.d
  %i.br = mul i64 %i.bq, %i.p
  %.idx117.us = shl i64 %i.bp, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !349
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.br ; 3 uses
  %i.bv = fpext <2 x float> %i.bt to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %.076128.us
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !429
  %i.bz = zext i16 %i.by to i32
  %i.ca = sub i32 %i.bw, %i.bd
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = shl i32 %i.cb, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cd ; 2 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 8, !tbaa !255
  %i.cg = fadd <2 x double> %i.cf, %i.bv
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bn, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.dg, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.077120.us
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !129
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %.077120.us
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !429
  %i.cl = zext i16 %i.ck to i32
  %i.cm = sub i32 %i.ci, %i.bd
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = shl i32 %i.cn, 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cp ; 2 uses
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !255
  %i.cs = fadd <2 x double> %i.cr, %i.bv
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !255
  %i.ct = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !129
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ct
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !429
  %i.cy = zext i16 %i.cx to i32
  %i.cz = sub i32 %i.cv, %i.bd
  %i.da = add i32 %i.cz, %i.cy
  %i.db = shl i32 %i.da, 1
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.dc ; 2 uses
  %i.de = load <2 x double>, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd <2 x double> %i.de, %i.bv
  store <2 x double> %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dg, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !839

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dm, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.di = load double, ptr %i.dh, align 8, !tbaa !255
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.0125.us ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !255
  %i.dl = fadd double %i.di, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !255
  %i.dm = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dm, %i.bj
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !840

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dn = icmp ult i64 %i.bb, %i.p
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dn, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !841

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.do = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.do, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !842

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.be, 4             ; 2 uses
  %i.dp = getelementptr i8, ptr %i.r, i64 %.idx.us ; 3 uses
  br i1 %i.bk, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dq = shl nuw nsw i64 %i.bh, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.dq
  %i.dr = sub nsw i64 %i.dq, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.dr
  %bound0 = icmp ult ptr %i.dp, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !843
  %wide.load163 = load <2 x double>, ptr %i.dt, align 8, !tbaa !255, !alias.scope !843
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.du, align 8, !tbaa !255, !alias.scope !846, !noalias !843
  %wide.load165 = load <2 x double>, ptr %i.dv, align 8, !tbaa !255, !alias.scope !846, !noalias !843
  %i.dw = fadd <2 x double> %wide.load, %wide.load164
  %i.dx = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !255, !alias.scope !846, !noalias !843
  store <2 x double> %i.dx, ptr %i.dv, align 8, !tbaa !255, !alias.scope !846, !noalias !843
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dz = icmp ult i64 %i.ec, %i.p
  br i1 %i.dz, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !841

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.ea = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.eb = sub i64 %.sroa.10.0.ph, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.eb) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.ec, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.ec = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.ec)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !129 ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = sub nsw i64 %i.ei, %i.ef                ; 2 uses
  %i.ek = shl nsw i64 %i.ej, 1                    ; 4 uses
  %i.el = icmp eq i32 %i.eh, %i.ee
  br i1 %i.el, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.ej, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ef, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.ek, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.en = shl nuw nsw i64 %i.ei, 4
  %scevgep167 = getelementptr i8, ptr %i.r, i64 %i.en
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.em, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.ek, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load178 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !849
  %wide.load179 = load <2 x double>, ptr %i.ep, align 8, !tbaa !255, !alias.scope !849
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %index177 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.eq, align 8, !tbaa !255, !alias.scope !852, !noalias !849
  %wide.load181 = load <2 x double>, ptr %i.er, align 8, !tbaa !255, !alias.scope !852, !noalias !849
  %i.es = fadd <2 x double> %wide.load178, %wide.load180
  %i.et = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.es, ptr %i.eq, align 8, !tbaa !255, !alias.scope !852, !noalias !849
  store <2 x double> %i.et, ptr %i.er, align 8, !tbaa !255, !alias.scope !852, !noalias !849
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.eu, label %middle.block183, label %vector.body176, !llvm.loop !854

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.ek, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.fa, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !255
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0125 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !255
  %i.ez = fadd double %i.ew, %i.ey
  store double %i.ez, ptr %i.ex, align 8, !tbaa !255
  %i.fa = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.fa, %i.ek
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !855
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common23ColsWiseBuildHistKernelINS0_20GHistBuildingManagerILb0ELb0ELb1EhEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %0, ptr %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(225) %4, ptr noundef byval(%"class.xgboost::common::Span.1") align 8 %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = add nsw i64 %i.o, -1                     ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !407  ; 4 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83   ; 6 uses
  %i.u = add nsw i64 %i.o, -2                     ; 2 uses
  %i.v = lshr i64 %i.u, 5                         ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.w, 1152921504606846974
  br label %bb.b

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa: ; preds = %bb.b
  %i.y = and i64 %i.u, 32
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.epil.preheader:                                  ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.lr.ph
  %.073119.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ] ; 2 uses
  %.0115118.epil.init = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.z = add nuw i64 %.073119.epil.init, 32
  %.sroa.speculated100.epil = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.z)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !129
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = zext i32 %i.ae to i64
  %.sroa.speculated94.epil = tail call i64 @llvm.umax.i64(i64 %.0115118.epil.init, i64 %i.af)
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, %.epil.preheader
  %.sroa.speculated94.lcssa = phi i64 [ %.sroa.speculated94.1, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated94.lcssa, 0
  br i1 %.not.i.i.i.i, label %.lr.ph129, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %.sroa.speculated94.lcssa, 4 ; 3 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !255
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ag, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !255
  %i.ak = ptrtoint ptr %i.ai to i64
  br label %.lr.ph129

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.073119 = phi i64 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ] ; 3 uses
  %.0115118 = phi i64 [ 0, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.al = or disjoint i64 %.073119, 32            ; 2 uses
  %.sroa.speculated100 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.al)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.073119
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %.sroa.speculated94 = tail call i64 @llvm.umax.i64(i64 %.0115118, i64 %i.ar)
  %i.as = add nuw i64 %.073119, 64                ; 3 uses
  %.sroa.speculated100.1 = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.as)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.speculated100.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !129
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.al
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !129
  %i.ax = sub i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %.sroa.speculated94.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated94, i64 %i.ay) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.unr-lcssa, label %bb.b, !llvm.loop !856

.lr.ph129:                                        ; preds = %.noexc80, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0.ph = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ak, %.noexc80 ]
  %.sroa.088.0.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %.noexc80 ] ; 16 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !83  ; 4 uses
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %.lr.ph129.split, label %.lr.ph129.split.us

.lr.ph129.split.us:                               ; preds = %.lr.ph129, %.loopexit.us
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ 32, %.lr.ph129 ] ; 3 uses
  %.076128.us = phi i64 [ %i.bb, %.loopexit.us ], [ 0, %.lr.ph129 ] ; 6 uses
  %umin190 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p) ; 2 uses
  %i.ba = shl i64 %indvar, 5
  %.neg = or disjoint i64 %i.ba, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.p)
  %i.bb = add nuw i64 %.076128.us, 32             ; 3 uses
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.bb)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129 ; 5 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated.us
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !129 ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.be                ; 2 uses
  %i.bj = shl nsw i64 %i.bi, 1                    ; 4 uses
  %i.bk = icmp eq i32 %i.bg, %i.bd                ; 2 uses
  br i1 %i.bk, label %.lr.ph121.us.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit:  ; preds = %.lr.ph129.split.us
  %.idx.i.i.us = shl nsw i64 %i.bi, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i.us, i1 false), !tbaa !255
  br label %.lr.ph121.us.preheader

.lr.ph121.us.preheader:                           ; preds = %.lr.ph129.split.us, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.us.loopexit
  %xtraiter191 = and i64 %umin190, 1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.076128.us
  %i.bm = or disjoint i64 %.076128.us, 1
  %i.bn = icmp eq i64 %umin190, %.neg
  br label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %._crit_edge.us
  %.078122.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph121.us.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.078122.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.d
  %i.br = mul i64 %i.bq, %i.p
  %.idx117.us = shl i64 %i.bp, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx117.us
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !349
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 3 uses
  %i.bv = fpext <2 x float> %i.bt to <2 x double> ; 3 uses
  br i1 %lcmp.mod192.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph121.us
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.076128.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !93
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub i32 %i.bw, %i.bd
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = shl i32 %i.cb, 1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cd ; 2 uses
  %i.cf = load <2 x double>, ptr %i.ce, align 8, !tbaa !255
  %i.cg = fadd <2 x double> %i.cf, %i.bv
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !255
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph121.us
  %.077120.us.unr = phi i64 [ %.076128.us, %.lr.ph121.us ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bn, label %._crit_edge.us, label %.lr.ph121.us.new

.lr.ph121.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph121.us.new
  %.077120.us = phi i64 [ %i.dg, %.lr.ph121.us.new ], [ %.077120.us.unr, %.prol.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.077120.us
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !129
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.077120.us
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !93
  %i.cl = zext i8 %i.ck to i32
  %i.cm = sub i32 %i.ci, %i.bd
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = shl i32 %i.cn, 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.cp ; 2 uses
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !255
  %i.cs = fadd <2 x double> %i.cr, %i.bv
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !255
  %i.ct = add nuw i64 %.077120.us, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !129
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !93
  %i.cy = zext i8 %i.cx to i32
  %i.cz = sub i32 %i.cv, %i.bd
  %i.da = add i32 %i.cz, %i.cy
  %i.db = shl i32 %i.da, 1
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %i.dc ; 2 uses
  %i.de = load <2 x double>, ptr %i.dd, align 8, !tbaa !255
  %i.df = fadd <2 x double> %i.de, %i.bv
  store <2 x double> %i.df, ptr %i.dd, align 8, !tbaa !255
  %i.dg = add nuw i64 %.077120.us, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dg, %umin
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph121.us.new, !llvm.loop !857

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader187, %.lr.ph127.us
  %.0125.us = phi i64 [ %i.dm, %.lr.ph127.us ], [ %.0125.us.ph, %.lr.ph127.us.preheader187 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125.us
  %i.di = load double, ptr %i.dh, align 8, !tbaa !255
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.0125.us ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !255
  %i.dl = fadd double %i.di, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !255
  %i.dm = add nuw i64 %.0125.us, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dm, %i.bj
  br i1 %exitcond137.not, label %.loopexit.us, label %.lr.ph127.us, !llvm.loop !858

.loopexit.us:                                     ; preds = %.lr.ph127.us, %middle.block, %._crit_edge124.split.us
  %i.dn = icmp ult i64 %i.bb, %i.p
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dn, label %.lr.ph129.split.us, label %._crit_edge130.thread155, !llvm.loop !859

._crit_edge.us:                                   ; preds = %.lr.ph121.us.new, %.prol.loopexit
  %i.do = add nuw i64 %.078122.us, 1              ; 2 uses
  %exitcond136.not = icmp eq i64 %i.do, %2
  br i1 %exitcond136.not, label %._crit_edge124.split.us, label %.lr.ph121.us, !llvm.loop !860

._crit_edge124.split.us:                          ; preds = %._crit_edge.us
  %.idx.us = shl nuw nsw i64 %i.be, 4             ; 2 uses
  %i.dp = getelementptr i8, ptr %i.r, i64 %.idx.us ; 3 uses
  br i1 %i.bk, label %.loopexit.us, label %.lr.ph127.us.preheader

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124.split.us
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph127.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us.preheader
  %i.dq = shl nuw nsw i64 %i.bh, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.dq
  %i.dr = sub nsw i64 %i.dq, %.idx.us
  %scevgep162 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %i.dr
  %bound0 = icmp ult ptr %i.dp, %scevgep162
  %bound1 = icmp ult ptr %.sroa.088.0.ph, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph127.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !255, !alias.scope !861
  %wide.load163 = load <2 x double>, ptr %i.dt, align 8, !tbaa !255, !alias.scope !861
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.du, align 8, !tbaa !255, !alias.scope !864, !noalias !861
  %wide.load165 = load <2 x double>, ptr %i.dv, align 8, !tbaa !255, !alias.scope !864, !noalias !861
  %i.dw = fadd <2 x double> %wide.load, %wide.load164
  %i.dx = fadd <2 x double> %wide.load163, %wide.load165
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !255, !alias.scope !864, !noalias !861
  store <2 x double> %i.dx, ptr %i.dv, align 8, !tbaa !255, !alias.scope !864, !noalias !861
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !866

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %.lr.ph127.us.preheader187

.lr.ph127.us.preheader187:                        ; preds = %vector.memcheck, %.lr.ph127.us.preheader, %middle.block
  %.0125.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

.loopexit:                                        ; preds = %.lr.ph127, %middle.block183, %.lr.ph129.split
  %i.dz = icmp ult i64 %i.ec, %i.p
  br i1 %i.dz, label %.lr.ph129.split, label %._crit_edge130, !llvm.loop !859

._crit_edge130:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.ph, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge130.thread155

._crit_edge130.thread155:                         ; preds = %.loopexit.us, %._crit_edge130
  %i.ea = ptrtoint ptr %.sroa.088.0.ph to i64
  %i.eb = sub i64 %.sroa.10.0.ph, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.ph, i64 noundef %i.eb) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge130, %._crit_edge130.thread155
  ret void

.lr.ph129.split:                                  ; preds = %.lr.ph129, %.loopexit
  %.076128 = phi i64 [ %i.ec, %.loopexit ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.ec = add nuw i64 %.076128, 32                ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.ec)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.076128
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.speculated
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !129 ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = sub nsw i64 %i.ei, %i.ef                ; 2 uses
  %i.ek = shl nsw i64 %i.ej, 1                    ; 4 uses
  %i.el = icmp eq i32 %i.eh, %i.ee
  br i1 %i.el, label %.loopexit, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.lr.ph129.split
  %.idx.i.i = shl nsw i64 %i.ej, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.088.0.ph, i8 0, i64 %.idx.i.i, i1 false), !tbaa !255
  %.idx = shl nuw nsw i64 %i.ef, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.ek, 4
  br i1 %min.iters.check173, label %.lr.ph127.preheader186, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph127.preheader
  %i.en = shl nuw nsw i64 %i.ei, 4
  %scevgep167 = getelementptr i8, ptr %i.r, i64 %i.en
  %scevgep168 = getelementptr i8, ptr %.sroa.088.0.ph, i64 %.idx.i.i
  %bound0169 = icmp ult ptr %i.em, %scevgep168
  %bound1170 = icmp ult ptr %.sroa.088.0.ph, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph127.preheader186, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck166
  %n.vec175 = and i64 %i.ek, -4                   ; 3 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %index177 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load178 = load <2 x double>, ptr %i.eo, align 8, !tbaa !255, !alias.scope !867
  %wide.load179 = load <2 x double>, ptr %i.ep, align 8, !tbaa !255, !alias.scope !867
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %index177 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.eq, align 8, !tbaa !255, !alias.scope !870, !noalias !867
  %wide.load181 = load <2 x double>, ptr %i.er, align 8, !tbaa !255, !alias.scope !870, !noalias !867
  %i.es = fadd <2 x double> %wide.load178, %wide.load180
  %i.et = fadd <2 x double> %wide.load179, %wide.load181
  store <2 x double> %i.es, ptr %i.eq, align 8, !tbaa !255, !alias.scope !870, !noalias !867
  store <2 x double> %i.et, ptr %i.er, align 8, !tbaa !255, !alias.scope !870, !noalias !867
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.eu, label %middle.block183, label %vector.body176, !llvm.loop !872

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.ek, %n.vec175
  br i1 %cmp.n184, label %.loopexit, label %.lr.ph127.preheader186

.lr.ph127.preheader186:                           ; preds = %vector.memcheck166, %.lr.ph127.preheader, %middle.block183
  %.0125.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph127.preheader ], [ %n.vec175, %middle.block183 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader186, %.lr.ph127
  %.0125 = phi i64 [ %i.fa, %.lr.ph127 ], [ %.0125.ph, %.lr.ph127.preheader186 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0.ph, i64 %.0125
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !255
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0125 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !255
  %i.ez = fadd double %i.ew, %i.ey
  store double %i.ez, ptr %i.ex, align 8, !tbaa !255
  %i.fa = add nuw i64 %.0125, 1                   ; 2 uses
  %exitcond139.not = icmp eq i64 %i.fa, %i.ek
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph127, !llvm.loop !873
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.1", align 8 ; 4 uses
  %3 = alloca %class.anon.255, align 8            ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !48, !range !60, !noundef !61
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb1ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !50, !range !60, !noundef !61
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb1EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !51    ; 2 uses
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !64
  call void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb0ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !75, !nonnull !61, !align !67 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !68 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !69 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77, !nonnull !61, !align !67 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !68 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !72 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78, !nonnull !61, !align !67 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79, !nonnull !61, !align !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.p, label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEDaSF_.exit, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 18) ; 2 uses
  %i.q = add i64 %.sroa.0.0.copyload.i, -1        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload.i, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68
  %i.t = load i64, ptr %.sroa.2.0.copyload.i, align 8, !tbaa !68
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.u, %i.q
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb0ENS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.m, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.o)
  br label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEDaSF_.exit

bb.i:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEplEl.exit.i.i.i
  %i.w = sub i64 %.sroa.0.0.copyload.i, %.sroa.speculated.i.i.i ; 3 uses
  switch i64 %i.w, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i [
    i64 -1, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i
    i64 0, label %bb.j
  ]

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i: ; preds = %bb.i
  br label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i, %bb.i
  %i.x = phi i64 [ %.sroa.0.0.copyload.i, %bb.i ], [ %i.w, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.fold.split.i.i ]
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb1ENS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %i.x, ptr nonnull %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(225) %i.m, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %i.o)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EE7subspanEmm.exit.thread.i.i, %bb.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload.i, i64 %i.w
  tail call void @_ZN7xgboost6common23RowsWiseBuildHistKernelILb0ENS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS4_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS4_INS6_IdEELm18446744073709551615EEE(i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, i64 %.sroa.speculated.i.i.i, ptr nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(225) %i.m, ptr noundef nonnull byval(%"class.xgboost::common::Span.1") align 8 %2)
  br label %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEDaSF_.exit

_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEDaSF_.exit: ; preds = %bb.g, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_ZZN7xgboost6common9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS2_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS2_INS4_IdEELm18446744073709551615EEEbENKUlT_E_clINS0_20GHistBuildingManagerILb0ELb0ELb0EtEEEEDaSF_.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_20GHistBuildingManagerILb0ELb0ELb0EtE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS6_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS6_INS8_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSJ_EUlSJ_E_EEDaNS0_11BinTypeSizeESO_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !874, !nonnull !61
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !876, !nonnull !61, !align !67
  tail call void @_ZN7xgboost6common20GHistBuildingManagerILb0ELb0ELb0EhE18DispatchAndExecuteIZNS0_9BuildHistILb0EEEvNS0_4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEENS5_IKmLm18446744073709551615EEERKNS_16GHistIndexMatrixENS5_INS7_IdEELm18446744073709551615EEEbEUlT_E_EEvRKNS0_12RuntimeFlagsEOSI_(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c), !inline_history !877
  br label %bb.h

bb.c:                                             ; preds = %bb.a
end_hunk_3
