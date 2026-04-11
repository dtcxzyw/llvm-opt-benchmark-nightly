inline.NumInlined: 1968
inline.NumDeleted: 731
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv:bb.a
.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8
  %1 = insertelement <2 x double> poison, double %i.g, i64 0
  %2 = insertelement <2 x double> %1, double %i.i, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv:bb.a
  %i.q = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load double, ptr %i.r, align 8
  %3 = insertelement <2 x double> poison, double %i.o, i64 0
  %4 = insertelement <2 x double> %3, double %i.s, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  %..i = select i1 %.not10.i, double 0x7FF8000000000000, double -0.000000e+00
  %5 = insertelement <2 x double> poison, double %..i, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.f:                                             ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load double, ptr %7, align 8
  %9 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.g, i64 0
  %10 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %8, i64 1 ; 2 uses
  %11 = fcmp olt <2 x double> %9, %10
  %12 = insertelement <2 x double> %10, double %i.g, i64 0
  %13 = select <2 x i1> %11, <2 x double> %12, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.g:                                             ; preds = %bb.c
  %i.t = zext i8 %i.k to i64
  %i.u = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load double, ptr %i.v, align 8
  %14 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.o, i64 0
  %15 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.w, i64 1 ; 2 uses
  %16 = fcmp olt <2 x double> %14, %15
  %17 = insertelement <2 x double> %15, double %i.o, i64 0
  %18 = select <2 x i1> %16, <2 x double> %17, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %.thread17, %.thread, %bb.e, %bb.f, %bb.g
  %19 = phi <2 x double> [ %6, %bb.e ], [ %2, %.thread ], [ %13, %bb.f ], [ %18, %bb.g ], [ %4, %.thread17 ] ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %20, 0
  %21 = extractelement <2 x double> %19, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %21, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE14AllocateOnHeapEPNS0_7FactoryE:bb.a
.thread.i:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8
  %2 = insertelement <2 x double> poison, double %i.h, i64 0
  %3 = insertelement <2 x double> %2, double %i.j, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.d:                                             ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load double, ptr %4, align 8
  %6 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.h, i64 0
  %7 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %5, i64 1 ; 2 uses
  %8 = fcmp olt <2 x double> %6, %7
  %9 = insertelement <2 x double> %7, double %i.h, i64 0
  %10 = select <2 x i1> %8, <2 x double> %9, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %bb.d
  %11 = phi <2 x double> [ %10, %bb.d ], [ %3, %.thread.i ] ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = extractelement <2 x double> %11, i64 1
  %i.k = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef %12, double noundef %13, i8 noundef zeroext 0) #18
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
end_hunk_2
