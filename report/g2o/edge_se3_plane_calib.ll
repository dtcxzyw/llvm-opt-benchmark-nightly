inline.NumInlined: 7154
inline.NumDeleted: 3644
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS6_S8_EEmRKS6_:bb.a
  br i1 %lcmp.mod269.not, label %.lr.ph.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i97.prol

.lr.ph.i.i.i.i97.prol:                            ; preds = %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i97.prol
  %.014.i.i.i.i98.prol = phi ptr [ %i.lr, %.lr.ph.i.i.i.i97.prol ], [ %i.lp, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ] ; 2 uses
  %.01113.i.i.i.i99.prol = phi i64 [ %i.lq, %.lr.ph.i.i.i.i97.prol ], [ %2, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ]
  %prol.iter270 = phi i64 [ %prol.iter270.next, %.lr.ph.i.i.i.i97.prol ], [ 0, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.014.i.i.i.i98.prol, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lq = add i64 %.01113.i.i.i.i99.prol, -1      ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98.prol, i64 32 ; 2 uses
  %prol.iter270.next = add i64 %prol.iter270, 1   ; 2 uses
  %prol.iter270.cmp.not = icmp eq i64 %prol.iter270.next, %xtraiter268
  br i1 %prol.iter270.cmp.not, label %.lr.ph.i.i.i.i97.prol.loopexit, label %.lr.ph.i.i.i.i97.prol, !llvm.loop !187

.lr.ph.i.i.i.i97.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i97.prol, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit
  %.014.i.i.i.i98.unr = phi ptr [ %i.lp, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ], [ %i.lr, %.lr.ph.i.i.i.i97.prol ]
  %.01113.i.i.i.i99.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE11_M_allocateEm.exit ], [ %i.lq, %.lr.ph.i.i.i.i97.prol ]
  %i.ls = icmp ult i64 %2, 4
  br i1 %i.ls, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97.prol.loopexit, %.lr.ph.i.i.i.i97
  %.014.i.i.i.i98 = phi ptr [ %i.lx, %.lr.ph.i.i.i.i97 ], [ %.014.i.i.i.i98.unr, %.lr.ph.i.i.i.i97.prol.loopexit ] ; 5 uses
  %.01113.i.i.i.i99 = phi i64 [ %i.lw, %.lr.ph.i.i.i.i97 ], [ %.01113.i.i.i.i99.unr, %.lr.ph.i.i.i.i97.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.014.i.i.i.i98, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.lt, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.lu, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.lv, ptr noundef nonnull align 8 dereferenceable(26) %3, i64 24, i1 false)
  %i.lw = add i64 %.01113.i.i.i.i99, -4           ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i98, i64 128
  %.not.i.i.i.i100.3 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i.i100.3, label %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, label %.lr.ph.i.i.i.i97, !llvm.loop !180

_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102: ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.la, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i103

.lr.ph.i.i.i.i.i103:                              ; preds = %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102, %.lr.ph.i.i.i.i.i103
  %.015.i.i.i.i.i = phi ptr [ %i.lz, %.lr.ph.i.i.i.i.i103 ], [ %i.lo, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i103 ], [ %i.la, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(26) %.01214.i.i.i.i.i, i64 24, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 32 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.ly, %1
  br i1 %.not.i.i.i.i.i104, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i103, !llvm.loop !188

_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i103, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102
  %.0.lcssa.i.i.i.i.i105 = phi ptr [ %i.lo, %_ZSt24__uninitialized_fill_n_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEEmS6_S6_ET_S8_T0_RKT1_RSaIT2_E.exit102 ], [ %i.lz, %.lr.ph.i.i.i.i.i103 ]
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %.0.lcssa.i.i.i.i.i105, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i106 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i106, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.lr.ph.i.i.i.i.i107
  %.015.i.i.i.i.i108 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i107 ], [ %i.ma, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i109 = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i107 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.015.i.i.i.i.i108, ptr noundef nonnull align 8 dereferenceable(26) %.01214.i.i.i.i.i109, i64 24, i1 false)
  %i.mb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i109, i64 32 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i108, i64 32 ; 2 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.mb, %i.d
  br i1 %.not.i.i.i.i.i110, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112, label %.lr.ph.i.i.i.i.i107, !llvm.loop !188

_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112: ; preds = %.lr.ph.i.i.i.i.i107, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.0.lcssa.i.i.i.i.i111 = phi ptr [ %i.ma, %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.mc, %.lr.ph.i.i.i.i.i107 ]
  %.not.i113 = icmp eq ptr %i.la, null
  br i1 %.not.i113, label %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112
  %i.md = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.lb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.mf) #28
  br label %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES7_SaIS6_EET0_T_SA_S9_RT1_.exit112, %bb.l
  store ptr %i.lo, ptr %0, align 8, !tbaa !54
  store ptr %.0.lcssa.i.i.i.i.i111, ptr %i.c, align 8, !tbaa !66
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %i.lj
  store ptr %i.mg, ptr %i.a, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4fillIPN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEES6_EvT_S8_RKT0_.exit, %_ZNSt12_Vector_baseIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILi3ENS_7Plane3DEE20computeQuadraticFormERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEERKNS4_IdLi3ELi1ELi0ELi3ELi1EEE(ptr noundef nonnull align 16 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.1167", align 8 ; 11 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.909", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.1167", align 8 ; 11 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.909", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix.1014", align 8 ; 21 uses
  %13 = alloca %"class.Eigen::Product.1023", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Map.899", align 8   ; 9 uses
  %15 = alloca %"class.Eigen::Product.1049", align 8 ; 6 uses
  %16 = alloca %"class.Eigen::Product.1064", align 8 ; 8 uses
  %17 = alloca %"class.Eigen::Product.1049", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !63  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ar = ptrtoint ptr %12 to i64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.b

._crit_edge92:                                    ; preds = %bb.aa, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph91, %bb.aa
  %i.as = phi ptr [ %i.g, %.lr.ph91 ], [ %i.jn, %bb.aa ] ; 2 uses
  %i.at = phi ptr [ %i.f, %.lr.ph91 ], [ %i.jo, %bb.aa ]
  %.088 = phi i64 [ 0, %.lr.ph91 ], [ %.pre-phi, %bb.aa ] ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.088
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !69, !range !85, !noundef !86
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %._crit_edge95, label %bb.c

._crit_edge95:                                    ; preds = %bb.b
  %.pre96 = add nuw i64 %.088, 1
  br label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.088 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  store ptr %1, ptr %i.i, align 8, !tbaa !189, !alias.scope !191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !128 ; 6 uses
  %i.bc = icmp sgt i64 %i.bb, 3074457345618258602
  br i1 %i.bc, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

.invoke:                                          ; preds = %bb.c, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.e
  %i.bd = call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !40
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.c
  %18 = mul nsw i64 %i.bb, 3
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_9TransposeIKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.be = icmp sgt i64 %i.bb, 0
  br i1 %i.be, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.bf = icmp samesign ugt i64 %18, 2305843009213693951
  br i1 %i.bf, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.bg = mul i64 %i.bb, 24
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #32 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.invoke, label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.bh, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %12, align 8, !tbaa !194
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_9TransposeIKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_9TransposeIKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.bb, ptr %i.k, align 8, !tbaa !196
  store i64 3, ptr %i.l, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEEEENS2_IdLi3ELi3ELi0ELi3ELi3EEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSD_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %.loopexit

common.resume:                                    ; preds = %bb.z, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.f ], [ %.pn53.pn.pn.pn.pn, %bb.z ]
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_9TransposeIKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bj = load ptr, ptr %12, align 8, !tbaa !194
  call void @free(ptr noundef %i.bj) #27
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_7ProductINS_9TransposeIKNS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.av)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.bq = sext i32 %i.bl to i64                   ; 3 uses
  store ptr %i.bp, ptr %14, align 8, !tbaa !117
  store i64 %i.bq, ptr %i.m, align 8, !tbaa !128
  store i64 %i.bq, ptr %i.n, align 8, !tbaa !128
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.av)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %12, ptr %15, align 8, !tbaa !198, !alias.scope !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.o, ptr noundef nonnull align 8 dereferenceable(26) %i.ba, i64 24, i1 false)
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %i.bw = load i64, ptr %i.m, align 8, !tbaa !128 ; 2 uses
  %i.bx = add nsw i64 %i.bw, %i.bv
  %i.by = load i64, ptr %i.n, align 8, !tbaa !128
  %i.bz = add nsw i64 %i.bx, %i.by
  %i.ca = icmp slt i64 %i.bz, 20
  %i.cb = icmp sgt i64 %i.bv, 0
  %or.cond.i.i.i.i = and i1 %i.cb, %i.ca
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(26) %i.o, i64 24, i1 false)
  store ptr %12, ptr %7, align 8, !tbaa !198
  %i.cc = load ptr, ptr %12, align 8, !tbaa !194
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !196
  store ptr %i.cc, ptr %i.r, align 8, !tbaa !203
  store i64 %i.cd, ptr %i.s, align 8, !tbaa !205
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !117
  store ptr %i.ce, ptr %i.t, align 8, !tbaa !206
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !128
  store i64 %i.cf, ptr %i.u, align 8, !tbaa !128
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !197
  store i64 %i.cg, ptr %i.w, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ch = load ptr, ptr %14, align 8, !tbaa !117
  store ptr %i.ch, ptr %8, align 8, !tbaa !206
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %8, ptr %9, align 8, !tbaa !214
  store ptr %7, ptr %i.y, align 8, !tbaa !216
  store ptr %10, ptr %i.z, align 8, !tbaa !218
  store ptr %14, ptr %i.aa, align 8, !tbaa !220
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductIS6_S9_Li1EEEEENS0_13add_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !42
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEENS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS3_RKS7_RKd(ptr noundef nonnull align 8 dereferenceable(26) %14, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(26) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc59 unwind label %bb.n

.noexc59:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %.sroa.076.sroa.0.0.copyload = load ptr, ptr %i.ba, align 8
  %.sroa.076.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.076.sroa.5.0.copyload = load i64, ptr %.sroa.076.sroa.5.0..sroa_idx, align 8
  %i.ci = icmp sgt i32 %i.bl, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.ck = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %.sroa.076.sroa.5.0.copyload
  %i.cl = getelementptr inbounds [8 x i8], ptr %.sroa.076.sroa.0.0.copyload, i64 %i.ck ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 1, !tbaa !8
  %i.cn = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.co = fmul <2 x double> %i.cm, %i.cn          ; 2 uses
  %shift = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.co, %shift
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !42
  %i.cs = load double, ptr %i.ab, align 8, !tbaa !42
  %i.ct = fmul double %i.cr, %i.cs
  %i.cu = fadd double %i.cp, %i.ct
  %i.cv = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cw = fadd double %i.cv, %i.cu
  store double %i.cw, ptr %i.cj, align 8, !tbaa !42
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.bq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !221

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %.04686 = add nuw i64 %.088, 1                  ; 3 uses
  %i.cy = load ptr, ptr %i.e, align 16, !tbaa !63
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %.04686, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.df = trunc i64 %.088 to i32
  br label %bb.o

._crit_edge:                                      ; preds = %bb.y, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS_9TransposeIKNS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ES5_EEEENS2_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEERS6_RKNS7_IT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.dg = load ptr, ptr %12, align 8, !tbaa !194
  call void @free(ptr noundef %i.dg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %.pre = load ptr, ptr %i.e, align 16, !tbaa !63
  %.pre94 = load ptr, ptr %i.d, align 8, !tbaa !64
  br label %bb.aa

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_9TransposeIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEENS0_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.z

bb.o:                                             ; preds = %.lr.ph, %bb.y
  %i.dk = phi ptr [ %i.cz, %.lr.ph ], [ %i.jg, %bb.y ]
  %.04687 = phi i64 [ %.04686, %.lr.ph ], [ %.046, %bb.y ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.04687
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 100
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !69, !range !85, !noundef !86
  %i.dp = trunc nuw i8 %i.do to i1
end_hunk_0
