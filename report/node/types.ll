inline.NumInlined: 1968
inline.NumDeleted: 731
begin_hunk_0_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv:bb.a
.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv:bb.a
  %i.q = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load double, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a
  %..i = select i1 %.not10.i, double 0x7FF8000000000000, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.f:                                             ; preds = %bb.b
  %1 = fcmp olt double %i.g, -0.000000e+00
  %.sroa.speculated5.i = select i1 %1, double %i.g, double -0.000000e+00
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load double, ptr %2, align 8               ; 2 uses
  %4 = fcmp ogt double %3, -0.000000e+00
  %.sroa.speculated5.i5 = select i1 %4, double %3, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

bb.g:                                             ; preds = %bb.c
  %5 = fcmp olt double %i.o, -0.000000e+00
  %.sroa.speculated.i = select i1 %5, double %i.o, double -0.000000e+00
  %i.t = zext i8 %i.k to i64
  %i.u = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %6 = fcmp ogt double %i.w, -0.000000e+00
  %.sroa.speculated.i3 = select i1 %6, double %i.w, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit: ; preds = %.thread17, %.thread, %bb.e, %bb.f, %bb.g
  %.0.i9 = phi double [ %..i, %bb.e ], [ %i.g, %.thread ], [ %.sroa.speculated5.i, %bb.f ], [ %.sroa.speculated.i, %bb.g ], [ %i.o, %.thread17 ]
  %.0.i4 = phi double [ %..i, %bb.e ], [ %i.i, %.thread ], [ %.sroa.speculated5.i5, %bb.f ], [ %.sroa.speculated.i3, %bb.g ], [ %i.s, %.thread17 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.0.i9, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.0.i4, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE14AllocateOnHeapEPNS0_7FactoryE:bb.a
.thread.i:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.d:                                             ; preds = %bb.c
  %2 = fcmp olt double %i.h, -0.000000e+00
  %.sroa.speculated5.i.i = select i1 %2, double %i.h, double -0.000000e+00
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load double, ptr %3, align 8               ; 2 uses
  %5 = fcmp ogt double %4, -0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %5, double %4, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %bb.d
  %.0.i9.i = phi double [ %.sroa.speculated5.i.i, %bb.d ], [ %i.h, %.thread.i ]
  %.0.i4.i = phi double [ %.sroa.speculated5.i5.i, %bb.d ], [ %i.j, %.thread.i ]
  %i.k = tail call ptr @_ZN2v88internal22TorqueGeneratedFactoryINS0_7FactoryEE29NewTurboshaftFloat64RangeTypeEjjddNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.d, i32 noundef 0, double noundef %.0.i9.i, double noundef %.0.i4.i, i8 noundef zeroext 0) #18
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
end_hunk_2
