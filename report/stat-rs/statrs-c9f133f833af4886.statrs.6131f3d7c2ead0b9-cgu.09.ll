Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.09?download=true
inline.NumInlined: 196
inline.NumDeleted: 105
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8lmMd0ZksV9_6statrs:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3q_3VecdE14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !align !7, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d
  %i.m = sub i64 %i.l, %i.b
  %i.n = shl i64 %i.m, 3
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8
  %i.q = getelementptr i8, ptr %i.g, i64 8
  %bound0 = icmp ult ptr %i.k, %i.p
  %bound1 = icmp ult ptr %i.e, %i.o
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.k, %i.q
  %bound19 = icmp ult ptr %i.g, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -2                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load double, ptr %i.e, align 8, !alias.scope !41, !noalias !42, !noundef !6
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load double, ptr %i.g, align 8, !alias.scope !43, !noalias !42, !noundef !6
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.w = uitofp <2 x i64> %vec.ind to <2 x double>
  %i.x = fmul <2 x double> %broadcast.splat12, %i.w
  %i.y = fadd <2 x double> %broadcast.splat14, %i.x
  %i.z = tail call <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.y)
  %i.aa = getelementptr [8 x i8], ptr %i.v, i64 %index
  store <2 x double> %i.z, ptr %i.aa, align 8, !alias.scope !44, !noalias !45
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.010.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.ac = sub i64 %i.d, %.sroa.0.010.i.ph
  %.neg = add i64 %.sroa.0.010.i.ph, 1
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.ad = add nuw i64 %.sroa.0.010.i.ph, 1
  %i.ae = load double, ptr %i.e, align 8, !noalias !42, !noundef !6
  %i.af = uitofp i64 %.sroa.0.010.i.ph to double
  %i.ag = load double, ptr %i.g, align 8, !noalias !42, !noundef !6
  %i.ah = fmul double %i.ag, %i.af
  %i.ai = fadd double %i.ae, %i.ah
  %i.aj = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.ai)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph
  store double %i.aj, ptr %i.ak, align 8, !noalias !46
  %i.al = add i64 %.ph, 1                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.al, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.al, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %.lr.ph.i.preheader16 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.am = icmp eq i64 %i.d, %.neg
  br i1 %i.am, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.an = phi i64 [ %i.bf, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ao = add nuw i64 %.sroa.0.010.i, 1
  %i.ap = load double, ptr %i.e, align 8, !noalias !42, !noundef !6
  %i.aq = uitofp i64 %.sroa.0.010.i to double
  %i.ar = load double, ptr %i.g, align 8, !noalias !42, !noundef !6
  %i.as = fmul double %i.ar, %i.aq
  %i.at = fadd double %i.ap, %i.as
  %i.au = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.at)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.an
  store double %i.au, ptr %i.av, align 8, !noalias !46
  %i.aw = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %i.ax = load double, ptr %i.e, align 8, !noalias !42, !noundef !6
  %i.ay = uitofp i64 %i.ao to double
  %i.az = load double, ptr %i.g, align 8, !noalias !42, !noundef !6
  %i.ba = fmul double %i.az, %i.ay
  %i.bb = fadd double %i.ax, %i.ba
  %i.bc = tail call noundef double @llvm.pow.f64(double 1.000000e+01, double %i.bb)
  %i.bd = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.an
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store double %i.bc, ptr %i.be, align 8, !noalias !46
  %i.bf = add i64 %i.an, 2                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aw, %i.d
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit, label %.lr.ph.i, !llvm.loop !40

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0NCINvNvBL_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3s_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2d_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bf, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 96
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.c ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %.val15.i = load i64, ptr %i.i, align 8, !noalias !57, !noundef !6 ; 2 uses
  %i.j = icmp ult i64 %.val15.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  store i64 %.val15.i, ptr %i.k, align 8, !noalias !58
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %.val15.i.1 = load i64, ptr %i.m, align 8, !noalias !57, !noundef !6 ; 2 uses
  %i.n = icmp ult i64 %.val15.i.1, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store i64 %.val15.i.1, ptr %i.p, align 8, !noalias !58
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %.val15.i.2 = load i64, ptr %i.r, align 8, !noalias !57, !noundef !6 ; 2 uses
  %i.s = icmp ult i64 %.val15.i.2, 1152921504606846976
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i64 %.val15.i.2, ptr %i.u, align 8, !noalias !58
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.w = getelementptr i8, ptr %i.v, i64 88
  %.val15.i.3 = load i64, ptr %i.w, align 8, !noalias !57, !noundef !6 ; 2 uses
  %i.x = icmp ult i64 %.val15.i.3, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g
  %i.z = getelementptr i8, ptr %i.y, i64 24
  store i64 %.val15.i.3, ptr %i.z, align 8, !noalias !58
  %i.aa = add i64 %i.g, 4                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ac = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val15.i.epil = load i64, ptr %i.ae, align 8, !noalias !57, !noundef !6 ; 2 uses
  %i.af = icmp ult i64 %.val15.i.epil, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i64 %.val15.i.epil, ptr %i.ag, align 8, !noalias !58
  %i.ah = add i64 %i.ac, 1                        ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit, label %bb.d, !llvm.loop !56

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_juNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0NCINvNvB1q_8for_each4calljNCINvMsk_BT_IBR_jE14extend_trustedINtB2g_3MapBF_B2Q_EE0E0E0EB2Y_.exit.loopexit.unr-lcssa ], [ %i.ah, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef double @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0ENtNtNtBa_6traits8iterator8Iterator4folddNCINvB6_8map_folddddNCB1r_s_0NCINvXs26_NtB2v_5accumdNtB3I_3Sum3sumIBO_BN_B3p_EE0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRjddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests9chisquare9chisquare0NCIB1G_dddNCB2h_s_0NCINvXs26_NtBW_5accumdNtB3J_3Sum3sumINtB1I_3MapIB4a_BF_B2f_EB3q_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = load double, ptr %3, align 8, !alias.scope !61, !noundef !6 ; 6 uses
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
  %.val11.i = load i64, ptr %i.h, align 8, !noalias !61, !noundef !6
  %i.i = uitofp i64 %.val11.i to double
  %i.j = fsub double %i.i, %i.f                   ; 2 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = fdiv double %i.k, %i.f
  %i.m = fadd double %.sroa.02.0.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val11.i.1 = load i64, ptr %i.o, align 8, !noalias !61, !noundef !6
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
  %.val11.i.epil = load i64, ptr %i.w, align 8, !noalias !61, !noundef !6
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
  br i1 %i.h, label %.preheader, label %bb.c, !prof !9

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %.val17, 0
  br i1 %.not, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
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
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

._crit_edge53:                                    ; preds = %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph52, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
  %.sroa.010.051 = phi i64 [ 0, %.lr.ph52 ], [ %i.o, %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit ] ; 10 uses
  %i.o = add nuw i64 %.sroa.010.051, 1            ; 3 uses
  %.not54 = icmp eq i64 %.sroa.010.051, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit, %._crit_edge53
  ret void

._crit_edge:                                      ; preds = %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit, %bb.e
  %.val21 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %.val22 = load i64, ptr %i.f, align 8, !noundef !6
  %i.p = mul i64 %.val22, %.sroa.010.051
  %i.q = getelementptr [8 x i8], ptr %.val21, i64 %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.sroa.010.051 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !alias.scope !80, !noundef !6 ; 2 uses
  %i.t = call double @llvm.sqrt.f64(double %i.s)
  %narrow.i = fcmp ogt double %i.s, 0.000000e+00  ; 2 uses
  %brmerge = select i1 %narrow.i, i1 true, i1 %narrow.i.i
  %.mux = select i1 %narrow.i, double %i.t, double %.sroa.3.0.i.i ; 3 uses
  br i1 %brmerge, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.f

bb.j:                                             ; preds = %.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread:                                          ; preds = %._crit_edge
  store double %.mux, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.o, i64 noundef %.sroa.010.051)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !81, !noundef !6 ; 4 uses
  %.val8.i = load ptr, ptr %i.c, align 8, !alias.scope !81 ; 2 uses
  switch i64 %.val7.i, label %vector.ph [
    i64 0, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit
    i64 1, label %.preheader.i.preheader
  ]

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %.val7.i, -2                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.mux, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.val8.i, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.x, align 8, !alias.scope !82, !noalias !81
  %i.y = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.y, ptr %i.x, align 8, !alias.scope !82, !noalias !81
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i, %n.vec
  br i1 %cmp.n, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.k, %middle.block
  %.sroa.05.010.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.05.010.i = phi i64 [ %i.aa, %.preheader.i ], [ %.sroa.05.010.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.aa = add nuw i64 %.sroa.05.010.i, 1          ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %.val8.i, i64 %.sroa.05.010.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !alias.scope !82, !noalias !81, !noundef !6
  %i.ad = fdiv double %i.ac, %.mux
  store double %i.ad, ptr %i.ab, align 8, !alias.scope !82, !noalias !81
  %exitcond.not.i = icmp eq i64 %i.aa, %.val7.i
  br i1 %exitcond.not.i, label %_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit, label %.preheader.i, !llvm.loop !69

_RNvXsB_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9DivAssigndE10div_assignCs8lmMd0ZksV9_6statrs.exit: ; preds = %.preheader.i, %middle.block, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond55.not = icmp eq i64 %i.o, %.val17
  br i1 %exitcond55.not, label %._crit_edge53, label %bb.e

.lr.ph:                                           ; preds = %bb.e, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit
  %.sroa.012.050 = phi i64 [ %i.ae, %_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_INtB1J_11ViewStoragedB13_B1o_B1o_B13_EECs8lmMd0ZksV9_6statrs.exit ], [ 0, %bb.e ] ; 3 uses
  %i.ae = add nuw i64 %.sroa.012.050, 1           ; 2 uses
  %.val19 = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.val20 = load i64, ptr %i.f, align 8, !noundef !6 ; 5 uses
  %i.af = mul i64 %.val20, %.sroa.012.050
  %i.ag = getelementptr [8 x i8], ptr %.val19, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.sroa.010.051 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !alias.scope !83, !noundef !6
  %i.aj = fneg double %i.ai
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE7inverseCs8lmMd0ZksV9_6statrs:bb.a

.lr.ph.i:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload14.i) ]
  %xtraiter = and i64 %..i.i, 3                   ; 3 uses
  %i.v = icmp ult i64 %..i.i, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %..i.i, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.sroa.02.011.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ai, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.w = or disjoint i64 %.sroa.02.011.i, 1       ; 2 uses
  %i.x = mul i64 %.sroa.02.011.i, %.val
  %i.y = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.x
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.sroa.02.011.i
  store double 1.000000e+00, ptr %i.z, align 8, !noalias !104
  %i.aa = or disjoint i64 %.sroa.02.011.i, 2      ; 2 uses
  %i.ab = mul i64 %i.w, %.val
  %i.ac = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.w
  store double 1.000000e+00, ptr %i.ad, align 8, !noalias !104
  %i.ae = or disjoint i64 %.sroa.02.011.i, 3      ; 2 uses
  %i.af = mul i64 %i.aa, %.val
  %i.ag = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.aa
  store double 1.000000e+00, ptr %i.ah, align 8, !noalias !104
  %i.ai = add nuw i64 %.sroa.02.011.i, 4          ; 2 uses
  %i.aj = mul i64 %i.ae, %.val
  %i.ak = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.ae
  store double 1.000000e+00, ptr %i.al, align 8, !noalias !104
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %bb.l

_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.02.011.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.sroa.02.011.i.epil = phi i64 [ %.sroa.02.011.i.epil.init, %.epil.preheader ], [ %i.am, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.am = add nuw i64 %.sroa.02.011.i.epil, 1
  %i.an = mul i64 %.sroa.02.011.i.epil, %.val
  %i.ao = getelementptr [8 x i8], ptr %.sroa.4.0.copyload14.i, i64 %i.an
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.sroa.02.011.i.epil
  store double 1.000000e+00, ptr %i.ap, align 8, !noalias !104
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit, label %bb.m, !llvm.loop !103

_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.m, %bb.k
  store i64 %.sroa.0.0.copyload12.i, ptr %i.c, align 8, !alias.scope !104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload14.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.val, ptr %.sroa.517.0..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.val1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !104
  invoke void @_RINvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg5solveINtNtNtB9_4base6matrix6MatrixdNtNtBO_9dimension3DynB1d_INtNtBO_11vec_storage10VecStoragedB1d_B1d_EE36solve_lower_triangular_unchecked_mutB1d_B1d_B1C_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #20
          to label %common.resume unwind label %bb.q

bb.o:                                             ; preds = %_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixdNtNtB6_9dimension3DynB1b_INtNtB6_11vec_storage10VecStoragedB1b_B1b_EE29from_diagonal_element_genericCs8lmMd0ZksV9_6statrs.exit
  invoke void @_RINvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg5solveINtNtNtB9_4base6matrix6MatrixdNtNtBO_9dimension3DynB1d_INtNtBO_11vec_storage10VecStoragedB1d_B1d_EE39ad_solve_lower_triangular_unchecked_mutB1d_B1d_B1C_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu21calc_mwu_exact_pvalue(double noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = add i64 %2, %1                           ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %.not74 = icmp ugt i64 %..i, %i.e
  br i1 %.not74, label %._crit_edge, label %.lr.ph77, !prof !112

.lr.ph77:                                         ; preds = %.split
  %i.f = add i64 %..i, 1
  %i.g = mul i64 %i.f, %..i
  %i.h = lshr i64 %i.g, 1
  %i.i = sub i64 %..i, %i.h                       ; 2 uses
  %.old1.not = icmp eq i64 %..i, 0
  %i.j = sub i64 %i.b, %..i                       ; 3 uses
  br i1 %.old1.not, label %.lr.ph77.split.us.split.split.split.us, label %.preheader42.preheader

.preheader42.preheader:                           ; preds = %.lr.ph77
  %min.iters.check = icmp ult i64 %..i, 4
  %n.vec = and i64 %..i, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %..i, %n.vec
  br label %.preheader42

.lr.ph77.split.us.split.split.split.us:           ; preds = %.lr.ph77
  %i.k = uitofp i64 %i.i to double
  %i.l = fcmp ole double %0, %i.k
  %i.m = zext i1 %i.l to i32                      ; 2 uses
  %.not31.us.us141249 = icmp eq i64 %i.e, 0
  br i1 %.not31.us.us141249, label %.split92.us.invoke, label %.thread37.us.us142.lr.ph

.thread37.us.us142.lr.ph:                         ; preds = %.lr.ph77.split.us.split.split.split.us
  %i.n = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  br label %.thread37.us.us142

.thread37.us.us142:                               ; preds = %.thread37.us.us142.lr.ph, %.loopexit.us.us143
  %i.o = phi i32 [ 1, %.thread37.us.us142.lr.ph ], [ %i.v, %.loopexit.us.us143 ] ; 2 uses
  %spec.select.us.us140250 = phi i32 [ %i.m, %.thread37.us.us142.lr.ph ], [ %spec.select.us.us140, %.loopexit.us.us143 ] ; 2 uses
  %i.p = phi ptr [ %i.n, %.thread37.us.us142.lr.ph ], [ %i.u, %.loopexit.us.us143 ] ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.j
  br i1 %i.r, label %.split81.us, label %.loopexit.us.us143

.loopexit.us.us143:                               ; preds = %.thread37.us.us142
  %i.s = add i64 %i.q, 1
  store i64 %i.s, ptr %i.p, align 8
  %i.t = load i64, ptr %i.d, align 8, !noundef !6
  %i.u = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %spec.select.us.us140 = add i32 %spec.select.us.us140250, %i.m
  %i.v = add i32 %i.o, 1
  %.not31.us.us141 = icmp eq i64 %i.t, 0
  br i1 %.not31.us.us141, label %.split92.us.invoke, label %.thread37.us.us142

.loopexit:                                        ; preds = %bb.m, %bb.k
  %i.w = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %.not = icmp ugt i64 %..i, %i.w
  br i1 %.not, label %._crit_edge, label %.preheader42, !prof !113

._crit_edge:                                      ; preds = %.loopexit, %.split
  %.lcssa51 = phi i64 [ %i.e, %.split ], [ %i.w, %.loopexit ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %..i, i64 noundef %.lcssa51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #21
          to label %bb.g unwind label %bb.a

.preheader42:                                     ; preds = %.preheader42.preheader, %.loopexit
  %i.x = phi i64 [ %i.w, %.loopexit ], [ %i.e, %.preheader42.preheader ] ; 2 uses
  %.sroa.03.076 = phi i32 [ %spec.select, %.loopexit ], [ 0, %.preheader42.preheader ]
  %.sroa.06.075 = phi i32 [ %i.aw, %.loopexit ], [ 0, %.preheader42.preheader ]
  %i.y = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader42, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader42 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.body ], [ zeroinitializer, %.preheader42 ]
  %vec.phi251 = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.preheader42 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x i64>, ptr %i.z, align 8
  %wide.load252 = load <2 x i64>, ptr %i.aa, align 8
  %i.ab = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ac = add <2 x i64> %wide.load252, %vec.phi251 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader42, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader42 ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader42 ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.af, align 8, !noundef !6
  %i.ag = add i64 %.val.i, %.sroa.02.0.i          ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %..i
  br i1 %i.ai, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, label %scalar.ph, !llvm.loop !111

bb.a:                                             ; preds = %.split92.us.invoke, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ae, %middle.block ], [ %i.ag, %scalar.ph ]
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit, %bb.e
  %.sroa.09.0 = phi i64 [ %i.am, %bb.e ], [ %..i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECs8lmMd0ZksV9_6statrs.exit.loopexit ] ; 3 uses
  %i.am = add i64 %.sroa.09.0, -1                 ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6 ; 2 uses
  %i.ap = add i64 %i.j, %i.am
  %i.aq = icmp eq i64 %i.ao, %i.ap
  %i.ar = icmp ne i64 %i.am, 0                    ; 2 uses
  %or.cond2 = and i1 %i.ar, %i.aq
  br i1 %or.cond2, label %bb.e, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = add i64 %i.i, %.lcssa
  %i.at = uitofp i64 %i.as to double
  %i.au = fcmp ole double %0, %i.at
  %i.av = zext i1 %i.au to i32
  %spec.select = add i32 %.sroa.03.076, %i.av     ; 2 uses
  %i.aw = add i32 %.sroa.06.075, 1                ; 2 uses
  br i1 %i.ar, label %bb.h, label %.thread37

bb.g:                                             ; preds = %._crit_edge
  unreachable

.thread37:                                        ; preds = %bb.f
  %i.ax = load i64, ptr %i.y, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.j
  br i1 %i.ay, label %.split81.us, label %bb.h

.split81.us:                                      ; preds = %.thread37, %.thread37.us.us142
  %.us-phi = phi i32 [ %spec.select.us.us140250, %.thread37.us.us142 ], [ %spec.select, %.thread37 ]
  %.us-phi82 = phi i32 [ %i.o, %.thread37.us.us142 ], [ %i.aw, %.thread37 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit33 unwind label %bb.i

bb.h:                                             ; preds = %.thread37, %bb.f
  %i.az = phi i64 [ %i.ax, %.thread37 ], [ %i.ao, %bb.f ]
  %i.ba = icmp ult i64 %i.am, %i.x
  br i1 %i.ba, label %bb.k, label %.split92.us.invoke

bb.i:                                             ; preds = %.split81.us
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.i ], [ %i.aj, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit33: ; preds = %.split81.us
  %.not41 = icmp ugt i64 %1, %2
  %i.bd = sitofp i32 %.us-phi to double
  %i.be = sitofp i32 %.us-phi82 to double
  %i.bf = fdiv double %i.bd, %i.be                ; 2 uses
  %i.bg = fsub double 1.000000e+00, %i.bf
  %.sroa.0.0 = select i1 %.not41, double %i.bf, double %i.bg
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret double %.sroa.0.0

bb.k:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.am
  %i.bi = add i64 %i.az, 1
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = icmp ult i64 %.sroa.09.0, %..i
  br i1 %i.bj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.sroa.019.073 = phi i64 [ %.sroa.019.0, %bb.m ], [ %.sroa.09.0, %bb.k ] ; 5 uses
  %.sroa.019.0.in72 = phi i64 [ %.sroa.019.073, %bb.m ], [ %i.am, %bb.k ] ; 3 uses
  %i.bk = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bl = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.bm = icmp ult i64 %.sroa.019.0.in72, %i.bl
  br i1 %i.bm, label %bb.l, label %.split92.us.invoke

bb.l:                                             ; preds = %.lr.ph
  %i.bn = icmp ult i64 %.sroa.019.073, %i.bl
  br i1 %i.bn, label %bb.m, label %.split92.us.invoke

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sroa.019.0.in72
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !6
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sroa.019.073
  %i.br = add i64 %i.bp, 1
  store i64 %i.br, ptr %i.bq, align 8
  %.sroa.019.0 = add nuw i64 %.sroa.019.073, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0, %..i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.split92.us.invoke:                               ; preds = %bb.h, %bb.l, %.lr.ph, %.loopexit.us.us143, %.lr.ph77.split.us.split.split.split.us
  %i.bs = phi i64 [ %.sroa.019.0.in72, %.lr.ph ], [ 0, %.lr.ph77.split.us.split.split.split.us ], [ 0, %.loopexit.us.us143 ], [ %.sroa.019.073, %bb.l ], [ %i.am, %bb.h ]
  %i.bt = phi i64 [ %i.bl, %bb.l ], [ 0, %.lr.ph77.split.us.split.split.split.us ], [ 0, %.loopexit.us.us143 ], [ %i.bl, %.lr.ph ], [ %i.x, %bb.h ]
  %i.bu = phi ptr [ @18, %.lr.ph ], [ @16, %.lr.ph77.split.us.split.split.split.us ], [ @16, %.loopexit.us.us143 ], [ @19, %bb.l ], [ @17, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #21
          to label %.split92.us.cont unwind label %bb.a

.split92.us.cont:                                 ; preds = %.split92.us.invoke
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue(double noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.e, 4
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ae, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ad, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.h, align 8, !noundef !6 ; 4 uses
  %i.i = mul i64 %.val.i, %.val.i
  %i.j = mul i64 %i.i, %.val.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.1 = load i64, ptr %i.l, align 8, !noundef !6 ; 4 uses
  %i.m = mul i64 %.val.i.1, %.val.i.1
  %i.n = mul i64 %i.m, %.val.i.1
  %i.o = add i64 %.sroa.02.0.i, %i.j
  %i.p = add i64 %.val.i, %.val.i.1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val.i.2 = load i64, ptr %i.r, align 8, !noundef !6 ; 4 uses
  %i.s = mul i64 %.val.i.2, %.val.i.2
  %i.t = mul i64 %i.s, %.val.i.2
  %i.u = add i64 %i.o, %i.n
  %i.v = add i64 %i.p, %.val.i.2
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val.i.3 = load i64, ptr %i.x, align 8, !noundef !6 ; 4 uses
  %i.y = mul i64 %.val.i.3, %.val.i.3
  %i.z = mul i64 %i.y, %.val.i.3
  %i.aa = add i64 %i.u, %i.t
  %i.ab = add i64 %i.v, %.val.i.3
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = add i64 %i.z, %i.ac                     ; 3 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa, label %.preheader

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #20
          to label %common.resume unwind label %bb.f

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ae, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ad, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.al, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.ak, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noundef !6 ; 4 uses
  %i.ah = mul i64 %.val.i.epil, %.val.i.epil
  %i.ai = mul i64 %i.ah, %.val.i.epil
  %i.aj = sub i64 %.sroa.02.0.i.epil, %.val.i.epil
  %i.ak = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, label %.preheader.epil, !llvm.loop !114

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit: ; preds = %.preheader.epil, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.ad, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit.unr-lcssa ], [ %i.ak, %.preheader.epil ]
  %i.am = uitofp i64 %.lcssa to double
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit, %bb.a
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ %i.am, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit.loopexit ]
  %i.an = mul i64 %2, %1
  %i.ao = uitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = uitofp i64 %1 to double                 ; 2 uses
  %i.ar = uitofp i64 %2 to double                 ; 2 uses
  %i.as = fadd double %i.aq, %i.ar                ; 3 uses
  %i.at = fmul nnan double %i.aq, %i.ar
  %i.au = fdiv nnan double %i.at, 1.200000e+01
  %i.av = fadd nnan double %i.as, 1.000000e+00
  %i.aw = fadd nnan double %i.as, -1.000000e+00
  %i.ax = fmul double %i.as, %i.aw
  %i.ay = fdiv double %.sroa.0.0.i, %i.ax
  %i.az = fsub double %i.av, %i.ay
  %i.ba = fmul double %i.au, %i.az
  %i.bb = tail call double @llvm.sqrt.f64(double %i.ba)
  %i.bc = fsub double %0, %i.ap                   ; 2 uses
  %i.bd = fadd double %i.bc, -5.000000e-01
  %.sroa.0.0 = select i1 %4, double %i.bd, double %i.bc
  %i.be = fdiv double %.sroa.0.0, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.a, align 16
  %i.bf = invoke noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.be)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyu26calc_mwu_asymptotic_pvalue0NCINvXsK_NtBW_5accumjNtB3L_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2n_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.d ], [ %i.af, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  %i.bi = fsub double 1.000000e+00, %i.bf
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  ret double %i.bi

bb.f:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests12mannwhitneyuNtB2_17MannWhitneyUErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !115, !noundef !6
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !6, !nonnull !6 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 39) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 58) #23
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 63) #23
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests16anderson_darlingNtB2_20AndersonDarlingErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !7, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 39) #23
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB2_19FisherSnedecorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !6, !nonnull !6
  %spec.select = select i1 %i.b, ptr @26, ptr @25
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 51) #23
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6gumbelNtB2_11GumbelErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !6, !nonnull !6 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 15) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 36) #23
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution15fisher_snedecorNtB5_14FisherSnedecorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution6gumbelNtB5_6GumbelNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef double @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRdddNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways5_0NCINvXs26_NtNtBX_6traits5accumdNtB2J_3Sum3sumINtBT_3MapINtNtBV_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEEEB1x_EE0E0INtB7_5FnMutTdB1t_EE8call_mutB1F_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
