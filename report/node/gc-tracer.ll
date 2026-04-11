inline.NumInlined: 1245
inline.NumDeleted: 558
begin_hunk_0_@_ZNK2v88internal8GCTracer8PrintNVPEv:bb.a
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.fu) #20 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 2 uses
  %8 = load <2 x double>, ptr %i.fx, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1.i = load double, ptr %9, align 8
  %10 = insertelement <2 x double> %8, double %.val.i1.i, i64 1 ; 2 uses
  %11 = fcmp ogt <2 x double> %10, splat (double 0x41D0000000000000)
  %12 = select <2 x i1> %11, <2 x double> splat (double 0x41D0000000000000), <2 x double> %10 ; 2 uses
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %12, %shift
  %13 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #20 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.49) #20
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %13) #20 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %.val.i = load double, ptr %i.fx, align 8       ; 2 uses
  %i.ga = fcmp ogt double %.val.i, 0x41D0000000000000
end_hunk_0
begin_hunk_1_@_ZN2v88internal8GCTracer25ReportFullCycleToRecorderEv:bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %i.jp, ptr %i.jq, align 8
  %i.jr = icmp eq i64 %i.io, 0
  %i.js = sitofp i64 %i.it to double              ; 2 uses
  %i.jt = sitofp i64 %i.io to double
  %i.ju = fdiv double %i.js, %i.jt
  %storemerge43 = select i1 %i.jr, double 0.000000e+00, double %i.ju
end_hunk_1
begin_hunk_2_@_ZN2v88internal8GCTracer25ReportFullCycleToRecorderEv:bb.a

bb.t:                                             ; preds = %bb.s
  %i.jw = load i64, ptr %i.as, align 8
  %18 = load i64, ptr %i.gw, align 8
  %19 = sitofp i64 %18 to double
  %i.jx = sitofp i64 %i.jw to double
  %20 = insertelement <2 x double> poison, double %i.js, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x double> poison, double %i.jx, i64 0
  %23 = insertelement <2 x double> %22, double %19, i64 1
  %24 = fdiv <2 x double> %21, %23
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %25 = phi <2 x double> [ %24, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %26 = extractelement <2 x double> %25, i64 0
  store double %26, ptr %i.av, align 8
  %27 = extractelement <2 x double> %25, i64 1
  store double %27, ptr %i.ax, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 3752 ; 4 uses
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = icmp eq i64 %i.jz, 0
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8GCTracer41AllocationThroughputInBytesPerMillisecondEv
define hidden noundef double @_ZNK2v88internal8GCTracer41AllocationThroughputInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %1 = load <2 x double>, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1 = load double, ptr %2, align 8
  %3 = insertelement <2 x double> %1, double %.val.i1, i64 1 ; 2 uses
  %4 = fcmp ogt <2 x double> %3, splat (double 0x41D0000000000000)
  %5 = select <2 x i1> %4, <2 x double> splat (double 0x41D0000000000000), <2 x double> %3 ; 2 uses
  %shift = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %5, %shift
  %6 = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
end_hunk_3
