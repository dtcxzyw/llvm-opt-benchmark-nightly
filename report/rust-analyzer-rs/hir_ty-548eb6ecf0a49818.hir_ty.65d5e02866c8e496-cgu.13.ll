Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.13?download=true
inline.NumInlined: 6935
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEKj9_EINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtB1z_5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtB1x_5lower35convert_closure_capture_projections0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB6a_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7q_3VecB1u_E14extend_trustedBO_E0E0EB1z_:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !noundef !5
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.d

.loopexit:                                        ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Z_3mir5lower35convert_closure_capture_projections0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4c_8for_each4callINtB3j_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB3j_5LocalEENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6t_3VecB5f_E14extend_trustedINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB5f_Kj9_EBN_EE0E0EB1Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val5 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.w, align 8, !noundef !5
  store i64 %.val6, ptr %.val5, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.y, align 8, !noundef !5
  store i64 %.val4, ptr %.val, align 8
  resume { ptr, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceKj9_EINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvXsg_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB39_10DbInternerNtNtB1w_8interner8Interner12variances_of0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB4T_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB69_3VecB1u_E14extend_trustedBO_E0E0EB3d_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4592)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4593
  store ptr %i.g, ptr %i.a, align 8, !noalias !4593
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 9, ptr %i.h, align 8, !noalias !4593
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %1, ptr %i.i, align 8, !noalias !4593
  call void @llvm.experimental.noalias.scope.decl(metadata !4594)
  call void @llvm.experimental.noalias.scope.decl(metadata !4595)
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !4596, !noalias !4597, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4596, !noalias !4597, !noundef !5 ; 3 uses
  %i.m = icmp ule i64 %i.j, %i.l
  call void @llvm.assume(i1 %i.m)
  %.not1.i.i = icmp eq i64 %i.j, %i.l
  br i1 %.not1.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.noexc
  %i.n = phi i64 [ %i.o, %.noexc ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !4596, !noalias !4597
  call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !4599, !noalias !4600, !nonnull !5, !noundef !5
  %i.q = load i64, ptr %i.h, align 8, !alias.scope !4599, !noalias !4600, !noundef !5
  %i.r = icmp ult i64 %i.n, %i.q
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.t = load i8, ptr %i.s, align 1, !range !36, !noalias !4601, !noundef !5
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2H_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterB1O_Kj9_EINtNtB3I_3map3MapINtNtB9_5range5RangejENCNvXsg_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5x_10DbInternerNtNtB1Q_8interner8Interner12variances_of0EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB5B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef range(i8 0, 4) %i.t)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.o, %i.l
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !8, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXsg_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB1x_10DbInternerNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8interner8Interner12variances_of0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callNtB2E_8VarianceNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5c_3VecB4O_E14extend_trustedINtNtB8_5chain5ChainINtNtNtBc_5array4iter8IntoIterB4O_Kj9_EBN_EE0E0EB1B_(i64 noundef %i.y, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val5 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.ab, align 8, !noundef !5
  store i64 %.val6, ptr %.val5, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.ad, align 8, !noundef !5
  store i64 %.val4, ptr %.val, align 8
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceKj9_EINtNtNtB9_7sources8repeat_n7RepeatNB1u_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4e_3VecB1u_E14extend_trustedBO_E0E0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4617
  store ptr %i.f, ptr %i.a, align 8, !noalias !4617
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 9, ptr %i.g, align 8, !noalias !4617
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %1, ptr %i.h, align 8, !noalias !4617
  call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  call void @llvm.experimental.noalias.scope.decl(metadata !4619)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 3 uses
  %i.l = icmp ule i64 %i.i, %i.k
  call void @llvm.assume(i1 %i.l)
  %.not1.i.i = icmp eq i64 %i.i, %i.k
  br i1 %.not1.i.i, label %.loopexit7, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.noexc
  %i.m = phi i64 [ %i.n, %.noexc ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = add nuw i64 %i.m, 1                      ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !4620, !noalias !4621
  call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !4623, !noalias !4624, !nonnull !5, !noundef !5
  %i.p = load i64, ptr %i.g, align 8, !alias.scope !4623, !noalias !4624, !noundef !5
  %i.q = icmp ult i64 %i.m, %i.p
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.s = load i8, ptr %i.r, align 1, !range !36, !noalias !4625, !noundef !5
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2H_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterB1O_Kj9_EINtNtNtB11_7sources8repeat_n7RepeatNB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef range(i8 0, 4) %i.s)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.n, %i.k
  br i1 %.not.i.i, label %.loopexit7, label %.lr.ph.i.i

bb.c:                                             ; preds = %.loopexit7, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i8, ptr %i.t, align 8, !range !4626, !noundef !5 ; 2 uses
  %.val5 = load ptr, ptr %1, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.v, align 8            ; 4 uses
  switch i8 %i.u, label %.lr.ph.i.preheader [
    i8 -2, label %bb.d
    i8 -1, label %.loopexit
  ]

.loopexit7:                                       ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %.val6
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %i.u, i64 %i.x, i1 false), !noalias !4627
  %i.y = add i64 %i.x, %.val6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i.preheader
  %.val6.i = phi i64 [ %.val6, %bb.c ], [ %i.y, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.val6.i.sink = phi i64 [ %.val6.i, %.loopexit ], [ %.val6, %bb.c ]
  store i64 %.val6.i.sink, ptr %.val5, align 8
  ret void

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.aa, align 8, !noundef !5
  store i64 %.val4, ptr %.val, align 8
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_EINtNtNtB9_7sources4once4OnceB1u_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB44_3VecB1u_E14extend_trustedBO_E0E0EB1y_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8, !noalias !4661
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %i.i, ptr %i.j, align 8, !noalias !4661
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4661
  store ptr %i.k, ptr %i.b, align 8, !noalias !4661
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !4661
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %1, ptr %i.m, align 8, !noalias !4661
  call void @llvm.experimental.noalias.scope.decl(metadata !4662)
  call void @llvm.experimental.noalias.scope.decl(metadata !4663)
  %i.n = icmp ule i64 %i.g, %i.i
  call void @llvm.assume(i1 %i.n)
  %.not1.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not1.i.i, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.noexc.i
  %i.o = phi i64 [ %i.p, %.noexc.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.p = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !4662, !noalias !4664
  call void @llvm.experimental.noalias.scope.decl(metadata !4665)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !4666, !noalias !4667, !nonnull !5, !align !12, !noundef !5
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !4666, !noalias !4667, !noundef !5
  %i.s = icmp ult i64 %i.o, %i.r
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !4669
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2E_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtBb_5array4iter8IntoIterB1O_Kj0_EINtNtNtB11_7sources4once4OnceB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4668
  %.not.i.i = icmp eq i64 %i.p, %i.i
  br i1 %.not.i.i, label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.loopexit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !4670, !noalias !4661, !noundef !5
  %i.w = load i64, ptr %i.j, align 8, !alias.scope !4670, !noalias !4661, !noundef !5
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEj0_NtB4_11PartialDrop12partial_dropB1A_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.v, i64 noundef %i.w)
          to label %.body unwind label %bb.d

_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !4671, !noalias !4661
  %.pre2.i = load i64, ptr %i.j, align 8, !alias.scope !4671, !noalias !4661
  br label %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.i

_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.i: ; preds = %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.loopexit.i, %bb.b
  %i.x = phi i64 [ %.pre2.i, %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.loopexit.i ], [ %i.g, %bb.b ]
  %i.y = phi i64 [ %.pre.i, %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.loopexit.i ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4661
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEj0_NtB4_11PartialDrop12partial_dropB1A_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.y, i64 noundef %i.x)
          to label %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1F_8for_each4callBT_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB32_3VecBT_E14extend_trustedINtNtNtB1L_8adapters5chain5ChainBE_INtNtNtB1L_7sources4once4OnceBT_EEE0E0EBX_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1F_8for_each4callBT_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB32_3VecBT_E14extend_trustedINtNtNtB1L_8adapters5chain5ChainBE_INtNtNtB1L_7sources4once4OnceBT_EEE0E0EBX_.exit: ; preds = %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1F_8for_each4callBT_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB32_3VecBT_E14extend_trustedINtNtNtB1L_8adapters5chain5ChainBE_INtNtNtB1L_7sources4once4OnceBT_EEE0E0EBX_.exit, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !16, !noundef !5 ; 2 uses
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.ac, align 8           ; 4 uses
  switch i8 %i.ab, label %._crit_edge.i [
    i8 -2, label %bb.h
    i8 -1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEE8try_folduNCINvMNtB7_9try_traitINtB4x_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtNtNtB16_8adapters5chain5ChainINtB20_8IntoIterB3y_Kj0_EINtNtNtB16_7sources4once4OnceB3y_EEE0E0E0B4M_E0B4M_EB3C_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.i:                                    ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.510.0.copyload, i64 %.val7 ; 3 uses
  store i64 %.sroa.0.0.copyload, ptr %i.af, align 8, !noalias !4672
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %i.ab, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4672
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.515.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %i.ag = add i64 %.val7, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge.i
  %.val5.i = phi i64 [ %i.ag, %._crit_edge.i ], [ %.val7, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.val7.sink = phi i64 [ %.val5.i, %bb.g ], [ %.val7, %bb.e ]
  store i64 %.val7.sink, ptr %.val6, align 8
  ret void

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.u, %bb.c ]
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ah, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !16, !noundef !5
  %or.cond = icmp ugt i8 %i.aj, -3
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEEB1e_.exit, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEEB1e_.exit: ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.body
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEEB1e_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentKj1_EINtNtNtB9_7sources4once4OnceB1u_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB44_3VecB1u_E14extend_trustedBO_E0E0EB1y_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4707)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4708
  store ptr %i.g, ptr %i.b, align 8, !noalias !4708
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 1, ptr %i.h, align 8, !noalias !4708
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %1, ptr %i.i, align 8, !noalias !4708
  call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !4711, !noalias !4712, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4711, !noalias !4712, !noundef !5 ; 3 uses
  %i.m = icmp ule i64 %i.j, %i.l
end_hunk_0
