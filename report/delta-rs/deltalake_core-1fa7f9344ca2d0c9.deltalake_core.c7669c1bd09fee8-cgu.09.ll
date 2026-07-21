inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecxE14extend_trustedBN_E0E0EB1z_:bb.a
  %i.ba = trunc i128 %i.az to i64
  %.not1.i.i.i.i = icmp ugt i64 %i.ba, %i.p
  br i1 %.not1.i.i.i.i, label %bb.e, label %bb.p

bb.p:                                             ; preds = %.noexc8.i
  %i.bb = lshr i128 %i.az, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = load i64, ptr %i.e, align 8, !alias.scope !11875, !noalias !11870, !noundef !4
  %i.be = add i64 %i.bd, %i.bc
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i: ; preds = %bb.p, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.be, %bb.p ], [ %i.n, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.bf, align 8, !noalias !11904
  %i.bg = add i64 %.val7.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvBL_8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecxE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit, label %bb.b

.loopexit.i:                                      ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11878
  resume { ptr, i32 } %lpad.phi.i

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvBL_8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecxE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.bg, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjxuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11878
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecfE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !11829, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = icmp ult i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvBL_8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i, %.lr.ph.i
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.am, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ] ; 3 uses
  %.sroa.0.013.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.j, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ]
  %i.j = add i64 %.sroa.0.013.i, 1                ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !noalias !11909, !nonnull !4, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !alias.scope !11914, !noalias !11909, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 63
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 288 ; 2 uses
  %i.q = invoke noundef i64 @_RNvNtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding4fork16get_fork_counter()
          to label %.noexc.i unwind label %bb.g, !noalias !11917 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 344 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !11918, !noalias !11923, !noundef !4 ; 2 uses
  %i.t = icmp slt i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !11918, !noalias !11923, !noundef !4
  %i.w = sub i64 %i.v, %i.q
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i64 %i.s, -256
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !11918, !noalias !11923
  invoke void @_RNvNtCs37WNb9qflfz_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.p, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(352) %i.l)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i unwind label %bb.g, !noalias !11917

bb.f:                                             ; preds = %bb.d, %.noexc.i
  invoke void @_RNvMs3_NtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtCsau89Cp69Una_9rand_core2os5OsRngE19reseed_and_generateBb_(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.p, ptr noalias noundef nonnull align 16 dereferenceable(352) %i.l, i64 noundef %i.q) #45
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i unwind label %bb.g, !noalias !11917

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i: ; preds = %bb.f, %bb.e, %bb.b
  %i.z = phi i64 [ %i.n, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !11914, !noalias !11909, !noundef !4
  %i.ac = add nuw nsw i64 %i.z, 1
  store i64 %i.ac, ptr %i.m, align 16, !alias.scope !11914, !noalias !11909
  %i.ad = lshr i32 %i.ab, 9
  %i.ae = or disjoint i32 %i.ad, 1065353216
  %i.af = bitcast i32 %i.ae to float
  %i.ag = fadd nnan float %i.af, -1.000000e+00
  %i.ah = load float, ptr %i.i, align 4, !noalias !11909, !noundef !4
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = load float, ptr %i.e, align 4, !noalias !11909, !noundef !4
  %i.ak = fadd float %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  store float %i.ak, ptr %i.al, align 4, !noalias !11925
  %i.am = add i64 %.val7.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvBL_8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit, label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11917
  resume { ptr, i32 } %i.an

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvBL_8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecfE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.am, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjfuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callfNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecfE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11917
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = icmp ult i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvBL_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i, %.lr.ph.i
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.w, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ]
  %i.j = load ptr, ptr %i.g, align 8, !noalias !11930, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = invoke fastcc noundef i64 @_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(352) %i.k) #46
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i unwind label %bb.c, !noalias !11935

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i: ; preds = %bb.b
  %i.m = add i64 %.sroa.0.011.i, 1                ; 2 uses
  %i.n = lshr i64 %i.l, 12
  %i.o = or disjoint i64 %i.n, 4607182418800017408
  %i.p = bitcast i64 %i.o to double
  %i.q = fadd nnan double %i.p, -1.000000e+00
  %i.r = load double, ptr %i.i, align 8, !noalias !11930, !noundef !4
  %i.s = fmul double %i.q, %i.r
  %i.t = load double, ptr %i.e, align 8, !noalias !11930, !noundef !4
  %i.u = fadd double %i.t, %i.s
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  store double %i.u, ptr %i.v, align 8, !noalias !11936
  %i.w = add i64 %.val7.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvBL_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11935
  resume { ptr, i32 } %i.x

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvBL_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4b_3VecdE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2h_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjduNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3w_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B17_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11935
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4callNtNtCs6Po7BT7Nknu_5alloc6string6StringNCINvMsj_NtB43_3vecINtB4K_3VecB3Z_E14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %2 = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4P_3VecB25_E14extend_trustedINtB1B_3MapB3_B2I_EE0E0E0EB2S_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i, %.lr.ph.i
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11941
  store i64 0, ptr %i.b, align 8, !noalias !11941
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !11941
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !11941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11941
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !noalias !11951
  store ptr %2, ptr %i.i, align 8, !noalias !11951
  store i64 3, ptr %3, align 8, !noalias !11951
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtNtCs33QkLPyrmWQ_4rand13distributions12distribution8DistIterRNtNtB27_5other12AlphanumericQNtNtNtB29_4rngs6thread9ThreadRnghEEE11spec_extendCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i unwind label %bb.c, !noalias !11955

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #43
          to label %bb.e unwind label %bb.d, !noalias !11955

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !11955
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i: ; preds = %bb.b
  %i.l = add i64 %.sroa.0.011.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11941
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !11957
  %i.n = add i64 %.val7.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not.i = icmp eq i64 %i.l, %i.g
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4P_3VecB25_E14extend_trustedINtB1B_3MapB3_B2I_EE0E0E0EB2S_.exit, label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11962
  resume { ptr, i32 } %i.j

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4P_3VecB25_E14extend_trustedINtB1B_3MapB3_B2I_EE0E0E0EB2S_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arraysa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB49_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1y_EE0E0E0B1I_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !11962
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_10filter_map15filter_map_foldNtNtNtNtB1D_6kernel8snapshot9iterators15LogicalFileViewTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtBc_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEuNCB1r_s_0NCINvNvB3n_8for_each4callB5x_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB97_7HashMapB5y_B5W_EINtNtB3r_7collect12FromIteratorB5x_E9from_iterINtB46_9FilterMapBN_B8l_EE0E0E0EB1D_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.015.i.i.i = alloca [88 x i8], align 8    ; 4 uses
  %.sroa.6.i.i.i = alloca [96 x i8], align 8      ; 6 uses
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.414.i.i.i = alloca [96 x i8], align 8    ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [96 x i8], align 16               ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %i.l = alloca [96 x i8], align 16               ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 11 uses
  %i.n = alloca [96 x i8], align 16               ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 11 uses
  %i.p = alloca [48 x i8], align 8                ; 19 uses
  %.sroa.0.i.i.i = alloca [88 x i8], align 8      ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11963)
  %i.y = icmp ult i64 %i.u, %i.w
  br i1 %i.y, label %.lr.ph.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuNCNvNtNtNtNtNtB2d_16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0NCINvNtB1D_10filter_map15filter_map_foldB25_TNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtBa_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEuNCB3r_s_0NCINvNvBL_8for_each4callB5E_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB9d_7HashMapB5F_B63_EINtNtBP_7collect12FromIteratorB5E_E9from_iterINtB51_9FilterMapINtB1B_3MapB3_B3p_EB8s_EE0E0E0E0EB2d_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.414.56..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.8.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.bh, %_RNvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB5_7HashMapNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEE6insertCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_0Bd_.exit.i.i.i, %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_0Bd_.exit.thread26.i.i.i, %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_0Bd_.exit.thread.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bg, %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.g, %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.b ], [ %i.as, %bb.f ], [ %i.as, %bb.g ], [ %.pn27.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.gh, %bb.bc ], [ %i.gx, %bb.bg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuNCNvNtNtNtNtNtB1u_16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0NCINvNtBN_10filter_map15filter_map_foldB1m_TNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEuNCB2I_s_0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callB4U_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB8Y_7HashMapB4V_B5j_EINtNtB82_7collect12FromIteratorB4U_E9from_iterINtB4i_9FilterMapINtBL_3MapINtNtNtB4_3ops5range5RangejEB2G_EB7I_EE0E0E0E0EB1u_.exit.i unwind label %bb.bi

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuNCNvNtNtNtNtNtB13_16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0NCINvNtB6_10filter_map15filter_map_foldBV_TNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtBa_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEuNCB2h_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4s_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB8w_7HashMapB4t_B4R_EINtNtB7A_7collect12FromIteratorB4s_E9from_iterINtB3R_9FilterMapINtB4_3MapINtNtNtBa_3ops5range5RangejEB2f_EB7g_EE0E0E0E0B13_.exit.i, %.lr.ph.i
  %.sroa.0.025.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.ao, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuNCNvNtNtNtNtNtB13_16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0NCINvNtB6_10filter_map15filter_map_foldBV_TNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtBa_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEuNCB2h_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4s_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB8w_7HashMapB4t_B4R_EINtNtB7A_7collect12FromIteratorB4s_E9from_iterINtB3R_9FilterMapINtB4_3MapINtNtNtBa_3ops5range5RangejEB2f_EB7g_EE0E0E0E0B13_.exit.i ] ; 2 uses
  %i.ao = add i64 %.sroa.0.025.i, 1               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11966)
  call void @llvm.experimental.noalias.scope.decl(metadata !11969)
  call void @llvm.experimental.noalias.scope.decl(metadata !11972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11975
  %i.ap = load ptr, ptr %i.z, align 8, !alias.scope !11978, !noalias !11979, !nonnull !4, !noundef !4 ; 4 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !11980
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ap, ptr %i.r, align 8, !noalias !11975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11975
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s)
          to label %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0Bd_.exit.i.i unwind label %bb.f, !noalias !11979

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !11981
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #45
          to label %.body.i unwind label %bb.h, !noalias !11979

bb.h:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !11979
  unreachable

_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0Bd_.exit.i.i: ; preds = %bb.d
  %i.aw = load i64, ptr %i.aa, align 8, !alias.scope !11978, !noalias !11979, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !11990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11975
  call void @llvm.experimental.noalias.scope.decl(metadata !11991)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  store ptr %i.ap, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !11992
  store i64 %i.aw, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !11992
  store i64 %.sroa.0.025.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !11992
  call void @llvm.experimental.noalias.scope.decl(metadata !11993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11986
  %i.ax = invoke { i64, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView11num_records(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.j unwind label %bb.i, !noalias !11996 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit30.i.i.i.i, %bb.i
  %.pn27.i.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %.pn25.i.i.i.i, %bb.n ], [ %.pn25.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit30.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.body.i unwind label %bb.am, !noalias !11996

bb.i:                                             ; preds = %.invoke.i.i.i.i, %bb.l, %bb.k, %bb.j, %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0Bd_.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.j:                                             ; preds = %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statistics0Bd_.exit.i.i
  %i.az = extractvalue { i64, i64 } %i.ax, 0
  %i.ba = trunc nuw i64 %i.az to i1               ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ax, 1
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.bb, i64 undef
  %spec.select59.i.i.i.i = select i1 %i.ba, i64 0, i64 2 ; 3 uses
  %i.bc = invoke noundef i64 @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView4size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.k unwind label %bb.i, !noalias !11996

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11998
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView11null_counts(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.l unwind label %bb.i, !noalias !11996

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay14extract_struct(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.n)
          to label %bb.m unwind label %bb.i, !noalias !11996

end_hunk_0
