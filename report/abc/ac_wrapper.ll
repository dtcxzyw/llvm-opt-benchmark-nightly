Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ac_wrapper?download=true
inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3acd21ac_decomposition_impl22create_covering_matrixILb0EEEbRKSt6vectorIN5kitty18static_truth_tableILj11ELb0EEESaIS5_EERS2_INS0_15encoding_columnESaISA_EEb:bb.a
bb.s:                                             ; preds = %bb.r, %.preheader59.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.us.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %i.vp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.vq = add i32 %.04564.us.i, %i.vp             ; 2 uses
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.vr
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !84
  %i.vu = add i32 %i.vq, %i.vn
  %i.vv = zext i32 %i.vu to i64                   ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.vv
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !84
  %i.vy = xor i64 %i.vx, %i.vt
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.vr
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !84
  %i.wb = and i64 %i.vy, %i.wa
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.vv
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !84
  %i.we = and i64 %i.wb, %i.wd
  %.not.us.i = icmp eq i64 %i.we, 0
  br i1 %.not.us.i, label %bb.r, label %_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit

..critedge_crit_edge.us.i:                        ; preds = %bb.r
  %i.wf = add nuw i32 %.04564.us.i, %i.vo         ; 2 uses
  %.not54.us.i = icmp ult i32 %i.wf, %i.cb
  br i1 %.not54.us.i, label %.preheader59.us.i, label %_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit, !llvm.loop !12

_ZN3acd21ac_decomposition_impl15has_var_supportERKN5kitty18static_truth_tableILj11ELb0EEES5_jh.exit: ; preds = %..critedge_crit_edge.us.i, %bb.p, %bb.q, %bb.s
  %.5.i = phi i32 [ 1, %bb.s ], [ 0, %bb.q ], [ 1, %bb.p ], [ 0, %..critedge_crit_edge.us.i ]
  %i.wg = add i32 %.5.i, %.048137                 ; 2 uses
  %i.wh = add nuw i32 %.047138, 1                 ; 2 uses
  %exitcond158.not = icmp eq i32 %i.wh, %.fr149
  br i1 %exitcond158.not, label %._crit_edge141, label %.lr.ph140.split, !llvm.loop !349

bb.t:                                             ; preds = %._crit_edge141
  %i.wi = icmp eq i32 %.048.lcssa.fr, 1
  %spec.select = select i1 %i.wi, i32 0, i32 %.048.lcssa.fr
  br label %.thread

.thread:                                          ; preds = %bb.t, %._crit_edge
  %i.wj = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.t ] ; 3 uses
  %i.wk = load i64, ptr %i.a, align 16, !tbaa !84 ; 3 uses
  %i.wl = load i64, ptr %i.cf, align 8, !tbaa !84 ; 3 uses
  %i.wm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wl)
  %i.wn = add i64 %i.wm, %i.wk
  %i.wo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wn)
  %i.wp = trunc nuw nsw i64 %i.wo to i32
  %i.wq = sub nsw i32 %i.e, %i.wp
  %i.wr = load i32, ptr %i.f, align 8, !tbaa !75
  %i.ws = shl i32 %i.wq, %i.wr
  %i.wt = add i32 %i.ws, %i.wj
  %i.wu = uitofp i32 %i.wt to float               ; 2 uses
  %i.wv = load ptr, ptr %i.cg, align 8, !tbaa !149 ; 7 uses
  %i.ww = load ptr, ptr %i.ch, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.wv, %i.ww
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  store i64 %i.wk, ptr %i.wv, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store i64 %i.wl, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !98
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store i32 %i.wj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 20
  store i32 %.052143, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !76
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  store float %i.wu, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !155
  %i.wx = load ptr, ptr %i.cg, align 8, !tbaa !149
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  store ptr %i.wy, ptr %i.cg, align 8, !tbaa !149
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.v:                                             ; preds = %.thread
  %i.wz = load ptr, ptr %2, align 8, !tbaa !148   ; 4 uses
  %i.xa = ptrtoint ptr %i.wv to i64
  %i.xb = ptrtoint ptr %i.wz to i64               ; 2 uses
  %i.xc = sub i64 %i.xa, %i.xb                    ; 5 uses
  %i.xd = icmp eq i64 %i.xc, 9223372036854775776
  br i1 %i.xd, label %bb.w, label %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
  unreachable

_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.xe = ashr exact i64 %i.xc, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.xe, i64 1)
  %i.xf = add nsw i64 %.sroa.speculated.i.i.i, %i.xe ; 2 uses
  %i.xg = icmp ult i64 %i.xf, %i.xe
  %i.xh = call i64 @llvm.umin.i64(i64 %i.xf, i64 288230376151711743)
  %i.xi = select i1 %i.xg, i64 288230376151711743, i64 %i.xh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.xi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.xj = shl nuw nsw i64 %i.xi, 5
  %i.xk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xj) #15 ; 4 uses
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 %i.xc ; 6 uses
  store i64 %i.wk, ptr %i.xl, align 8
  %.sroa.5.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i64 %i.wl, ptr %.sroa.5.0..sroa_idx57, align 8, !tbaa !98
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  store i32 %i.wj, ptr %.sroa.6.0..sroa_idx59, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.xl, i64 20
  store i32 %.052143, ptr %.sroa.7.0..sroa_idx61, align 4, !tbaa !76
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.xl, i64 24
  store float %i.wu, ptr %.sroa.8.0..sroa_idx63, align 8, !tbaa !155
  %i.xm = icmp sgt i64 %i.xc, 0
  br i1 %i.xm, label %bb.x, label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xk, ptr align 8 %i.wz, i64 %i.xc, i1 false)
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %.not.i17.i.i = icmp eq ptr %i.wz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.xo = load ptr, ptr %i.ch, align 8, !tbaa !150
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = sub i64 %i.xp, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xq) #13
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.xk, ptr %2, align 8, !tbaa !148
  store ptr %i.xn, ptr %i.cg, align 8, !tbaa !149
  %i.xr = getelementptr inbounds nuw [32 x i8], ptr %i.xk, i64 %i.xi
  store ptr %i.xr, ptr %i.ch, align 8, !tbaa !150
  br label %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN3acd21ac_decomposition_impl15encoding_columnESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.u, %._crit_edge141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.xs = add i32 %.052143, 1                     ; 2 uses
  %i.xt = zext i32 %i.xs to i64                   ; 2 uses
  %i.xu = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.xv = load ptr, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.xw = ptrtoint ptr %i.xu to i64
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %i.xz = ashr exact i64 %i.xy, 3
  %i.ya = icmp ugt i64 %i.xz, %i.xt
  br i1 %i.ya, label %bb.b, label %._crit_edge146, !llvm.loop !350

bb.z:                                             ; preds = %._crit_edge146
  %i.yb = load ptr, ptr %2, align 8, !tbaa !156   ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !156 ; 4 uses
  %.not.i.i = icmp eq ptr %i.yb, %i.yd
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = ptrtoint ptr %i.yb to i64
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = ashr exact i64 %i.yg, 5
  %i.yi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.yh, i1 true)
  %i.yj = shl nuw nsw i64 %i.yi, 1
  %i.yk = xor i64 %i.yj, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_T1_(ptr %i.yb, ptr %i.yd, i64 noundef %i.yk)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_(ptr %i.yb, ptr %i.yd)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEEZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISD_EERS8_bEUlRKS4_SK_E0_EvT_SM_T0_.exit: ; preds = %bb.aa, %bb.z, %._crit_edge146
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %3 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %4 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %5 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %6 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %7 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %8 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %9 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %.sroa.06.i.i.i = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEET_SP_SP_T0_.exit
  %i.j = icmp eq i64 %i.cd, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.dc, %bb.b ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa53, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa53, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa51, 32
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.417.0.copyload.i.i = load float, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !155 ; 2 uses
  %.sroa.518.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.518.0.copyload.i.i = load i32, ptr %.sroa.518.0..sroa.0.0..sroa_idx.i.i, align 4
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.040.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.040.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !157
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !157
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !158
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !352

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !158
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load float, ptr %i.al, align 8, !tbaa !157
  %i.an = fcmp olt float %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !158
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i, !llvm.loop !353

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store float %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 %.sroa.518.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, label %bb.c, !llvm.loop !354

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_SQ_T1_T2_.exit.i.i
  %10 = icmp sgt i64 %.lcssa51, 32
  br i1 %10, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.49.0.copyload.i.i.i = load float, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !155 ; 2 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.510.0.copyload.i.i.i = load i32, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = icmp sgt i64 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.040.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load float, ptr %i.be, align 8, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !157
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [32 x i8], ptr %0, i64 %.040.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !tbaa.struct !158
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !352

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.au, 32
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.av, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !158
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1112.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1112.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i1112.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !157
  %i.by = fcmp olt float %i.bx, %.sroa.49.0.copyload.i.i.i
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [32 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !tbaa.struct !158
  %.not13.i.i.i = icmp eq i64 %.0919.i.i1112.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !353

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store float %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i32 %.sroa.510.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %i.cb = icmp sgt i64 %i.au, 32
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, !llvm.loop !355

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2756 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02855 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.dc, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cd = add nsw i64 %.02855, -1                 ; 3 uses
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2756, i64 -32 ; 4 uses
  %i.ch = load float, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !157 ; 3 uses
  %i.ck = fcmp olt float %i.ch, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %storemerge2756, i64 -8
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !157 ; 4 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph57
  %i.cn = fcmp olt float %i.cj, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.co = fcmp olt float %i.ch, %i.cm
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph57
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2756, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i.preheader ]
  %i.cr = load float, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !157
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !356

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !157
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !357

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEET_SP_SP_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, i64 32, i1 false), !tbaa.struct !158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_SP_T0_.exit.i, !llvm.loop !358

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEET_SP_SP_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2756, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 5                 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit, !llvm.loop !351

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEET_SP_SP_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_SP_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i24 = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %2 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %.sroa.03.i.i12 = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { [2 x i64], i32, i32 }, align 8 ; 4 uses
  %3 = alloca %"struct.acd::ac_decomposition_impl::encoding_column", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %scevgep = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 32, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 56
  %i.g = load float, ptr %i.f, align 8, !tbaa !157 ; 4 uses
  %i.h = load float, ptr %i.e, align 8, !tbaa !157
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr, i64 32, i1 false), !tbaa.struct !158
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 32
  br i1 %i.j, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false), !tbaa.struct !158
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 60
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !157
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.011.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i, i64 32, i1 false), !tbaa.struct !158
  %i.o = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -40
  %i.p = load float, ptr %i.o, align 8, !tbaa !157
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i, i64 24, i1 false), !tbaa.struct !158
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 24
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 28
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx6.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 512
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, label %bb.b, !llvm.loop !360

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i16 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i, i64 24, i1 false), !tbaa.struct !158
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !155 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 28
  %.sroa.5.0.copyload.i.i15 = load i32, ptr %.sroa.5.0..sroa_idx.i.i14, align 4
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8
  %i.t = load float, ptr %i.s, align 8, !tbaa !157
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i16

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i21
  %.sroa.08.011.i.i22 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i22, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.011.i.i22, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i23, i64 32, i1 false), !tbaa.struct !158
  %i.v = getelementptr inbounds i8, ptr %.sroa.08.011.i.i22, i64 -40
  %i.w = load float, ptr %i.v, align 8, !tbaa !157
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i16, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i21, %.lr.ph.i13
  %.sroa.08.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i17, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i12, i64 24, i1 false), !tbaa.struct !158
  %.sroa.4.0..sroa_idx4.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i17, i64 24
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i18, align 8, !tbaa !155
  %.sroa.5.0..sroa_idx6.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i17, i64 28
  store i32 %.sroa.5.0.copyload.i.i15, ptr %.sroa.5.0..sroa_idx6.i.i19, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 32 ; 2 uses
  %.not.i20 = icmp eq ptr %i.y, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, label %.lr.ph.i13, !llvm.loop !361

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.016.i26 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not17.i27 = icmp eq ptr %.sroa.0.016.i26, %1
  br i1 %.not17.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_SP_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i28
  %.sroa.0.019.i29 = phi ptr [ %.sroa.0.016.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i37, %bb.o ] ; 7 uses
  %.pn18.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.019.i29, %bb.o ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 56
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !157 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !157
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i29, i64 32, i1 false), !tbaa.struct !158
  %i.af = ptrtoint ptr %.sroa.0.019.i29 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !135

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 64
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ag, 32
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !158
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i42: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !158
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i29, i64 24, i1 false), !tbaa.struct !158
  %.sroa.5.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 60
  %.sroa.5.0.copyload.i.i32 = load i32, ptr %.sroa.5.0..sroa_idx.i.i31, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !157
  %i.aq = fcmp olt float %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i33

.lr.ph.i.i39:                                     ; preds = %bb.n, %.lr.ph.i.i39
  %.sroa.08.011.i.i40 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ], [ %.sroa.0.019.i29, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i40, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.011.i.i40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i41, i64 32, i1 false), !tbaa.struct !158
  %i.ar = getelementptr inbounds i8, ptr %.sroa.08.011.i.i40, i64 -40
  %i.as = load float, ptr %i.ar, align 8, !tbaa !157
  %i.at = fcmp olt float %i.ac, %i.as
  br i1 %i.at, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i33, !llvm.loop !359

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3acd21ac_decomposition_impl15encoding_columnESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_22create_covering_matrixILb0EEEbRKS6_IN5kitty18static_truth_tableILj11ELb0EEESaISF_EERS8_bEUlRKS4_SM_E0_EEEvT_T0_.exit.i33: ; preds = %.lr.ph.i.i39, %bb.n
  %.sroa.08.0.lcssa.i.i34 = phi ptr [ %.sroa.0.019.i29, %bb.n ], [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i34, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i24, i64 24, i1 false), !tbaa.struct !158
  %.sroa.4.0..sroa_idx4.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34, i64 24
end_hunk_0
