Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.09?download=true
inline.NumInlined: 196
inline.NumDeleted: 105
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_:bb.a

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ac = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val15.i.epil = load i64, ptr %i.ae, align 8, !noalias !59, !noundef !6 ; 2 uses
  %i.af = icmp ult i64 %.val15.i.epil, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i64 %.val15.i.epil, ptr %i.ag, align 8, !noalias !60
  %i.ah = add i64 %i.ac, 1                        ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %bb.d, !llvm.loop !58

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ah, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !59
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef double @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvB6_8map_folddddNCB1r_s_0NCINvXs26_NtB2v_5accumdNtB3I_3Sum3sumIBO_BN_B3p_EE0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = load double, ptr %3, align 8, !alias.scope !63, !noundef !6 ; 6 uses
  %i.g = icmp eq i64 %i.d, 8
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.u, %bb.c ] ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %.new ], [ %i.t, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.h, align 8, !noalias !63, !noundef !6
  %i.i = uitofp i64 %.val11.i to double
  %i.j = fsub double %i.i, %i.f                   ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fdiv double %i.k, %i.f
  %i.m = fadd double %.sroa.02.0.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val11.i.1 = load i64, ptr %i.o, align 8, !noalias !63, !noundef !6
  %i.p = uitofp i64 %.val11.i.1 to double
  %i.q = fsub double %i.p, %i.f                   ; 2 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double %i.r, %i.f
  %i.t = fadd double %i.m, %i.s                   ; 3 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.v = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ %2, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init
  %.val11.i.epil = load i64, ptr %i.w, align 8, !noalias !63, !noundef !6
  %i.x = uitofp i64 %.val11.i.epil to double
  %i.y = fsub double %i.x, %i.f                   ; 2 uses
  %i.z = fmul double %i.y, %i.y
  %i.aa = fdiv double %i.z, %i.f
  %i.ab = fadd double %.sroa.02.0.i.epil.init, %i.aa
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit.loopexit.unr-lcssa ], [ %i.ab, %.epil.preheader ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB12_3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB3I_zEEB27_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecdEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1g_8adapters3map12map_try_foldBX_BX_B2e_INtNtB1i_6result6ResultB2e_zENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3G_EB4h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB5_8CholeskydNtNtNtB9_4base9dimension3DynE12new_internalCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef range(i64 0, 2) %2, double %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.val17 = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val18 = load i64, ptr %i.g, align 8, !noundef !6
  %i.h = icmp eq i64 %.val17, %.val18
  br i1 %i.h, label %.preheader, label %bb.b, !prof !9

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %.val17, 0
  br i1 %.not, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = trunc nuw i64 %2 to i1                   ; 2 uses
  %i.l = tail call double @llvm.sqrt.f64(double %3)
  %narrow.i.i.i.i = fcmp ogt double %3, 0.000000e+00
  %.sroa.3.0.i.i = select i1 %i.k, double %i.l, double undef
  %narrow.i.i = select i1 %i.k, i1 %narrow.i.i.i.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  unreachable

._crit_edge51:                                    ; preds = %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph50, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
  %.sroa.010.049 = phi i64 [ 0, %.lr.ph50 ], [ %i.n, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit ] ; 10 uses
  %i.n = add nuw i64 %.sroa.010.049, 1            ; 3 uses
  %.not52 = icmp eq i64 %.sroa.010.049, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit, %._crit_edge51
  ret void

._crit_edge:                                      ; preds = %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit, %bb.d
  %.val21 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %.val22 = load i64, ptr %i.f, align 8, !noundef !6
  %i.o = mul i64 %.val22, %.sroa.010.049
  %i.p = getelementptr [8 x i8], ptr %.val21, i64 %i.o
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.010.049 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !alias.scope !81, !noundef !6 ; 2 uses
  %i.s = call double @llvm.sqrt.f64(double %i.r)
  %narrow.i = fcmp ogt double %i.r, 0.000000e+00  ; 2 uses
  %brmerge = select i1 %narrow.i, i1 true, i1 %narrow.i.i
  %.mux = select i1 %narrow.i, double %i.s, double %.sroa.3.0.i.i ; 3 uses
  br i1 %brmerge, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.e

.thread:                                          ; preds = %._crit_edge
  store double %.mux, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.n, i64 noundef %.sroa.010.049)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !82, !noundef !6 ; 4 uses
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !82 ; 2 uses
  switch i64 %.val7.i, label %vector.ph [
    i64 0, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
    i64 1, label %.preheader.i.preheader
  ]

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %.val7.i, -2                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.mux, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %.val8.i, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.v, align 8, !alias.scope !83, !noalias !82
  %i.w = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.w, ptr %i.v, align 8, !alias.scope !83, !noalias !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i, %n.vec
  br i1 %cmp.n, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i, %middle.block
  %.sroa.05.010.i.ph = phi i64 [ 0, %bb.i ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.05.010.i = phi i64 [ %i.y, %.preheader.i ], [ %.sroa.05.010.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.y = add nuw i64 %.sroa.05.010.i, 1           ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %.val8.i, i64 %.sroa.05.010.i ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !83, !noalias !82, !noundef !6
  %i.ab = fdiv double %i.aa, %.mux
  store double %i.ab, ptr %i.z, align 8, !alias.scope !83, !noalias !82
  %exitcond.not.i = icmp eq i64 %i.y, %.val7.i
  br i1 %exitcond.not.i, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i, !llvm.loop !71

_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit: ; preds = %.preheader.i, %middle.block, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond56.not = icmp eq i64 %i.n, %.val17
  br i1 %exitcond56.not, label %._crit_edge51, label %bb.d

.lr.ph:                                           ; preds = %bb.d, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit
  %.sroa.012.048 = phi i64 [ %i.ac, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit ], [ 0, %bb.d ] ; 3 uses
  %i.ac = add nuw i64 %.sroa.012.048, 1           ; 2 uses
  %.val19 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val20 = load i64, ptr %i.f, align 8, !noundef !6 ; 5 uses
  %i.ad = mul i64 %.val20, %.sroa.012.048
  %i.ae = getelementptr [8 x i8], ptr %.val19, i64 %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %.sroa.010.049 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !84, !noundef !6
  %i.ah = fneg double %i.ag
  %.val10.i = load i64, ptr %i.g, align 8, !alias.scope !85, !noundef !6
  %.not.i27.not = icmp ult i64 %.sroa.012.048, %.val10.i
  br i1 %.not.i27.not, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.ai = mul i64 %.val20, %.sroa.010.049
  %i.aj = getelementptr [8 x i8], ptr %.val19, i64 %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %.val20, ptr %.sroa.434.0..sroa_idx, align 8
  store i64 %.val20, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.010.049)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i, %.thread, %bb.m, %bb.j, %bb.b
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #20
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = sub i64 %.val20, %.sroa.010.049         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87
  %.val4.i = load i64, ptr %i.j, align 8, !alias.scope !86, !noundef !6 ; 2 uses
  store i64 %.val4.i, ptr %i.b, align 8, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  store i64 %i.ak, ptr %i.a, align 8, !noalias !87
  %i.al = icmp eq i64 %.val4.i, %i.ak
  br i1 %i.al, label %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.m
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87
  %.sroa.0.0.i.i29 = load ptr, ptr %i.d, align 8, !alias.scope !88, !nonnull !6, !noundef !6
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.i.i29, i64 noundef %i.ak, double noundef %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ak, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %i.ak)
          to label %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit12axcpy_uninitNtNtB4_6uninit4InitdNtNtB4_9dimension3DynB1j_INtNtB4_11matrix_view14ViewStorageMutdB1j_INtB1l_5ConstKj1_EB2o_B1j_EINtB1L_11ViewStoragedB1j_B2o_B2o_B1j_EECs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i64 %i.ac, %.sroa.010.049
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE6unpackCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9.i = load i64, ptr %i.a, align 8, !alias.scope !92, !noundef !6 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val10.i = load i64, ptr %i.b, align 8, !alias.scope !92, !noundef !6 ; 3 uses
  %i.c = icmp ugt i64 %.val10.i, 1
  br i1 %i.c, label %.lr.ph15.i, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit

.lr.ph15.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.d, align 8, !alias.scope !92, !nonnull !6 ; 5 uses
  %.not.i = icmp eq i64 %.val9.i, 0
  br i1 %.not.i, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph15.i
  %i.e = add i64 %.val10.i, -1                    ; 2 uses
  %i.f = add i64 %.val10.i, -2
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.e, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.04.014.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.t, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.h = add nuw nsw i64 %.sroa.04.014.i, 1       ; 2 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.sroa.04.014.i)
  %i.i = shl nuw i64 %umin.i, 3
  %i.j = mul i64 %.sroa.04.014.i, %.val9.i
  %i.k = getelementptr [8 x i8], ptr %.val11.i, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.i, i1 false), !noalias !92
  %i.l = add nuw nsw i64 %.sroa.04.014.i, 2       ; 2 uses
  %umin.i.1 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.h)
  %i.m = shl nuw i64 %umin.i.1, 3
  %i.n = mul i64 %i.h, %.val9.i
  %i.o = getelementptr [8 x i8], ptr %.val11.i, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.m, i1 false), !noalias !92
  %i.p = add nuw i64 %.sroa.04.014.i, 3           ; 2 uses
  %umin.i.2 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.l)
  %i.q = shl nuw i64 %umin.i.2, 3
  %i.r = mul i64 %i.l, %.val9.i
  %i.s = getelementptr [8 x i8], ptr %.val11.i, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.q, i1 false), !noalias !92
  %i.t = add nuw i64 %.sroa.04.014.i, 4           ; 2 uses
  %umin.i.3 = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %i.p)
  %i.u = shl nuw i64 %umin.i.3, 3
  %i.v = mul i64 %i.p, %.val9.i
  %i.w = getelementptr [8 x i8], ptr %.val11.i, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.u, i1 false), !noalias !92
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.04.014.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.04.014.i.epil = phi i64 [ %i.x, %.lr.ph.i.epil ], [ %.sroa.04.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.x = add nuw i64 %.sroa.04.014.i.epil, 1
  %umin.i.epil = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.sroa.04.014.i.epil)
  %i.y = shl nuw i64 %umin.i.epil, 3
  %i.z = mul i64 %.sroa.04.014.i.epil, %.val9.i
  %i.aa = getelementptr [8 x i8], ptr %.val11.i, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.y, i1 false), !noalias !92
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i.epil, !llvm.loop !91

_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph15.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE7inverseCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.d, align 8, !noundef !6 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.f = mul i64 %.val1, %.val                    ; 4 uses
  %i.g = tail call { i64, double } @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerdE3newCs8lmMd0ZksV9_6statrs(double noundef 0.000000e+00, i64 noundef %i.f), !noalias !104 ; 2 uses
  %i.h = extractvalue { i64, double } %i.g, 0
  %i.i = extractvalue { i64, double } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !105
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, double %i.i), !noalias !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !105, !noundef !6 ; 2 uses
end_hunk_0
