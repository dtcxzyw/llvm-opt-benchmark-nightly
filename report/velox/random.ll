inline.NumInlined: 7096
inline.NumDeleted: 2467
begin_hunk_0_@_ZNSt6vectorIN5arrow19DayTimeIntervalType15DayMillisecondsESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a

vector.ph199:                                     ; preds = %vector.memcheck195
  %n.vec201 = and i64 %2, -4                      ; 3 uses
  %4 = shl i64 %n.vec201, 3
  %5 = getelementptr i8, ptr %i.cz, i64 %4
  %6 = and i64 %2, 3
  %7 = load i64, ptr %3, align 4, !alias.scope !3169
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %7, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5arrow19DayTimeIntervalType15DayMillisecondsESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  br i1 %cmp.n209, label %_ZSt24__uninitialized_fill_n_aIPN5arrow19DayTimeIntervalType15DayMillisecondsEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82.preheader

.lr.ph.i.i.i.i82.preheader:                       ; preds = %vector.memcheck195, %_ZNSt12_Vector_baseIN5arrow19DayTimeIntervalType15DayMillisecondsESaIS2_EE11_M_allocateEm.exit, %middle.block208
  %.09.i.i.i.i83.ph = phi ptr [ %i.cz, %vector.memcheck195 ], [ %i.cz, %_ZNSt12_Vector_baseIN5arrow19DayTimeIntervalType15DayMillisecondsESaIS2_EE11_M_allocateEm.exit ], [ %5, %middle.block208 ] ; 2 uses
  %.068.i.i.i.i84.ph = phi i64 [ %2, %vector.memcheck195 ], [ %2, %_ZNSt12_Vector_baseIN5arrow19DayTimeIntervalType15DayMillisecondsESaIS2_EE11_M_allocateEm.exit ], [ %6, %middle.block208 ] ; 4 uses
  %i.dg = add i64 %.068.i.i.i.i84.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i84.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
