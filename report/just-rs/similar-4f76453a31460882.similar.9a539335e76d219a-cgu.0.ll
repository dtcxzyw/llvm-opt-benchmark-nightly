Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvNtCsdftwklc2oBO_7similar5udiff12unified_diff:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10352)
  %.val.i4.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !10355 ; 2 uses
  %i.da = icmp eq i64 %.val.i4.i.i.i, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val1.i5.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !10355, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i, i64 noundef %.val.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !10355
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i, %bb.ap
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar4text8TextDiffeEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef float @_RNvNtCsdftwklc2oBO_7similar6common10diff_ratio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, 288230376151711742
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.l, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.k, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val.i = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %.val11.i = load i64, ptr %i.d, align 8
  %i.e = icmp eq i64 %.val.i, 0
  %.sroa.0.0.i.i.i = select i1 %i.e, i64 %.val11.i, i64 0
  %i.f = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val.i.1 = load i64, ptr %i.h, align 8, !range !4, !noundef !5
  %i.i = getelementptr i8, ptr %i.g, i64 64
  %.val11.i.1 = load i64, ptr %i.i, align 8
  %i.j = icmp eq i64 %.val.i.1, 0
  %.sroa.0.0.i.i.i.1 = select i1 %i.j, i64 %.val11.i.1, i64 0
  %i.k = add i64 %.sroa.0.0.i.i.i.1, %i.f         ; 3 uses
  %i.l = add nuw nsw i64 %.sroa.04.0.i, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.l, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.k, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %.val.i.epil = load i64, ptr %i.m, align 8, !range !4, !noundef !5
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %.val11.i.epil = load i64, ptr %i.n, align 8
  %i.o = icmp eq i64 %.val.i.epil, 0
  %.sroa.0.0.i.i.i.epil = select i1 %i.o, i64 %.val11.i.epil, i64 0
  %i.p = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa, %.preheader.epil.preheader
  %.lcssa = phi i64 [ %i.k, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ], [ %i.p, %.preheader.epil.preheader ]
  %i.q = uitofp i64 %.lcssa to float
  %i.r = fmul nnan float %i.q, 2.000000e+00
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit, %bb.a
  %.sroa.0.0.i = phi float [ 0.000000e+00, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit ]
  %i.s = add i64 %3, %2                           ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = uitofp i64 %i.s to float
  %i.v = fdiv float %.sroa.0.0.i, %i.u
  %.sroa.0.0 = select i1 %i.t, float 1.000000e+00, float %i.v
  ret float %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsdftwklc2oBO_7similar6common14group_diff_ops(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ult i64 %i.d, 230584300921369396
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  %.val23 = load i64, ptr %1, align 8             ; 2 uses
  %i.i = icmp eq i64 %.val23, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.k = mul nuw i64 %.val23, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = tail call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %2) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.w, align 8
  %i.y = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aa = add <2 x i64> %i.x, %i.z
  store <2 x i64> %i.aa, ptr %i.w, align 8
  %i.ab = sub nuw i64 %i.u, %i.v
  store i64 %i.ab, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr [40 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -40
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.ac, i64 -16    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %2)
  store i64 %i.ai, ptr %i.ag, align 8
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.g, %bb.f
  %i.aj = load i64, ptr %1, align 8, !range !22, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.al = shl i64 %2, 1
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x
  %.sroa.012.1.lpad-body = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %.loopexit ], [ false, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.bq, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 4 uses
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit, label %.split

.split:                                           ; preds = %.body36
  %i.an = mul nuw i64 %i.aj, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10356
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br i1 %.sroa.012.1.lpad-body, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %.backedge
  %i.ao = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %7, %.backedge ] ; 2 uses
  %i.ap = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %storemerge, %.backedge ] ; 7 uses
  %.sroa.5.076 = phi ptr [ %i.q, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.aq, %.backedge ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 40 ; 2 uses
  %.sroa.042.0.copyload43 = load i64, ptr %.sroa.5.076, align 8, !noalias !10359 ; 2 uses
  %.sroa.844.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 8
  %.sroa.844.sroa.0.0.copyload = load i64, ptr %.sroa.844.0..sroa.5.8..sroa_idx, align 8, !noalias !10359 ; 3 uses
  %.sroa.844.sroa.6.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 16
  %.sroa.844.sroa.6.0.copyload = load i64, ptr %.sroa.844.sroa.6.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10359 ; 3 uses
  %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 24 ; 2 uses
  %i.ar = load <2 x i64>, ptr %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10359
  %.sroa.844.sroa.7.0.copyload = load i64, ptr %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10359 ; 3 uses
  switch i64 %.sroa.042.0.copyload43, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge [
    i64 -1, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
    i64 0, label %3
  ]

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.pre79 = load i64, ptr %i.b, align 8, !range !22, !alias.scope !10362, !noalias !10365
  br label %bb.q

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %.backedge, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %i.as = phi i64 [ %i.ap, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit ], [ %storemerge, %.backedge ] ; 2 uses
  %i.at = icmp eq i64 %i.aj, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.au = mul nuw i64 %i.aj, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10367
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread: ; preds = %bb.n, %bb.o
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit: ; preds = %.body36
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br i1 %.sroa.012.1.lpad-body, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29: ; preds = %bb.h, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  switch i64 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge [
    i64 0, label %bb.i
    i64 1, label %bb.k
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29
  %.sroa.561.0.copyload.pre = load ptr, ptr %i.l, align 8
  br label %bb.l

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val21 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.av = icmp eq i64 %.val21, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val22 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.aw = mul nuw i64 %.val21, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29
  %i.ax = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !4, !noundef !5
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge, %bb.k
  %.sroa.561.0.copyload = phi ptr [ %.sroa.561.0.copyload.pre, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge ], [ %i.ax, %bb.k ] ; 3 uses
  %.sroa.059.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  %i.ba = load i64, ptr %i.o, align 8, !alias.scope !10370, !noalias !10373, !noundef !5 ; 3 uses
  %i.bb = load i64, ptr %i.a, align 8, !range !22, !alias.scope !10370, !noalias !10373, !noundef !5
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.p unwind label %bb.n, !noalias !10373

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = icmp eq i64 %.sroa.059.0.copyload, 0
  br i1 %i.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.561.0.copyload) ]
  %i.bf = mul nuw i64 %.sroa.059.0.copyload, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.561.0.copyload, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10375
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30: ; preds = %bb.j, %bb.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.bg = load ptr, ptr %i.n, align 8, !alias.scope !10370, !noalias !10373, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ba ; 3 uses
  store i64 %.sroa.059.0.copyload, ptr %i.bh, align 8, !noalias !10370
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.561.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8, !noalias !10370
  %.sroa.664.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.as, ptr %.sroa.664.0..sroa_idx65, align 8, !noalias !10370
  %i.bi = add i64 %i.ba, 1
  store i64 %i.bi, ptr %i.o, align 8, !alias.scope !10370, !noalias !10373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30
  ret void

3:                                                ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %4 = icmp ugt i64 %.sroa.844.sroa.7.0.copyload, %i.al
  %.pre80 = load i64, ptr %i.b, align 8, !range !22, !noalias !5 ; 2 uses
  br i1 %4, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge, %3
  %5 = phi i64 [ %.pre79, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge ], [ %.pre80, %3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  %i.bj = icmp eq i64 %i.ap, %5
  br i1 %i.bj, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %._crit_edge81 unwind label %.loopexit

._crit_edge81:                                    ; preds = %bb.r
  %.pre82 = load ptr, ptr %i.l, align 8, !alias.scope !10362, !noalias !10365
  br label %bb.aa

bb.s:                                             ; preds = %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10376)
  %i.bk = icmp eq i64 %i.ap, %.pre80
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %._crit_edge unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.l, align 8, !alias.scope !10376, !noalias !10379
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %6 = phi ptr [ %.pre, %._crit_edge ], [ %i.ao, %bb.s ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.ap ; 4 uses
  store i64 0, ptr %i.bl, align 8, !noalias !10376
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.844.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !10376
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.844.sroa.6.0.copyload, ptr %.sroa.549.0..sroa_idx, align 8, !noalias !10376
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %2, ptr %.sroa.650.0..sroa_idx, align 8, !noalias !10376
  %i.bm = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.bm, ptr %i.m, align 8, !alias.scope !10376, !noalias !10379
  %.sroa.051.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  %i.bn = load i64, ptr %i.o, align 8, !alias.scope !10381, !noalias !10384, !noundef !5 ; 3 uses
  %i.bo = load i64, ptr %i.a, align 8, !range !22, !alias.scope !10381, !noalias !10384, !noundef !5
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.y unwind label %bb.w, !noalias !10384

bb.w:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.sroa.051.0.copyload, 0
  br i1 %i.br, label %.body36, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = mul nuw i64 %.sroa.051.0.copyload, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10386
  br label %.body36

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.bt = load ptr, ptr %i.n, align 8, !alias.scope !10381, !noalias !10384, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bn ; 3 uses
  store i64 %.sroa.051.0.copyload, ptr %i.bu, align 8, !noalias !10381
  %.sroa.553.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %6, ptr %.sroa.553.0..sroa_idx54, align 8, !noalias !10381
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.bm, ptr %.sroa.656.0..sroa_idx57, align 8, !noalias !10381
  %i.bv = add i64 %i.bn, 1
  store i64 %i.bv, ptr %i.o, align 8, !alias.scope !10381, !noalias !10384
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.bw = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #36 ; 7 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.z, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !252

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.z
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.y
  %i.by = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.844.sroa.7.0.copyload, i64 %2) ; 3 uses
  %i.bz = add i64 %i.by, %.sroa.844.sroa.0.0.copyload
  %i.ca = add i64 %i.by, %.sroa.844.sroa.6.0.copyload
  %i.cb = sub i64 %.sroa.844.sroa.7.0.copyload, %i.by
  store i64 0, ptr %i.bw, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bz, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.ca, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %i.b, align 8
  store ptr %i.bw, ptr %i.l, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.aa
  %7 = phi ptr [ %i.bw, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.cd, %bb.aa ]
  %storemerge = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.cf, %bb.aa ] ; 3 uses
  store i64 %storemerge, ptr %i.m, align 8
  %i.cc = icmp eq ptr %i.aq, %i.ak
  br i1 %i.cc, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.aa:                                            ; preds = %._crit_edge81, %bb.q
  %i.cd = phi ptr [ %.pre82, %._crit_edge81 ], [ %i.ao, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.ap ; 4 uses
  store i64 %.sroa.042.0.copyload43, ptr %i.ce, align 8, !noalias !10362
  %.sroa.6.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.844.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx46, align 8, !noalias !10362
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %.sroa.844.sroa.6.0.copyload, ptr %.sroa.847.0..sroa_idx, align 8, !noalias !10362
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store <2 x i64> %i.ar, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !10362
  %i.cf = add i64 %i.ap, 1
  br label %.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40: ; preds = %.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread, %bb.ac, %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit
  %.pn89 = phi { ptr, i32 } [ %i.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread ], [ %eh.lpad-body37, %bb.ac ], [ %eh.lpad-body37, %bb.ab ], [ %eh.lpad-body37, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit ], [ %eh.lpad-body37, %.split ]
  resume { ptr, i32 } %.pn89

bb.ab:                                            ; preds = %.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cg = icmp eq i64 %.val, 0
  br i1 %i.cg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val20 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.ch = mul nuw i64 %.val, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 16, 33) %2) unnamed_addr #13 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10390)
  %.sroa.0.0.copyload.i.i.a = load i64, ptr %0, align 1, !alias.scope !10387, !noalias !10390
  %.sroa.02.0.copyload.i.i.a = load i64, ptr %1, align 1, !alias.scope !10390, !noalias !10387
  store i64 %.sroa.02.0.copyload.i.i.a, ptr %0, align 1, !alias.scope !10387, !noalias !10390
  store i64 %.sroa.0.0.copyload.i.i.a, ptr %1, align 1, !alias.scope !10390, !noalias !10387
  %exitcond.not.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10394)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !10392, !noalias !10394
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !10394, !noalias !10392
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.b, align 1, !alias.scope !10392, !noalias !10394
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.c, align 1, !alias.scope !10394, !noalias !10392
  %exitcond.not.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.1, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10398)
  %.sroa.0.0.copyload.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !10396, !noalias !10398
  %.sroa.02.0.copyload.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !10398, !noalias !10396
  store i64 %.sroa.02.0.copyload.i.i.2, ptr %i.d, align 1, !alias.scope !10396, !noalias !10398
  store i64 %.sroa.0.0.copyload.i.i.2, ptr %i.e, align 1, !alias.scope !10398, !noalias !10396
  %exitcond.not.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.2, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %.sroa.0.0.copyload.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !10400, !noalias !10402
  %.sroa.02.0.copyload.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !10402, !noalias !10400
  store i64 %.sroa.02.0.copyload.i.i.3, ptr %i.f, align 1, !alias.scope !10400, !noalias !10402
  store i64 %.sroa.0.0.copyload.i.i.3, ptr %i.g, align 1, !alias.scope !10402, !noalias !10400
  br label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit

_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit
  %i.i = and i64 %2, 56                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 4 uses
  %i.l = icmp samesign ult i64 %i.h, 4
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10407)
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.j, align 1, !alias.scope !10404, !noalias !10407
  %.sroa.02.0.copyload.i.i5 = load i32, ptr %i.k, align 1, !alias.scope !10407, !noalias !10404
  store i32 %.sroa.02.0.copyload.i.i5, ptr %i.j, align 1, !alias.scope !10404, !noalias !10407
  store i32 %.sroa.0.0.copyload.i.i4, ptr %i.k, align 1, !alias.scope !10407, !noalias !10404
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 4, %bb.f ] ; 4 uses
  %i.m = and i64 %2, 2
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10412)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.o, align 1, !alias.scope !10409, !noalias !10412
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.p, align 1, !alias.scope !10412, !noalias !10409
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.o, align 1, !alias.scope !10409, !noalias !10412
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.p, align 1, !alias.scope !10412, !noalias !10409
  %i.q = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %i.r = and i64 %2, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.1.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.t, align 1, !alias.scope !10414, !noalias !10417
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.u, align 1, !alias.scope !10417, !noalias !10414
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.t, align 1, !alias.scope !10414, !noalias !10417
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.u, align 1, !alias.scope !10417, !noalias !10414
  br label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.j, %bb.i, %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvNtNtCsdftwklc2oBO_7similar10algorithms7compact25normalize_diff_op_cursors(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1) unnamed_addr #14 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !10419, !noalias !10424, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10419, !noalias !10424, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.sink3.i.i = load i64, ptr %i.d, align 8, !alias.scope !10426, !noalias !10431, !noundef !5
  %.idx = mul nuw nsw i64 %1, 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph

default.unreachable14:                            ; preds = %.lr.ph
  unreachable

.lr.ph:                                           ; preds = %switch.lookup, %bb.f
  %.sroa.01.113 = phi i64 [ %.sroa.01.2, %bb.f ], [ %i.c, %switch.lookup ] ; 2 uses
  %.sroa.02.112 = phi i64 [ %.sroa.02.2, %bb.f ], [ %.sink3.i.i, %switch.lookup ] ; 2 uses
  %.sroa.03.011 = phi ptr [ %i.f, %bb.f ], [ %0, %switch.lookup ] ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 40 ; 2 uses
  %i.g = load i64, ptr %.sroa.03.011, align 8, !range !4, !noundef !5
  switch i64 %i.g, label %default.unreachable14 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = add i64 %i.n, %i.k
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  store i64 %.sroa.02.112, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = add i64 %i.t, %i.r
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  store i64 %.sroa.01.113, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  %i.aa = add i64 %i.z, %i.x
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!10163 = distinct !{!10163, !10164, !"_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB1m_8InternalENtB1m_4EdgeE10insert_fitCsdftwklc2oBO_7similar: argument 0"}
!10164 = distinct !{!10164, !"_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB1m_8InternalENtB1m_4EdgeE10insert_fitCsdftwklc2oBO_7similar"}
!10165 = !{!10166}
!10166 = distinct !{!10166, !10167, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar: argument 0"}
!10167 = distinct !{!10167, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar"}
!10168 = !{!10169}
!10169 = distinct !{!10169, !10170, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar: argument 0"}
!10170 = distinct !{!10170, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar"}
!10171 = !{!10172}
!10172 = distinct !{!10172, !10173, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar: argument 0"}
!10173 = distinct !{!10173, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar"}
!10174 = distinct !{!10174, !229}
!10175 = !{!10064, !10066}
!10176 = !{!10177, !10064, !10066}
!10177 = distinct !{!10177, !10178, !"_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB19_4LeafE16push_with_handleCsdftwklc2oBO_7similar: argument 0"}
!10178 = distinct !{!10178, !"_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB19_4LeafE16push_with_handleCsdftwklc2oBO_7similar"}
!10179 = !{!10180}
!10180 = distinct !{!10180, !10181, !"_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjjEmE16deallocating_endNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!10181 = distinct !{!10181, !"_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjjEmE16deallocating_endNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar"}
!10182 = !{!10183}
!10183 = distinct !{!10183, !10184, !"_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjjEmE10take_frontCsdftwklc2oBO_7similar: argument 1"}
!10184 = distinct !{!10184, !"_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjjEmE10take_frontCsdftwklc2oBO_7similar"}
!10185 = !{!10183, !10180}
!10186 = !{!10187}
!10187 = distinct !{!10187, !10184, !"_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjjEmE10take_frontCsdftwklc2oBO_7similar: argument 0"}
!10188 = !{!10187, !10183, !10180}
!10189 = distinct !{!10189, !229}
!10190 = !{!10191, !10193, !10180}
!10191 = distinct !{!10191, !10192, !"_RNvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingTjjEmNtB19_14LeafOrInternalE6ascendCsdftwklc2oBO_7similar: argument 0"}
!10192 = distinct !{!10192, !"_RNvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingTjjEmNtB19_14LeafOrInternalE6ascendCsdftwklc2oBO_7similar"}
!10193 = distinct !{!10193, !10194, !"_RINvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingTjjEmNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!10194 = distinct !{!10194, !"_RINvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingTjjEmNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar"}
!10195 = !{!10193, !10180}
!10196 = !{!10197}
!10197 = distinct !{!10197, !10198, !"_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjjEmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 1"}
!10198 = distinct !{!10198, !"_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjjEmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar"}
!10199 = !{!10200}
!10200 = distinct !{!10200, !10201, !"_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjjEmE10init_frontCsdftwklc2oBO_7similar: argument 0"}
!10201 = distinct !{!10201, !"_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjjEmE10init_frontCsdftwklc2oBO_7similar"}
!10202 = !{!10200, !10197}
!10203 = !{!10204}
!10204 = distinct !{!10204, !10198, !"_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjjEmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!10205 = !{!10206, !10197}
!10206 = distinct !{!10206, !10207, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_mNtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECsdftwklc2oBO_7similar: argument 1"}
!10207 = distinct !{!10207, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_mNtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECsdftwklc2oBO_7similar"}
!10208 = !{!10209, !10204}
!10209 = distinct !{!10209, !10207, !"_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_B1R_mNtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECsdftwklc2oBO_7similar: argument 0"}
!10210 = !{!10200, !10204, !10197}
!10211 = distinct !{!10211, !229}
!10212 = !{!10206}
!10213 = !{!10214, !10216, !10217, !10219, !10209, !10206, !10204, !10197}
!10214 = distinct !{!10214, !10215, !"_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjjEmNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!10215 = distinct !{!10215, !"_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjjEmNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar"}
!10216 = distinct !{!10216, !10215, !"_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjjEmNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 1"}
!10217 = distinct !{!10217, !10218, !"_RNCINvMsm_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingTjjEmNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Csdftwklc2oBO_7similar: argument 0"}
!10218 = distinct !{!10218, !"_RNCINvMsm_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingTjjEmNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Csdftwklc2oBO_7similar"}
!10219 = distinct !{!10219, !10218, !"_RNCINvMsm_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingTjjEmNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Csdftwklc2oBO_7similar: argument 1"}
!10220 = !{!10221, !10223, !10214, !10216, !10217, !10219, !10209, !10206, !10204, !10197}
!10221 = distinct !{!10221, !10222, !"_RNvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingTjjEmNtB19_14LeafOrInternalE6ascendCsdftwklc2oBO_7similar: argument 0"}
!10222 = distinct !{!10222, !"_RNvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingTjjEmNtB19_14LeafOrInternalE6ascendCsdftwklc2oBO_7similar"}
!10223 = distinct !{!10223, !10224, !"_RINvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingTjjEmNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar: argument 0"}
!10224 = distinct !{!10224, !"_RINvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingTjjEmNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar"}
!10225 = !{!10226, !10228, !10214, !10216, !10217, !10219, !10209, !10206, !10204, !10197}
!10226 = distinct !{!10226, !10227, !"_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsdftwklc2oBO_7similar: argument 0"}
!10227 = distinct !{!10227, !"_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsdftwklc2oBO_7similar"}
!10228 = distinct !{!10228, !10227, !"_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingTjjEmNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsdftwklc2oBO_7similar: argument 1"}
!10229 = distinct !{!10229, !229}
!10230 = !{!10223, !10214, !10216, !10217, !10219, !10209, !10206, !10204, !10197}
!10231 = !{!10209, !10206, !10204, !10197}
!10232 = !{!10204, !10197}
!10233 = !{!10234}
!10234 = distinct !{!10234, !10235, !"_RNvMs4_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE9configure: argument 0"}
!10235 = distinct !{!10235, !"_RNvMs4_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE9configure"}
!10236 = !{!10237}
!10237 = distinct !{!10237, !10238, !"_RNvMs3_NtCsdftwklc2oBO_7similar4textNtB5_14TextDiffConfig9algorithm: argument 0"}
!10238 = distinct !{!10238, !"_RNvMs3_NtCsdftwklc2oBO_7similar4textNtB5_14TextDiffConfig9algorithm"}
!10239 = !{!10240, !10242, !10243, !10244}
!10240 = distinct !{!10240, !10241, !"_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eEB8_: argument 0"}
!10241 = distinct !{!10241, !"_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eEB8_"}
!10242 = distinct !{!10242, !10241, !"_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eEB8_: argument 1"}
!10243 = distinct !{!10243, !10241, !"_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eEB8_: argument 2"}
!10244 = distinct !{!10244, !10241, !"_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eEB8_: argument 3"}
!10245 = !{!10246}
!10246 = distinct !{!10246, !10247, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_: argument 0"}
!10247 = distinct !{!10247, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_"}
!10248 = !{!10249, !10240, !10242, !10243, !10244}
!10249 = distinct !{!10249, !10247, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_: argument 1"}
!10250 = !{!10240, !10242, !10244}
!10251 = !{!10252}
!10252 = distinct !{!10252, !10253, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_: argument 0"}
!10253 = distinct !{!10253, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_"}
!10254 = !{!10255, !10240, !10242, !10243, !10244}
!10255 = distinct !{!10255, !10253, !"_RNvXs2_NtNtCsdftwklc2oBO_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputB9_: argument 1"}
!10256 = !{!10240, !10242}
!10257 = !{!10258}
!10258 = distinct !{!10258, !10259, !"_RNvMs5_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE12unified_diffB7_: argument 0"}
!10259 = distinct !{!10259, !"_RNvMs5_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE12unified_diffB7_"}
!10260 = !{!10261}
!10261 = distinct !{!10261, !10259, !"_RNvMs5_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE12unified_diffB7_: argument 1"}
!10262 = !{!10263}
!10263 = distinct !{!10263, !10264, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE14context_radiusB7_: argument 0"}
!10264 = distinct !{!10264, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE14context_radiusB7_"}
!10265 = !{!10266}
!10266 = distinct !{!10266, !10267, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10header_optB7_: argument 0"}
!10267 = distinct !{!10267, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10header_optB7_"}
!10268 = !{!10269}
!10269 = distinct !{!10269, !10267, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10header_optB7_: argument 1"}
!10270 = !{!10271}
!10271 = distinct !{!10271, !10272, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE6headerB7_: argument 0"}
!10272 = distinct !{!10272, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE6headerB7_"}
!10273 = !{!10274, !10271, !10276, !10277, !10266, !10269}
!10274 = distinct !{!10274, !10275, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!10275 = distinct !{!10275, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!10276 = distinct !{!10276, !10272, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE6headerB7_: argument 1"}
!10277 = distinct !{!10277, !10272, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE6headerB7_: argument 2"}
!10278 = !{!10279, !10271, !10276, !10277, !10266, !10269}
!10279 = distinct !{!10279, !10280, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!10280 = distinct !{!10280, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!10281 = !{!10271, !10277, !10266, !10269}
!10282 = !{!10283, !10271, !10276, !10277, !10266, !10269}
!10283 = distinct !{!10283, !10284, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar: argument 0"}
!10284 = distinct !{!10284, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar"}
!10285 = !{!10271, !10276, !10277, !10266, !10269}
!10286 = !{!10271, !10276, !10266, !10269}
!10287 = !{!10271, !10266}
!10288 = !{!10276, !10277, !10269}
!10289 = !{!10290, !10292}
!10290 = distinct !{!10290, !10291, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10iter_hunksB7_: argument 1"}
!10291 = distinct !{!10291, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10iter_hunksB7_"}
!10292 = distinct !{!10292, !10293, !"_RNvXs6_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtB7_: argument 0"}
!10293 = distinct !{!10293, !"_RNvXs6_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtB7_"}
!10294 = !{!10295, !10296}
!10295 = distinct !{!10295, !10291, !"_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10iter_hunksB7_: argument 0"}
!10296 = distinct !{!10296, !10297, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringQINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeENtB5_12SpecToString14spec_to_stringBE_: argument 0"}
!10297 = distinct !{!10297, !"_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringQINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeENtB5_12SpecToString14spec_to_stringBE_"}
!10298 = !{!10296}
!10299 = !{!10292}
!10300 = !{!10290}
!10301 = !{!10295, !10290, !10292, !10296}
!10302 = !{!10303, !10295, !10290, !10292, !10296}
!10303 = distinct !{!10303, !10304, !"_RNvMs5_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE11grouped_opsB7_: argument 0"}
!10304 = distinct !{!10304, !"_RNvMs5_NtCsdftwklc2oBO_7similar4textINtB5_8TextDiffeE11grouped_opsB7_"}
!10305 = !{!10306, !10303, !10295, !10290, !10296}
!10306 = distinct !{!10306, !10307, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar: argument 0"}
!10307 = distinct !{!10307, !"_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdftwklc2oBO_7similar"}
!10308 = !{!10303, !10295, !10290, !10296}
!10309 = !{!10292, !10296}
!10310 = !{!10311}
!10311 = distinct !{!10311, !10312, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1M_4find5checkBX_QNCNvMs3_NtB1b_5udiffINtB3p_11UnifiedDiffeE10iter_hunks0E0INtNtNtB1U_3ops12control_flow11ControlFlowBX_EEB1b_: argument 1"}
!10312 = distinct !{!10312, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1M_4find5checkBX_QNCNvMs3_NtB1b_5udiffINtB3p_11UnifiedDiffeE10iter_hunks0E0INtNtNtB1U_3ops12control_flow11ControlFlowBX_EEB1b_"}
!10313 = !{!10314, !10311, !10296}
!10314 = distinct !{!10314, !10312, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1M_4find5checkBX_QNCNvMs3_NtB1b_5udiffINtB3p_11UnifiedDiffeE10iter_hunks0E0INtNtNtB1U_3ops12control_flow11ControlFlowBX_EEB1b_: argument 0"}
!10315 = !{!10316, !10318, !10314, !10311, !10296}
!10316 = distinct !{!10316, !10317, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEQNCNvMs3_NtB1N_5udiffINtB2w_11UnifiedDiffeE10iter_hunks0E0B1N_: argument 0"}
!10317 = distinct !{!10317, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEQNCNvMs3_NtB1N_5udiffINtB2w_11UnifiedDiffeE10iter_hunks0E0B1N_"}
!10318 = distinct !{!10318, !10317, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEQNCNvMs3_NtB1N_5udiffINtB2w_11UnifiedDiffeE10iter_hunks0E0B1N_: argument 1"}
!10319 = !{!10314, !10292, !10296}
!10320 = !{!10321}
!10321 = distinct !{!10321, !10322, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_: argument 0"}
!10322 = distinct !{!10322, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_"}
!10323 = !{!10324, !10326, !10328, !10330, !10296}
!10324 = distinct !{!10324, !10325, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1a_: argument 0"}
!10325 = distinct !{!10325, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB1a_"}
!10326 = distinct !{!10326, !10327, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1D_: argument 0"}
!10327 = distinct !{!10327, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1D_"}
!10328 = distinct !{!10328, !10329, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1k_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENCNvMs3_NtB2i_5udiffINtB31_11UnifiedDiffeE10iter_hunks0EEB2i_: argument 0"}
!10329 = distinct !{!10329, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1k_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENCNvMs3_NtB2i_5udiffINtB31_11UnifiedDiffeE10iter_hunks0EEB2i_"}
!10330 = distinct !{!10330, !10331, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_6filter6FilterINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1A_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENCNvMs3_NtB2y_5udiffINtB3h_11UnifiedDiffeE10iter_hunks0ENCB3b_s_0EEB2y_: argument 0"}
!10331 = distinct !{!10331, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_6filter6FilterINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB1A_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEENCNvMs3_NtB2y_5udiffINtB3h_11UnifiedDiffeE10iter_hunks0ENCB3b_s_0EEB2y_"}
!10332 = !{!10321, !10324, !10326, !10328, !10330, !10296}
!10333 = !{!"branch_weights", i32 1073205, i32 2146410443}
!10334 = !{!10335}
!10335 = distinct !{!10335, !10336, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar: argument 0"}
!10336 = distinct !{!10336, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar"}
!10337 = !{!10335, !10296}
!10338 = !{!10339}
!10339 = distinct !{!10339, !10340, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_: argument 0"}
!10340 = distinct !{!10340, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_"}
!10341 = !{!10342}
!10342 = distinct !{!10342, !10343, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_EEECsdftwklc2oBO_7similar: argument 0"}
!10343 = distinct !{!10343, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_EEECsdftwklc2oBO_7similar"}
!10344 = !{!10342, !10339}
!10345 = !{!10346}
!10346 = distinct !{!10346, !10347, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringBC_EECsdftwklc2oBO_7similar: argument 0"}
!10347 = distinct !{!10347, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringBC_EECsdftwklc2oBO_7similar"}
!10348 = !{!10349}
!10349 = distinct !{!10349, !10350, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar: argument 0"}
!10350 = distinct !{!10350, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar"}
!10351 = !{!10349, !10346, !10342, !10339}
!10352 = !{!10353}
!10353 = distinct !{!10353, !10354, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar: argument 0"}
!10354 = distinct !{!10354, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar"}
!10355 = !{!10353, !10346, !10342, !10339}
!10356 = !{!10357}
!10357 = distinct !{!10357, !10358, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_: argument 0"}
!10358 = distinct !{!10358, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_"}
!10359 = !{!10360}
!10360 = distinct !{!10360, !10361, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_: argument 1"}
!10361 = distinct !{!10361, !"_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_"}
!10362 = !{!10363}
!10363 = distinct !{!10363, !10364, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!10364 = distinct !{!10364, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!10365 = !{!10366}
!10366 = distinct !{!10366, !10364, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!10367 = !{!10368}
!10368 = distinct !{!10368, !10369, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_: argument 0"}
!10369 = distinct !{!10369, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_"}
!10370 = !{!10371}
!10371 = distinct !{!10371, !10372, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_: argument 0"}
!10372 = distinct !{!10372, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_"}
!10373 = !{!10374}
!10374 = distinct !{!10374, !10372, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_: argument 1"}
!10375 = !{!10371, !10374}
!10376 = !{!10377}
!10377 = distinct !{!10377, !10378, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 0"}
!10378 = distinct !{!10378, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_"}
!10379 = !{!10380}
!10380 = distinct !{!10380, !10378, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_: argument 1"}
!10381 = !{!10382}
!10382 = distinct !{!10382, !10383, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_: argument 0"}
!10383 = distinct !{!10383, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_"}
!10384 = !{!10385}
!10385 = distinct !{!10385, !10383, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsdftwklc2oBO_7similar5types6DiffOpEE8push_mutBN_: argument 1"}
!10386 = !{!10382, !10385}
!10387 = !{!10388}
!10388 = distinct !{!10388, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 0"}
!10389 = distinct !{!10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar"}
!10390 = !{!10391}
!10391 = distinct !{!10391, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 1"}
!10392 = !{!10393}
!10393 = distinct !{!10393, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 0:It1"}
!10394 = !{!10395}
!10395 = distinct !{!10395, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 1:It1"}
!10396 = !{!10397}
!10397 = distinct !{!10397, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 0:It2"}
!10398 = !{!10399}
!10399 = distinct !{!10399, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 1:It2"}
!10400 = !{!10401}
!10401 = distinct !{!10401, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 0:It3"}
!10402 = !{!10403}
!10403 = distinct !{!10403, !10389, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj8_ECsdftwklc2oBO_7similar: argument 1:It3"}
!10404 = !{!10405}
!10405 = distinct !{!10405, !10406, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECsdftwklc2oBO_7similar: argument 0"}
!10406 = distinct !{!10406, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECsdftwklc2oBO_7similar"}
!10407 = !{!10408}
!10408 = distinct !{!10408, !10406, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECsdftwklc2oBO_7similar: argument 1"}
!10409 = !{!10410}
!10410 = distinct !{!10410, !10411, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECsdftwklc2oBO_7similar: argument 0"}
!10411 = distinct !{!10411, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECsdftwklc2oBO_7similar"}
!10412 = !{!10413}
!10413 = distinct !{!10413, !10411, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECsdftwklc2oBO_7similar: argument 1"}
!10414 = !{!10415}
!10415 = distinct !{!10415, !10416, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECsdftwklc2oBO_7similar: argument 0"}
!10416 = distinct !{!10416, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECsdftwklc2oBO_7similar"}
!10417 = !{!10418}
!10418 = distinct !{!10418, !10416, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECsdftwklc2oBO_7similar: argument 1"}
!10419 = !{!10420, !10422}
!10420 = distinct !{!10420, !10421, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10421 = distinct !{!10421, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10422 = distinct !{!10422, !10423, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range: argument 0"}
!10423 = distinct !{!10423, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range"}
!10424 = !{!10425}
!10425 = distinct !{!10425, !10421, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10426 = !{!10427, !10429}
!10427 = distinct !{!10427, !10428, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10428 = distinct !{!10428, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10429 = distinct !{!10429, !10430, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range: argument 0"}
!10430 = distinct !{!10430, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range"}
!10431 = !{!10432}
!10432 = distinct !{!10432, !10428, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10433 = !{!10434, !10436}
!10434 = distinct !{!10434, !10435, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10435 = distinct !{!10435, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10436 = distinct !{!10436, !10437, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range: argument 0"}
!10437 = distinct !{!10437, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range"}
!10438 = !{!10439}
!10439 = distinct !{!10439, !10435, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10440 = !{!10441, !10443}
!10441 = distinct !{!10441, !10442, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10442 = distinct !{!10442, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10443 = distinct !{!10443, !10444, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range: argument 0"}
!10444 = distinct !{!10444, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range"}
!10445 = !{!10446}
!10446 = distinct !{!10446, !10442, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10447 = !{!10448, !10450}
!10448 = distinct !{!10448, !10449, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10449 = distinct !{!10449, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10450 = distinct !{!10450, !10451, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range: argument 0"}
!10451 = distinct !{!10451, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range"}
!10452 = !{!10453}
!10453 = distinct !{!10453, !10449, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10454 = !{!10455, !10457}
!10455 = distinct !{!10455, !10456, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 1"}
!10456 = distinct !{!10456, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple"}
!10457 = distinct !{!10457, !10458, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range: argument 0"}
!10458 = distinct !{!10458, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range"}
!10459 = !{!10460}
!10460 = distinct !{!10460, !10456, !"_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp12as_tag_tuple: argument 0"}
!10461 = !{!10462}
!10462 = distinct !{!10462, !10463, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2y_9into_iter8IntoIterB32_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB47_12OffsetLookupmEE0ENCB44_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB4b_: argument 0"}
!10463 = distinct !{!10463, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2y_9into_iter8IntoIterB32_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB47_12OffsetLookupmEE0ENCB44_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB4b_"}
!10464 = !{!10465}
!10465 = distinct !{!10465, !10466, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB1Z_9into_iter8IntoIterB2t_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3y_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8find_mapjQNCB3v_s_0EB3C_: argument 0"}
!10466 = distinct !{!10466, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB1Z_9into_iter8IntoIterB2t_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3y_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8find_mapjQNCB3v_s_0EB3C_"}
!10467 = !{!10468}
!10468 = distinct !{!10468, !10469, !"_RINvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB25_9into_iter8IntoIterB2z_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3E_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4T_8find_map5checkB2z_jQNCB3B_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3I_: argument 0"}
!10469 = distinct !{!10469, !"_RINvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB25_9into_iter8IntoIterB2z_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3E_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4T_8find_map5checkB2z_jQNCB3B_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3I_"}
!10470 = !{!10471}
!10471 = distinct !{!10471, !10472, !"_RINvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3u_12OffsetLookupmEE0EINtNtB2s_9into_iter8IntoIterB2W_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5h_8find_map5checkB2W_jQNCB3r_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3y_: argument 0"}
!10472 = distinct !{!10472, !"_RINvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3u_12OffsetLookupmEE0EINtNtB2s_9into_iter8IntoIterB2W_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5h_8find_map5checkB2W_jQNCB3r_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3y_"}
!10473 = !{!10474}
!10474 = distinct !{!10474, !10475, !"_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3u_12OffsetLookupmEE0EINtNtB2s_9into_iter8IntoIterB2W_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4J_uINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvB5S_8find_map5checkB2W_jQNCB3r_s_0E0E0B6M_EB3y_: argument 0"}
!10475 = distinct !{!10475, !"_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3u_12OffsetLookupmEE0EINtNtB2s_9into_iter8IntoIterB2W_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4J_uINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvB5S_8find_map5checkB2W_jQNCB3r_s_0E0E0B6M_EB3y_"}
!10476 = !{!10474, !10471, !10468, !10465, !10462}
!10477 = !{!10478}
!10478 = distinct !{!10478, !10479, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_: argument 0"}
!10479 = distinct !{!10479, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_"}
!10480 = !{!10481}
!10481 = distinct !{!10481, !10482, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_: argument 0"}
!10482 = distinct !{!10482, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_"}
!10483 = !{!10481, !10478, !10474, !10471, !10468, !10465, !10462}
!10484 = !{!10485, !10474, !10471, !10468, !10465, !10462}
!10485 = distinct !{!10485, !10486, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar: argument 0"}
!10486 = distinct !{!10486, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar"}
!10487 = !{!10488}
!10488 = distinct !{!10488, !10489, !"_RINvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3h_12OffsetLookupmEE0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5b_13FlattenCompatppE13iter_try_fold7flattenINtNtB2f_9into_iter8IntoIterB2J_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B5b_B5o_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6a_uB6I_NCINvNvB7I_8find_map5checkB2J_jQNCB3e_s_0E0E0E0B6I_EB3l_: argument 0"}
!10489 = distinct !{!10489, !"_RINvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3h_12OffsetLookupmEE0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5b_13FlattenCompatppE13iter_try_fold7flattenINtNtB2f_9into_iter8IntoIterB2J_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B5b_B5o_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6a_uB6I_NCINvNvB7I_8find_map5checkB2J_jQNCB3e_s_0E0E0E0B6I_EB3l_"}
!10490 = !{!10491}
!10491 = distinct !{!10491, !10489, !"_RINvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3h_12OffsetLookupmEE0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5b_13FlattenCompatppE13iter_try_fold7flattenINtNtB2f_9into_iter8IntoIterB2J_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B5b_B5o_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6a_uB6I_NCINvNvB7I_8find_map5checkB2J_jQNCB3e_s_0E0E0E0B6I_EB3l_: argument 1"}
!10492 = !{!10488, !10474, !10471, !10468, !10465, !10462}
!10493 = !{!10494}
!10494 = distinct !{!10494, !10495, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2Z_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB57_13FlattenCompatppE13iter_try_fold7flattenINtNtB1X_9into_iter8IntoIterB2r_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B57_B5k_B4e_8try_fold7flattenB66_uB6E_NCINvNvB4e_8find_map5checkB2r_jQNCB2W_s_0E0E0E0B6E_EB33_: argument 0"}
!10495 = distinct !{!10495, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2Z_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB57_13FlattenCompatppE13iter_try_fold7flattenINtNtB1X_9into_iter8IntoIterB2r_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B57_B5k_B4e_8try_fold7flattenB66_uB6E_NCINvNvB4e_8find_map5checkB2r_jQNCB2W_s_0E0E0E0B6E_EB33_"}
!10496 = !{!10497}
!10497 = distinct !{!10497, !10495, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2Z_12OffsetLookupmEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB57_13FlattenCompatppE13iter_try_fold7flattenINtNtB1X_9into_iter8IntoIterB2r_EuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B57_B5k_B4e_8try_fold7flattenB66_uB6E_NCINvNvB4e_8find_map5checkB2r_jQNCB2W_s_0E0E0E0B6E_EB33_: argument 1"}
!10498 = !{!10499}
!10499 = distinct !{!10499, !10500, !"_RINvYINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldTyB10_EINtNtB13_9into_iter8IntoIterB1x_EuINtNtNtB1E_3ops12control_flow11ControlFlowjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB5c_12OffsetLookupmEE0NCINvNvMsg_NtB3d_7flattenINtB6B_13FlattenCompatppE13iter_try_fold7flattenB3R_uB4p_NCINvNvXsi_B6B_B6P_B2g_8try_fold7flattenB3R_uB4p_NCINvNvB2g_8find_map5checkB1x_jQNCB59_s_0E0E0E0E0B4p_EB5g_: argument 0"}
!10500 = distinct !{!10500, !"_RINvYINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldTyB10_EINtNtB13_9into_iter8IntoIterB1x_EuINtNtNtB1E_3ops12control_flow11ControlFlowjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB5c_12OffsetLookupmEE0NCINvNvMsg_NtB3d_7flattenINtB6B_13FlattenCompatppE13iter_try_fold7flattenB3R_uB4p_NCINvNvXsi_B6B_B6P_B2g_8try_fold7flattenB3R_uB4p_NCINvNvB2g_8find_map5checkB1x_jQNCB59_s_0E0E0E0E0B4p_EB5g_"}
!10501 = !{!10502, !10504, !10499, !10494, !10488, !10474, !10471, !10468, !10465, !10462}
!10502 = distinct !{!10502, !10503, !"_RNvXsE_NtCs37Y8JGf013z_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEENtNtNtNtB1y_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar: argument 1"}
!10503 = distinct !{!10503, !"_RNvXsE_NtCs37Y8JGf013z_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEENtNtNtNtB1y_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar"}
!10504 = distinct !{!10504, !10505, !"_RNvXsF_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB5_8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEENtNtNtNtB1J_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar: argument 1"}
!10505 = distinct !{!10505, !"_RNvXsF_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB5_8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEENtNtNtNtB1J_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar"}
!10506 = !{!10507, !10508, !10497, !10491}
!10507 = distinct !{!10507, !10503, !"_RNvXsE_NtCs37Y8JGf013z_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEENtNtNtNtB1y_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar: argument 0"}
!10508 = distinct !{!10508, !10505, !"_RNvXsF_NtNtNtCsaKJjC64KgbL_3std11collections4hash3mapINtB5_8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEENtNtNtNtB1J_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar: argument 0"}
!10509 = !{!10510, !10502, !10504, !10499, !10494, !10488, !10474, !10471, !10468, !10465, !10462}
!10510 = distinct !{!10510, !10511, !"_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE9next_implKb0_ECsdftwklc2oBO_7similar: argument 0"}
!10511 = distinct !{!10511, !"_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE9next_implKb0_ECsdftwklc2oBO_7similar"}
!10512 = !{!10499, !10494, !10488, !10474, !10471, !10468, !10465, !10462}
!10513 = !{!10497, !10491}
!10514 = !{!10515, !10517, !10497, !10491, !10474, !10471, !10468, !10465, !10462}
!10515 = distinct !{!10515, !10516, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_: argument 0"}
!10516 = distinct !{!10516, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_"}
!10517 = distinct !{!10517, !10518, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_: argument 0"}
!10518 = distinct !{!10518, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_"}
!10519 = !{!10520, !10522, !10499, !10494, !10488}
!10520 = distinct !{!10520, !10521, !"_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenB1G_uB2X_NCINvNvB3V_8find_map5checkB2u_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB5u_12OffsetLookupmEEs_0E0E0E0B5y_: argument 0"}
!10521 = distinct !{!10521, !"_RNCINvNvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenB1G_uB2X_NCINvNvB3V_8find_map5checkB2u_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB5u_12OffsetLookupmEEs_0E0E0E0B5y_"}
!10522 = distinct !{!10522, !10523, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBa_6option6OptionjEEEEINtNtB14_9into_iter8IntoIterB1y_EuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3l_12OffsetLookupmEE0NCINvNvMsg_NtB6_7flattenINtB4K_13FlattenCompatppE13iter_try_fold7flattenB21_uB2z_NCINvNvXsi_B4K_B4X_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB2z_NCINvNvB6b_8find_map5checkB1y_jQNCB3i_s_0E0E0E0E0B3p_: argument 0"}
!10523 = distinct !{!10523, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBa_6option6OptionjEEEEINtNtB14_9into_iter8IntoIterB1y_EuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB3l_12OffsetLookupmEE0NCINvNvMsg_NtB6_7flattenINtB4K_13FlattenCompatppE13iter_try_fold7flattenB21_uB2z_NCINvNvXsi_B4K_B4X_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB2z_NCINvNvB6b_8find_map5checkB1y_jQNCB3i_s_0E0E0E0E0B3p_"}
!10524 = !{!10504}
!10525 = !{!10502}
!10526 = !{!10510}
!10527 = !{!10510, !10507, !10502, !10508, !10504, !10499, !10494, !10497, !10488, !10491, !10474, !10471, !10468, !10465, !10462}
!10528 = !{!10502, !10504, !10499, !10494, !10497, !10488, !10491, !10474, !10471, !10468, !10465, !10462}
!10529 = !{!10530}
!10530 = distinct !{!10530, !10531, !"_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBv_jEEEE6insertCsdftwklc2oBO_7similar: argument 0"}
!10531 = distinct !{!10531, !"_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBv_jEEEE6insertCsdftwklc2oBO_7similar"}
!10532 = !{!10533}
!10533 = distinct !{!10533, !10531, !"_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBv_jEEEE6insertCsdftwklc2oBO_7similar: argument 1"}
!10534 = !{!10535, !10530, !10533, !10520, !10522, !10499, !10494, !10497, !10488, !10491, !10474, !10471, !10468, !10465, !10462}
!10535 = distinct !{!10535, !10536, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar: argument 0"}
!10536 = distinct !{!10536, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar"}
!10537 = !{!10530, !10533, !10497, !10491, !10474, !10471, !10468, !10465, !10462}
!10538 = !{!10522, !10499, !10494, !10488}
!10539 = !{!10517}
!10540 = !{!10515}
!10541 = !{!10515, !10517, !10520, !10522, !10499, !10494, !10497, !10488, !10491, !10474, !10471, !10468, !10465, !10462}
!10542 = !{!10543, !10474, !10471, !10468, !10465, !10462}
!10543 = distinct !{!10543, !10544, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar: argument 0"}
!10544 = distinct !{!10544, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar"}
!10545 = !{!10546}
!10546 = distinct !{!10546, !10547, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_: argument 0"}
!10547 = distinct !{!10547, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4H_12OffsetLookupmEEs_0E0E0B4L_"}
!10548 = !{!10549}
!10549 = distinct !{!10549, !10550, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_: argument 0"}
!10550 = distinct !{!10550, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB36_12OffsetLookupmEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_"}
!10551 = !{!10549, !10546, !10474, !10471, !10468, !10465, !10462}
!10552 = !{!10553, !10474, !10471, !10468, !10465, !10462}
!10553 = distinct !{!10553, !10554, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar: argument 0"}
!10554 = distinct !{!10554, !"_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtB13_3ops4drop4Drop4dropCsdftwklc2oBO_7similar"}
!10555 = !{!10556}
!10556 = distinct !{!10556, !10557, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2y_9into_iter8IntoIterB32_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4b_4text12TextDiffSideeEE0ENCB44_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB4b_: argument 0"}
!10557 = distinct !{!10557, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2y_9into_iter8IntoIterB32_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4b_4text12TextDiffSideeEE0ENCB44_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB4b_"}
!10558 = !{!10559}
!10559 = distinct !{!10559, !10560, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB1Z_9into_iter8IntoIterB2t_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3C_4text12TextDiffSideeEE0ENtNtNtBa_6traits8iterator8Iterator8find_mapjQNCB3v_s_0EB3C_: argument 0"}
!10560 = distinct !{!10560, !"_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB1Z_9into_iter8IntoIterB2t_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3C_4text12TextDiffSideeEE0ENtNtNtBa_6traits8iterator8Iterator8find_mapjQNCB3v_s_0EB3C_"}
!10561 = !{!10562}
!10562 = distinct !{!10562, !10563, !"_RINvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB25_9into_iter8IntoIterB2z_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3I_4text12TextDiffSideeEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB50_8find_map5checkB2z_jQNCB3B_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3I_: argument 0"}
!10563 = distinct !{!10563, !"_RINvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEEINtNtB25_9into_iter8IntoIterB2z_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3I_4text12TextDiffSideeEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB50_8find_map5checkB2z_jQNCB3B_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3I_"}
!10564 = !{!10565}
!10565 = distinct !{!10565, !10566, !"_RINvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3y_4text12TextDiffSideeEE0EINtNtB2s_9into_iter8IntoIterB2W_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5o_8find_map5checkB2W_jQNCB3r_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3y_: argument 0"}
!10566 = distinct !{!10566, !"_RINvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3y_4text12TextDiffSideeEE0EINtNtB2s_9into_iter8IntoIterB2W_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5o_8find_map5checkB2W_jQNCB3r_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB3y_"}
!10567 = !{!10568}
!10568 = distinct !{!10568, !10569, !"_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3y_4text12TextDiffSideeEE0EINtNtB2s_9into_iter8IntoIterB2W_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Q_uINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvB5Z_8find_map5checkB2W_jQNCB3r_s_0E0E0B6T_EB3y_: argument 0"}
!10569 = distinct !{!10569, !"_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBc_6option6OptionjEEEENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3y_4text12TextDiffSideeEE0EINtNtB2s_9into_iter8IntoIterB2W_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Q_uINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvB5Z_8find_map5checkB2W_jQNCB3r_s_0E0E0B6T_EB3y_"}
!10570 = !{!10568, !10565, !10562, !10559, !10556}
!10571 = !{!10572}
!10572 = distinct !{!10572, !10573, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4L_4text12TextDiffSideeEEs_0E0E0B4L_: argument 0"}
!10573 = distinct !{!10573, !"_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjINtNtBg_6option6OptionjEEEuINtNtNtBg_3ops12control_flow11ControlFlowjENCINvNvB1j_8find_map5checkB2W_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4L_4text12TextDiffSideeEEs_0E0E0B4L_"}
!10574 = !{!10575}
!10575 = distinct !{!10575, !10576, !"_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEENtNtNtNtB14_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1F_8find_map5checkBX_jQNCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB3a_4text12TextDiffSideeEEs_0E0INtNtNtB14_3ops12control_flow11ControlFlowjEEB3a_: argument 0"}
end_hunk_1
