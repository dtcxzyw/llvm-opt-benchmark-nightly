inline.NumInlined: 141
inline.NumDeleted: 62
begin_hunk_0_@main:bb.a
  %6 = alloca %struct.Ray, align 16               ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %struct.Vec, align 16               ; 5 uses
  %8 = alloca %struct.Ray, align 16               ; 8 uses
  %i.b = icmp eq i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@main:bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 512)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.aw = fadd double %i.aa, %i.av
  %i.ax = fadd double %i.aw, 2.621440e+05
  %sqrt.i38 = call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = insertelement <4 x double> <double -4.000000e+00, double poison, double poison, double 5.120000e+02>, double %i.ay, i64 1 ; 2 uses
  %10 = insertelement <4 x double> %9, double %i.au, i64 2
  %11 = shufflevector <4 x double> %9, <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, <4 x i32> <i32 4, i32 poison, i32 1, i32 1>
  %12 = insertelement <4 x double> %11, double %i.z, i64 1
  %13 = fmul <4 x double> %10, %12
  store <4 x double> %13, ptr %i.n, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !65
  store double %i.aq, ptr %3, align 8, !tbaa !17, !noalias !65
end_hunk_2
begin_hunk_3_@main:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bm = load double, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8, !noalias !82
  %i.bn = fmul double %i.bc, %i.bm
  %i.bo = load double, ptr %i.n, align 16, !tbaa !8, !noalias !85
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = load double, ptr @delta, align 8, !tbaa !11 ; 2 uses
  %i.br = fmul double %i.bi, %i.bq
  %i.bs = fadd double %i.bp, %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bt = load <2 x double>, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !11, !noalias !82
  %i.bu = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, %i.bt
end_hunk_3
