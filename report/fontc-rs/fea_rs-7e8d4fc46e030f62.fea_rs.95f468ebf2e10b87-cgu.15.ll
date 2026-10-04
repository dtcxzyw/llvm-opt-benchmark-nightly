Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.15?download=true
inline.NumInlined: 978
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECscScJTt9VrQp_6fea_rs:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !3818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3819
  call void @_RNvXsj_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !3820
  %i.f = load i8, ptr %i.b, align 8, !range !3821, !noalias !3819, !noundef !5 ; 2 uses
  %.not16.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not16.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.m ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !3819 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3819 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3819 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3819 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3819 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3822
  call void @_RNvXsj_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !3823
  %i.h = load i8, ptr %i.a, align 8, !range !3821, !noalias !3822, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !3822 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3822 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3822 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3822 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3822 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ult i8 %i.h, 6             ; 2 uses
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 0, i64 %i.o
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.m [
    i64 0, label %bb.e
    i64 4, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.g, %i.h
  br i1 %i.r, label %bb.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %.split31.i.i.i.i.i.i.i.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %.split29.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.s, label %.split27.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split27.i.i.i.i.i.i.i.i:                         ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !3824, !noalias !3825
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !3826, !noalias !3825
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs5Xr050g3D4S_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split31.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.x = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i = freeze i1 %i.x
  br i1 %cond.fr32.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.y, label %.split33.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split33.i.i.i.i.i.i.i.i:                         ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !3827, !noalias !3825
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit33.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit33.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !3828, !noalias !3825
  %i.ab = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ac = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split29.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  %i.ad = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr30.i.i.i.i.i.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr30.i.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit33.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !3829, !noalias !3825
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.l:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.af, label %.split35.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

.split35.i.i.i.i.i.i.i.i:                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !3830, !noalias !3831
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs5Xr050g3D4S_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit27.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !3832, !noalias !3825
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs5Xr050g3D4S_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3819
  call void @_RNvXsj_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.ai = load i8, ptr %i.b, align 8, !range !3821, !noalias !3819, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs5Xr050g3D4S_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %bb.l, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit33.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %.split33.i.i.i.i.i.i.i.i, %bb.j, %.split31.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCsf3Ta7LF998c_4core3cmp5implsRNtNtNtCs5Xr050g3D4S_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCscScJTt9VrQp_6fea_rs.exit27.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.split27.i.i.i.i.i.i.i.i, %bb.h, %bb.f, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3819
  br label %_RINvXNtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECscScJTt9VrQp_6fea_rs.exit

.loopexit.i.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3833
  call void @_RNvXsj_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.aj = load i8, ptr %i.c, align 8, !range !3821, !noalias !3833, !noundef !5
  %.not4.i.not.i.i = icmp eq i8 %i.aj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3833
  br label %_RINvXNtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECscScJTt9VrQp_6fea_rs.exit

_RINvXNtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECscScJTt9VrQp_6fea_rs.exit: ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not4.i.not.i.i, %.loopexit.i.i.i ], [ false, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3rev3RevNtNtCs5Xr050g3D4S_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECscScJTt9VrQp_6fea_rs.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i16 4, 9) i16 @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer6number(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 8 uses
  br i1 %1, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = icmp ult i64 %i.d, %i.b
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.g = load ptr, ptr %0, align 8, !alias.scope !3842, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi i64 [ %i.d, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !3842, !noundef !5
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !3842
  %exitcond.not.i = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not.i, label %.critedge, label %bb.b

_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit: ; preds = %bb.b, %._crit_edge
  %2 = phi i64 [ %i.d, %._crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = icmp ult i64 %2, %i.b
  br i1 %i.n, label %bb.f, label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.d, %i.b                  ; 3 uses
  br i1 %i.o, label %bb.e, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.d
  %i.r = load i8, ptr %i.q, align 1, !noundef !5  ; 2 uses
  %.not = icmp eq i8 %i.r, 46
  br i1 %.not, label %._crit_edge, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit

bb.f:                                             ; preds = %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  %i.u = load i8, ptr %i.t, align 1, !noundef !5
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw i64 %2, 1                        ; 3 uses
  store i64 %i.w, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  %i.x = icmp ult i64 %i.w, %i.b
  br i1 %i.x, label %.lr.ph.i22, label %.critedge

.lr.ph.i22:                                       ; preds = %bb.g, %bb.h
  %i.y = phi i64 [ %i.ad, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !3843, !noundef !5
  %i.ab = add i8 %i.aa, -48
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.i22
  %i.ad = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ad, ptr %i.e, align 8, !alias.scope !3843
  %exitcond.not.i23 = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not.i23, label %.critedge, label %.lr.ph.i22

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.t, %bb.s, %.split.i, %.thread14.i, %bb.c, %bb.h, %.lr.ph.i22, %bb.j, %.thread36, %.split, %bb.g, %bb.i, %bb.p, %bb.k, %bb.f, %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit
  %.sroa.0.0 = phi i16 [ 7, %.thread36 ], [ 4, %bb.k ], [ 4, %bb.c ], [ 4, %bb.f ], [ 4, %bb.i ], [ 4, %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit ], [ 7, %bb.p ], [ 8, %bb.g ], [ 7, %bb.j ], [ 7, %.split ], [ 8, %bb.h ], [ 6, %bb.t ], [ 8, %.lr.ph.i22 ], [ 6, %.thread14.i ], [ 6, %.split.i ], [ 6, %bb.s ], [ 5, %bb.l ], [ 5, %bb.m ]
  ret i16 %.sroa.0.0

_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.d, %bb.e
  %storemerge = phi i8 [ 0, %bb.d ], [ %i.r, %bb.e ]
  switch i8 %storemerge, label %bb.i [
    i8 120, label %bb.j
    i8 88, label %bb.j
  ]

bb.i:                                             ; preds = %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit
  br i1 %i.o, label %bb.k, label %.critedge

bb.j:                                             ; preds = %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit, %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit
  %i.ae = zext i1 %i.o to i64
  %i.af = add i64 %i.d, %i.ae                     ; 4 uses
  store i64 %i.af, ptr %i.c, align 8
  %i.ag = icmp ult i64 %i.af, %i.b
  br i1 %i.ag, label %bb.n, label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = add i8 %i.aj, -48
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i26, label %.critedge

.lr.ph.i26:                                       ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3844)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i26
  %i.am = phi i64 [ %i.d, %.lr.ph.i26 ], [ %i.aq, %bb.m ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !3844, !noundef !5
  %i.ap = and i8 %i.ao, -8
  %or.cond.i27 = icmp eq i8 %i.ap, 48
  br i1 %or.cond.i27, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.aq = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.c, align 8, !alias.scope !3844
  %exitcond.not.i28 = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond.not.i28, label %.critedge, label %bb.l

bb.n:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.af
  %i.at = load i8, ptr %i.as, align 1, !noundef !5 ; 5 uses
  %i.au = icmp ugt i8 %i.at, 64
  %i.av = icmp samesign ult i8 %i.at, 71
  br i1 %i.au, label %bb.o, label %.thread36

.thread36:                                        ; preds = %bb.n
  %i.aw = add nsw i8 %i.at, -48
  %.sroa.011.0 = icmp ult i8 %i.aw, 10
  br i1 %.sroa.011.0, label %bb.q, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ugt i8 %i.at, 96
  br i1 %i.ax, label %.split, label %bb.p

.split:                                           ; preds = %bb.o
  %i.ay = icmp ult i8 %i.at, 103
  br i1 %i.ay, label %.lr.ph.i30.preheader, label %.critedge

bb.p:                                             ; preds = %bb.o
  br i1 %i.av, label %.lr.ph.i30.preheader, label %.critedge

bb.q:                                             ; preds = %.thread36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  br label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %bb.p, %.split, %bb.q
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader, %bb.t
  %i.az = phi i64 [ %i.bh, %bb.t ], [ %i.af, %.lr.ph.i30.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !3845, !noundef !5 ; 5 uses
  %i.bc = icmp ugt i8 %i.bb, 64
  %i.bd = icmp samesign ult i8 %i.bb, 71
  br i1 %i.bc, label %bb.r, label %.thread14.i

.thread14.i:                                      ; preds = %.lr.ph.i30
  %i.be = add nsw i8 %i.bb, -48
  %.sroa.07.0.i = icmp ult i8 %i.be, 10
  br i1 %.sroa.07.0.i, label %bb.t, label %.critedge

bb.r:                                             ; preds = %.lr.ph.i30
  %i.bf = icmp ugt i8 %i.bb, 96
  br i1 %i.bf, label %.split.i, label %bb.s

.split.i:                                         ; preds = %bb.r
  %i.bg = icmp ult i8 %i.bb, 103
  br i1 %i.bg, label %bb.t, label %.critedge

bb.s:                                             ; preds = %bb.r
  br i1 %i.bd, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s, %.split.i, %.thread14.i
  %i.bh = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !3845
  %exitcond.not.i31 = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i31, label %.critedge, label %.lr.ph.i30
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer9eat_ident(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.b
  br i1 %i.d, label %.lr.ph, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit
  %i.f = phi i64 [ %.promoted, %.lr.ph ], [ %i.i, %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  switch i8 %i.h, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit [
    i8 0, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 32, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 13, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 12, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 11, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 10, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 9, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 123, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 93, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 92, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 91, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 64, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 63, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 62, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 61, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 60, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 59, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 33, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 44, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 43, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 42, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 41, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 40, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 39, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
    i8 125, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread
  ]

_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread: ; preds = %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  ret void

_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit: ; preds = %bb.b
  %i.i = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.i, ptr %i.c, align 8
  %exitcond.not = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not, label %_RNvNtNtCscScJTt9VrQp_6fea_rs5parse5lexer10is_special.exit.thread, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse6parserNtB4_6Parser10eat_trivia(ptr noalias nofree noundef align 8 dereferenceable(304) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCscScJTt9VrQp_6fea_rs5parse5lexer6lexeme6LexemeE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullEBN_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = load i64, ptr %i.d, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i16, ptr %i.i, align 8, !range !4, !noundef !5
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = invoke noundef i16 @_RNvMs_NtNtNtCscScJTt9VrQp_6fea_rs5parse5lexer6lexemeNtB4_4Kind13to_token_kind(i16 noundef %i.j)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtNtNtCscScJTt9VrQp_6fea_rs5parse5lexer6lexeme6LexemeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  store i64 0, ptr %i.m, align 8
  ret void
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse6parserNtB4_6Parser3nth:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i16, ptr %i.e, align 8, !range !4, !noundef !5
  %i.g = insertvalue { i64, i16 } poison, i64 %i.d, 0
  %i.h = insertvalue { i64, i16 } %i.g, i16 %i.f, 1
  ret { i64, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse6parserNtB4_6Parser6at_eof(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !range !4, !alias.scope !3873, !noundef !5
  %i.c = icmp eq i16 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse6parserNtB4_6Parser7advance(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  tail call void @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse6parserNtB4_6Parser10eat_trivia(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = add i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = add i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.l, i64 168, i1 false), !alias.scope !3904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.d, align 8
  store i64 0, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 273 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 274 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCscScJTt9VrQp_6fea_rs5parse5lexer6lexeme6LexemeE8push_mutBN_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.u = load i64, ptr %i.n, align 8, !alias.scope !3905, !noundef !5 ; 11 uses
  %i.v = load i64, ptr %i.o, align 8, !alias.scope !3905, !noundef !5 ; 15 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr %i.p, align 8, !range !14, !alias.scope !3905
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.m, align 8, !alias.scope !3905, !nonnull !5, !noundef !5 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !noalias !3905, !noundef !5 ; 5 uses
  %i.aa = add nuw i64 %i.u, 1                     ; 13 uses
  store i64 %i.aa, ptr %i.n, align 8, !alias.scope !3905
  %i.ab = icmp eq i8 %i.z, 0
  %.pre43 = load i8, ptr %i.p, align 8, !range !14, !alias.scope !3905 ; 24 uses
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %.pre43, 2
  br i1 %i.ac, label %bb.g, label %bb.f

bb.e:                                             ; preds = %._crit_edge, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aa, %bb.y, %bb.x, %bb.s, %bb.c
  %i.ad = phi i8 [ %.pre43, %bb.s ], [ %.pre43, %bb.c ], [ %.pre43, %bb.x ], [ %.pre43, %bb.y ], [ %.pre43, %bb.aa ], [ %.pre43, %bb.ak ], [ %.pre43, %bb.al ], [ %.pre43, %bb.am ], [ %.pre43, %bb.an ], [ %.pre43, %bb.ao ], [ %.pre43, %bb.ap ], [ %.pre43, %bb.ar ], [ %.pre43, %bb.as ], [ %.pre43, %bb.at ], [ %.pre43, %bb.au ], [ %.pre43, %bb.av ], [ %.pre43, %bb.aw ], [ %.pre43, %bb.ax ], [ %.pre43, %bb.ay ], [ %.pre, %._crit_edge ], [ %.pre43, %bb.bb ], [ %.pre43, %bb.ba ], [ %.pre43, %bb.az ]
  %.sroa.018.0.i = phi i16 [ 12, %bb.s ], [ 0, %bb.c ], [ 13, %bb.x ], [ 14, %bb.y ], [ 15, %bb.aa ], [ 17, %bb.ak ], [ 18, %bb.al ], [ 19, %bb.am ], [ 20, %bb.an ], [ 21, %bb.ao ], [ 22, %bb.ap ], [ 24, %bb.ar ], [ 25, %bb.as ], [ 26, %bb.at ], [ 27, %bb.au ], [ 121, %bb.av ], [ 123, %bb.aw ], [ 122, %bb.ax ], [ 124, %bb.ay ], [ 0, %._crit_edge ], [ 9, %bb.bb ], [ 9, %bb.ba ], [ 9, %bb.az ] ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.bg, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer10next_token.exit

bb.f:                                             ; preds = %bb.d
  switch i8 %i.z, label %bb.k [
    i8 32, label %bb.i
    i8 13, label %bb.i
    i8 12, label %bb.i
    i8 11, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 35, label %bb.l
    i8 34, label %bb.p
  ]

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3906)
  %i.af = icmp ult i64 %i.aa, %i.v
  br i1 %i.af, label %.lr.ph.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer10next_token.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.ag = phi i64 [ %i.aj, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !3907, !noundef !5
  switch i8 %i.ai, label %bb.h [
    i8 0, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
    i8 41, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.n, align 8, !alias.scope !3907
  %exitcond.not.i.i = icmp eq i64 %i.aj, %i.v
  br i1 %exitcond.not.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3908)
  %i.ak = icmp ult i64 %i.aa, %i.v
  br i1 %i.ak, label %.lr.ph.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %i.al = phi i64 [ %i.ao, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !3909, !noundef !5
  switch i8 %i.an, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 12, label %bb.j
    i8 11, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ao = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.n, align 8, !alias.scope !3909
  %exitcond.not.i = icmp eq i64 %i.ao, %i.v
  br i1 %exitcond.not.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.lr.ph.i

bb.k:                                             ; preds = %bb.f
  %i.ap = add i8 %i.z, -48
  %or.cond.i = icmp ult i8 %i.ap, 10
  %i.aq = load i8, ptr %i.q, align 1, !range !3910, !alias.scope !3905
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond6.i = select i1 %or.cond.i, i1 %i.ar, i1 false
  br i1 %or.cond6.i, label %bb.t, label %bb.s

bb.l:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3911)
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit.i.i, %bb.l
  %i.as = phi i64 [ %i.ax, %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit.i.i ], [ %i.aa, %bb.l ] ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.v                ; 2 uses
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !noalias !3912, !noundef !5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.av, %bb.n ], [ 0, %bb.m ]
  switch i8 %storemerge.i.i, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit.i.i [
    i8 10, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
    i8 13, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
    i8 0, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
  ]

_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.o
  %i.aw = zext i1 %i.at to i64
  %i.ax = add i64 %i.as, %i.aw                    ; 2 uses
  store i64 %i.ax, ptr %i.n, align 8, !alias.scope !3912
  br label %bb.m

bb.p:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  %i.ay = icmp ult i64 %i.aa, %i.v
  br i1 %i.ay, label %.lr.ph.i45.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

.lr.ph.i45.i:                                     ; preds = %bb.p, %bb.r
  %i.az = phi i64 [ %i.bd, %bb.r ], [ %i.aa, %bb.p ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !3914, !noundef !5
  switch i8 %i.bb, label %bb.r [
    i8 34, label %bb.q
    i8 0, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
  ]

bb.q:                                             ; preds = %.lr.ph.i45.i
  %i.bc = add nuw i64 %i.az, 1
  store i64 %i.bc, ptr %i.n, align 8, !alias.scope !3914
  br label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.r:                                             ; preds = %.lr.ph.i45.i
  %i.bd = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !3914
  %exitcond.not.i46.i = icmp eq i64 %i.bd, %i.v
  br i1 %exitcond.not.i46.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.lr.ph.i45.i

_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i: ; preds = %.critedge.i, %.critedge.i, %bb.o, %bb.r, %.lr.ph.i45.i, %bb.o, %bb.o, %bb.j, %.lr.ph.i, %bb.ah, %bb.aj, %.lr.ph.i22.i.i, %bb.u, %.lr.ph.i.i.i, %bb.h, %.lr.ph.i.i, %.lr.ph.i.i, %bb.be, %bb.bc, %bb.ai, %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit.i.i, %bb.af, %bb.ae, %bb.ab, %bb.bh, %bb.z, %bb.w, %bb.t, %bb.q, %bb.p, %bb.i
  %.sroa.018.1.ph.i = phi i16 [ %i.de, %bb.bh ], [ 10, %bb.i ], [ 3, %bb.p ], [ 2, %bb.q ], [ 8, %bb.ai ], [ 29, %bb.t ], [ 29, %bb.u ], [ 4, %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit.i.i ], [ 16, %bb.af ], [ 28, %bb.z ], [ %i.bm, %bb.w ], [ 3, %bb.r ], [ 10, %bb.j ], [ %..i, %bb.be ], [ 1, %bb.bc ], [ 4, %bb.ah ], [ 8, %bb.aj ], [ 120, %bb.h ], [ 16, %bb.ae ], [ 16, %bb.ab ], [ 16, %.critedge.i ], [ 120, %.lr.ph.i.i ], [ 120, %.lr.ph.i.i ], [ 29, %.lr.ph.i.i.i ], [ 8, %.lr.ph.i22.i.i ], [ 10, %.lr.ph.i ], [ 11, %bb.o ], [ 11, %bb.o ], [ 3, %.lr.ph.i45.i ], [ 11, %bb.o ], [ 16, %.critedge.i ] ; 4 uses
  %.pr.i = load i8, ptr %i.p, align 8, !alias.scope !3905
  switch i8 %.pr.i, label %default.unreachable.i [
    i8 0, label %bb.bi
    i8 1, label %bb.bg
    i8 2, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer10next_token.exit
  ]

bb.s:                                             ; preds = %bb.k
  switch i8 %i.z, label %bb.v [
    i8 48, label %bb.w
    i8 59, label %bb.e
    i8 58, label %bb.x
    i8 44, label %bb.y
    i8 64, label %bb.z
    i8 92, label %bb.aa
    i8 45, label %bb.ab
    i8 61, label %bb.ak
    i8 33, label %bb.al
    i8 123, label %bb.am
    i8 125, label %bb.an
    i8 91, label %bb.ao
    i8 93, label %bb.ap
    i8 40, label %bb.aq
    i8 41, label %bb.ar
    i8 60, label %bb.as
    i8 62, label %bb.at
    i8 39, label %bb.au
    i8 36, label %bb.av
    i8 42, label %bb.aw
    i8 43, label %bb.ax
    i8 47, label %bb.ay
    i8 110, label %bb.az
    i8 117, label %bb.ba
    i8 100, label %bb.bb
  ]

bb.t:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3916)
  %i.be = icmp ult i64 %i.aa, %i.v
  br i1 %i.be, label %.lr.ph.i.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %i.bf = phi i64 [ %i.bk, %bb.u ], [ %i.aa, %bb.t ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !3917, !noundef !5
  %i.bi = add i8 %i.bh, -48
  %i.bj = icmp ult i8 %i.bi, 10
  br i1 %i.bj, label %bb.u, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.n, align 8, !alias.scope !3917
  %exitcond.not.i.i.i = icmp eq i64 %i.bk, %i.v
  br i1 %exitcond.not.i.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.lr.ph.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.bl = add i8 %i.z, -49
  %or.cond3.i = icmp ult i8 %i.bl, 9
  br i1 %or.cond3.i, label %bb.bh, label %bb.bc

bb.w:                                             ; preds = %bb.s
  %i.bm = tail call fastcc noundef i16 @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer6number(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, i1 noundef zeroext true)
  br label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.x:                                             ; preds = %bb.s
  br label %bb.e

bb.y:                                             ; preds = %bb.s
  br label %bb.e

bb.z:                                             ; preds = %bb.s
  tail call fastcc void @_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer9eat_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.aa:                                            ; preds = %bb.s
  br label %bb.e

bb.ab:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  %i.bn = icmp ult i64 %i.aa, %i.v
  br i1 %i.bn, label %bb.ac, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !3918, !noundef !5 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 48
  br i1 %i.bq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = add nuw i64 %i.u, 2                     ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.v
  br i1 %i.bs, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !3918, !noundef !5 ; 2 uses
  %i.bv = add i8 %i.bu, -48
  %i.bw = icmp ult i8 %i.bv, 10
  br i1 %i.bw, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ad, %bb.ae
  %storemerge.i = phi i8 [ 0, %bb.ad ], [ %i.bu, %bb.ae ]
  switch i8 %storemerge.i, label %.lr.ph.i.i.i3 [
    i8 120, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
    i8 88, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i
  ]

bb.af:                                            ; preds = %bb.ac
  %i.bx = add i8 %i.bp, -48
  %i.by = icmp ult i8 %i.bx, 10
  br i1 %i.by, label %.lr.ph.i.i.i3, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

.lr.ph.i.i.i3:                                    ; preds = %.critedge.i, %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3920)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i3
  %i.bz = phi i64 [ %i.aa, %.lr.ph.i.i.i3 ], [ %i.ce, %bb.ah ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !3921, !noundef !5 ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %i.cd = icmp ult i8 %i.cc, 10
  br i1 %i.cd, label %bb.ah, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ce = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.n, align 8, !alias.scope !3921
  %exitcond.not.i.i14.i = icmp eq i64 %i.ce, %i.v
  br i1 %exitcond.not.i.i14.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %bb.ag

_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit.i.i: ; preds = %bb.ag
  %i.cf = icmp eq i8 %i.cb, 46
  br i1 %i.cf, label %bb.ai, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.ai:                                            ; preds = %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer18eat_decimal_digits.exit.i.i
  %i.cg = add nuw i64 %i.bz, 1                    ; 3 uses
  store i64 %i.cg, ptr %i.n, align 8, !alias.scope !3922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3923)
  %i.ch = icmp ult i64 %i.cg, %i.v
  br i1 %i.ch, label %.lr.ph.i22.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

.lr.ph.i22.i.i:                                   ; preds = %bb.ai, %bb.aj
  %i.ci = phi i64 [ %i.cn, %bb.aj ], [ %i.cg, %bb.ai ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !3924, !noundef !5
  %i.cl = add i8 %i.ck, -48
  %i.cm = icmp ult i8 %i.cl, 10
  br i1 %i.cm, label %bb.aj, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i

bb.aj:                                            ; preds = %.lr.ph.i22.i.i
  %i.cn = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.n, align 8, !alias.scope !3924
  %exitcond.not.i23.i.i = icmp eq i64 %i.cn, %i.v
  br i1 %exitcond.not.i23.i.i, label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer4path.exit.i, label %.lr.ph.i22.i.i

bb.ak:                                            ; preds = %bb.s
  br label %bb.e

bb.al:                                            ; preds = %bb.s
  br label %bb.e

bb.am:                                            ; preds = %bb.s
  br label %bb.e

bb.an:                                            ; preds = %bb.s
  br label %bb.e

bb.ao:                                            ; preds = %bb.s
  br label %bb.e

bb.ap:                                            ; preds = %bb.s
  br label %bb.e

bb.aq:                                            ; preds = %bb.s
  %i.co = icmp eq i8 %.pre43, 1
  %spec.select = select i1 %i.co, i8 2, i8 0
  br label %_RNvMs_NtNtCscScJTt9VrQp_6fea_rs5parse5lexerNtB4_5Lexer10next_token.exit.thread

bb.ar:                                            ; preds = %bb.s
  br label %bb.e

bb.as:                                            ; preds = %bb.s
  br label %bb.e

bb.at:                                            ; preds = %bb.s
  br label %bb.e

bb.au:                                            ; preds = %bb.s
  br label %bb.e

bb.av:                                            ; preds = %bb.s
  br label %bb.e

bb.aw:                                            ; preds = %bb.s
  br label %bb.e

bb.ax:                                            ; preds = %bb.s
  br label %bb.e
end_hunk_1
