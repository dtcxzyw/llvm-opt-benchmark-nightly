Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.08?download=true
inline.NumInlined: 1395
inline.NumDeleted: 822
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs3ZkgueCtkyH_14ruff_workspace:bb.a
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !355, !noundef !4 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !356, !noundef !4
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !356, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !357
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !355, !noundef !4 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !356, !noundef !4
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !356, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !357
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !355, !noundef !4 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !356, !noundef !4
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !356, !noundef !4
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !357
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !355
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutThcEEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1S_8for_each4callB1q_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB38_3VecB1q_E14extend_trustedBN_E0E0ECs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.v, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.w, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.i = load i8, ptr %i.h, align 4, !alias.scope !373, !noalias !374, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !range !12, !alias.scope !373, !noalias !374, !noundef !4
  store i8 0, ptr %i.h, align 4, !alias.scope !373, !noalias !374
  store i32 0, ptr %i.j, align 4, !alias.scope !373, !noalias !374
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store i8 %i.i, ptr %i.l, align 4, !noalias !375
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.k, ptr %i.m, align 4, !noalias !375
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.p = load i8, ptr %i.o, align 4, !alias.scope !377, !noalias !374, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !range !12, !alias.scope !377, !noalias !374, !noundef !4
  store i8 0, ptr %i.o, align 4, !alias.scope !377, !noalias !374
  store i32 0, ptr %i.q, align 4, !alias.scope !377, !noalias !374
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store i8 %i.p, ptr %i.t, align 4, !noalias !378
  %i.u = getelementptr i8, ptr %i.s, i64 12
  store i32 %i.r, ptr %i.u, align 4, !noalias !378
  %i.v = add i64 %i.g, 2                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.x = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.v, %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.w, %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.z = load i8, ptr %i.y, align 4, !alias.scope !373, !noalias !374, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !range !12, !alias.scope !373, !noalias !374, !noundef !4
  store i8 0, ptr %i.y, align 4, !alias.scope !373, !noalias !374
  store i32 0, ptr %i.aa, align 4, !alias.scope !373, !noalias !374
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store i8 %i.z, ptr %i.ac, align 4, !noalias !375
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ab, ptr %i.ad, align 4, !noalias !375
  %i.ae = add i64 %.epil.init, 1
  br label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.epil.preheader, %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutThcEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldQBT_BT_uINvNtBb_3mem4takeBT_ENCINvNvBY_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3l_3VecBT_E14extend_trustedINtB1O_3MapBF_B2q_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit.loopexit.unr-lcssa ], [ %i.ae, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !379
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutcEINvNtBc_3mem4takecEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1M_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2Z_3VeccE14extend_trustedBN_E0E0ECs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutcENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQccuINvNtBb_3mem4takecENCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3a_3VeccE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %3 = and i64 %i.d, -4                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %3
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %i.g, i64 %3
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !alias.scope !400, !noalias !401
  %wide.load4 = load <4 x i32>, ptr %i.k, align 4, !alias.scope !400, !noalias !401
  store <4 x i32> zeroinitializer, ptr %i.j, align 4, !alias.scope !400, !noalias !401
  store <4 x i32> zeroinitializer, ptr %i.k, align 4, !alias.scope !400, !noalias !401
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !alias.scope !402, !noalias !403
  store <4 x i32> %wide.load4, ptr %i.m, align 4, !alias.scope !402, !noalias !403
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutcENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQccuINvNtBb_3mem4takecENCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3a_3VeccE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.o = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.q = load i32, ptr %i.p, align 4, !range !12, !alias.scope !406, !noalias !407, !noundef !4
  store i32 0, ptr %i.p, align 4, !alias.scope !406, !noalias !407
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i32 %i.q, ptr %i.r, align 4, !noalias !403
  %i.s = add i64 %.ph, 1                          ; 2 uses
  %i.t = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = icmp eq i64 %i.e, %.neg
  br i1 %i.u, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutcENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQccuINvNtBb_3mem4takecENCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3a_3VeccE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.v = phi i64 [ %i.ae, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.x = load i32, ptr %i.w, align 4, !range !12, !alias.scope !406, !noalias !407, !noundef !4
  store i32 0, ptr %i.w, align 4, !alias.scope !406, !noalias !407
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i32 %i.x, ptr %i.y, align 4, !noalias !403
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.ab = load i32, ptr %i.aa, align 4, !range !12, !alias.scope !409, !noalias !407, !noundef !4
  store i32 0, ptr %i.aa, align 4, !alias.scope !409, !noalias !407
  %i.ac = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  store i32 %i.ab, ptr %i.ad, align 4, !noalias !410
  %i.ae = add i64 %i.v, 2                         ; 2 uses
  %i.af = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.e
  br i1 %i.ag, label %_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutcENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQccuINvNtBb_3mem4takecENCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3a_3VeccE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit, label %scalar.ph, !llvm.loop !398

_RINvXs2Q_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_7IterMutcENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldQccuINvNtBb_3mem4takecENCINvNvBV_8for_each4callcNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3a_3VeccE14extend_trustedINtB1L_3MapBF_B2j_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ae, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !411
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs3ZkgueCtkyH_14ruff_workspace13configuration13ConfigurationEENCNvMs16_NtNtB1N_3map4iterINtB43_10IntoValuesB2h_B2Q_E3new0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1L_INtNtNtBc_3mem12maybe_uninit11MaybeUninitB2h_EB2Q_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB6a_E0INtNtBc_6result6ResultB5z_zEEB2U_(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs3ZkgueCtkyH_14ruff_workspace13configuration13ConfigurationEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropIBX_INtNtNtB3e_3mem12maybe_uninit11MaybeUninitB1t_EB22_EENCINvNtNtB3c_8adapters3map12map_try_foldBW_B4K_B4a_INtNtB3e_6result6ResultB4a_zENCNvMs16_NtNtBZ_3map4iterINtB76_10IntoValuesB1t_B22_E3new0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4K_E0E0B6u_EB26_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2g_7HashSetB1K_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB1K_E6extendINtB12_3VecB1K_EE0ENtNtB3Q_8iterator8Iterator4folduNCINvNvB4M_8for_each4callTB1K_uENCINvXs1i_NtB2i_3mapINtB5Y_7HashMapB1K_uB33_EIB3M_B5H_E6extendBN_E0E0ECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3b_7HashSetBW_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtB1m_7collect6ExtendBW_E6extendINtB8_3VecBW_EE0NCINvNvB1i_8for_each4callB2V_NCINvXs1i_NtB3d_3mapINtB67_7HashMapBW_uB3X_EIB4G_B2V_E6extendINtB2o_3MapBH_B32_EE0E0E0ECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2h_13Configuration12from_optionss0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternNCINvMsj_B12_INtB12_3VecB4K_E14extend_trustedBN_E0E0EB2j_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_NtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternuNCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB44_13Configuration12from_optionss0_00NCINvNvB1i_8for_each4callB2V_NCINvMsj_B8_INtB8_3VecB2V_E14extend_trustedINtB2o_3MapBH_B3U_EE0E0E0EB46_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2h_13Configuration12from_optionss3_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternNCINvMsj_B12_INtB12_3VecB4K_E14extend_trustedBN_E0E0EB2j_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_NtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternuNCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB44_13Configuration12from_optionss3_00NCINvNvB1i_8for_each4callB2V_NCINvMsj_B8_INtB8_3VecB2V_E14extend_trustedINtB2o_3MapBH_B3U_EE0E0E0EB46_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2h_13Configuration12from_optionss4_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternNCINvMsj_B12_INtB12_3VecB4K_E14extend_trustedBN_E0E0EB2j_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_NtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternuNCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB44_13Configuration12from_optionss4_00NCINvNvB1i_8for_each4callB2V_NCINvMsj_B8_INtB8_3VecB2V_E14extend_trustedINtB2o_3MapBH_B3U_EE0E0E0EB46_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2h_13Configuration12from_optionss5_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternNCINvMsj_B12_INtB12_3VecB4K_E14extend_trustedBN_E0E0EB2j_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_NtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternuNCNCNvMs0_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB44_13Configuration12from_optionss5_00NCINvNvB1i_8for_each4callB2V_NCINvMsj_B8_INtB8_3VecB2V_E14extend_trustedINtB2o_3MapBH_B3U_EE0E0E0EB46_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2h_17LintConfiguration12from_options00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternNCINvMsj_B12_INtB12_3VecB4L_E14extend_trustedBN_E0E0EB2j_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1o_8adapters3map8map_foldBW_NtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types11FilePatternuNCNCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB44_17LintConfiguration12from_options00NCINvNvB1i_8for_each4callB2V_NCINvMsj_B8_INtB8_3VecB2V_E14extend_trustedINtB2o_3MapBH_B3U_EE0E0E0EB46_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
