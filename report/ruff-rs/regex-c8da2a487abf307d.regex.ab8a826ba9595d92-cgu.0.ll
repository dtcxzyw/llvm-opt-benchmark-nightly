Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex-c8da2a487abf307d.regex.ab8a826ba9595d92-cgu.0?download=true
inline.NumInlined: 398
inline.NumDeleted: 88
begin_hunk_0_@_RINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB5_7Builder3newARej1_BS_EB7_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.d, i64 1)
          to label %.noexc unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCseJ6KZaCkl68_5regex8builders7BuilderEBF_(ptr nonnull align 8 %i.c) #27
          to label %bb.e unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  store i64 0, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.3.0..sroa_idx2.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.36.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.36.0..sroa_idx.i.i.i, align 8
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB1G_7Builder3newAB1r_B1u_B1r_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2J_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3Q_3vecINtB4w_3VecB3M_E14extend_trustedBN_E0E0EB1I_(ptr nonnull readonly align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs_NtNtCseJ6KZaCkl68_5regex8builders5bytesNtB5_15RegexSetBuilder3newARej0_B19_EB9_(ptr nofree writeonly sret([168 x i8]) align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtCseJ6KZaCkl68_5regex8buildersNtB2_7BuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr nonnull sret([168 x i8]) align 8 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.c, i64 0)
          to label %.noexc.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCseJ6KZaCkl68_5regex8builders7BuilderEBF_(ptr nonnull align 8 %i.b) #27
          to label %bb.d unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.sroa.310.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.310.0..sroa_idx.i.i.i.i, align 8
  invoke void @_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtCscdodAO9FK5_5alloc6string6StringuNCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB37_7Builder3newABT_BW_BT_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtB2r_3vecINtB4I_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B2Z_EE0E0E0EB39_(i64 0, i64 0, ptr nonnull align 8 %i.a)
          to label %_RINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_.exit unwind label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs_NtNtCseJ6KZaCkl68_5regex8builders6stringNtB5_15RegexSetBuilder3newARej0_B1a_EB9_(ptr nofree writeonly sret([168 x i8]) align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [168 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtCseJ6KZaCkl68_5regex8buildersNtB2_7BuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr nonnull sret([168 x i8]) align 8 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.c, i64 0)
          to label %.noexc.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCseJ6KZaCkl68_5regex8builders7BuilderEBF_(ptr nonnull align 8 %i.b) #27
          to label %bb.d unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.sroa.310.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.310.0..sroa_idx.i.i.i.i, align 8
  invoke void @_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtCscdodAO9FK5_5alloc6string6StringuNCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB37_7Builder3newABT_BW_BT_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtB2r_3vecINtB4I_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B2Z_EE0E0E0EB39_(i64 0, i64 0, ptr nonnull align 8 %i.a)
          to label %_RINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_.exit unwind label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB5_7Builder3newARej0_BS_EB7_.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1q_5array4iter8IntoIterReKj0_ENCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB2P_7Builder3newAB2A_B2D_B2A_E0EEB2R_(ptr align 8 %0, i64 %1, i64 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = sub nuw i64 %2, %1
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfkBndxG8xzO_14regex_automata(ptr align 8 %0, i64 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.310.0..sroa_idx, align 8
  call void @_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj0_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtCscdodAO9FK5_5alloc6string6StringuNCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB37_7Builder3newABT_BW_BT_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtB2r_3vecINtB4I_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B2Z_EE0E0E0EB39_(i64 %1, i64 %2, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1q_5array4iter8IntoIterReKj1_ENCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB2P_7Builder3newAB2A_B2D_B2A_E0EEB2R_(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %1, align 8
  %i.f = sub nuw i64 %i.d, %i.e
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfkBndxG8xzO_14regex_automata(ptr align 8 %0, i64 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.36.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCINvMs_NtCseJ6KZaCkl68_5regex8buildersNtB1G_7Builder3newAB1r_B1u_B1r_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2J_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3Q_3vecINtB4w_3VecB3M_E14extend_trustedBN_E0E0EB1I_(ptr nonnull readonly align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsj_NtNtCsfkBndxG8xzO_14regex_automata4meta5regexNtB6_7Builder10build_manyNtNtCscdodAO9FK5_5alloc6string6StringECseJ6KZaCkl68_5regex(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, i64 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [136 x i8], align 8               ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 2 uses
  %i.f = alloca [136 x i8], align 8               ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [136 x i8], align 8               ; 4 uses
  %i.k = alloca [136 x i8], align 8               ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 3 uses
  %.sroa.251 = alloca i64, align 8                ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 2 uses
  %i.m = alloca [64 x i8], align 8                ; 8 uses
  %i.n = alloca [200 x i8], align 8               ; 5 uses
  %i.o = alloca [128 x i8], align 8               ; 5 uses
  %i.p = alloca [136 x i8], align 8               ; 5 uses
  %i.q = alloca [136 x i8], align 8               ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.u)
  invoke void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstEEB1b_(ptr nonnull align 8 %i.u) #27
          to label %bb.ay unwind label %bb.aj

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.au, %bb.ag, %bb.aw, %bb.al, %bb.ai, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.ag ], [ %lpad.phi72, %bb.al ], [ %i.ch, %bb.aw ], [ %i.cg, %bb.au ], [ %lpad.phi65, %bb.x ], [ %i.bw, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirEEB1b_(ptr nonnull align 8 %i.v) #27
          to label %bb.u unwind label %bb.aj

.loopexit:                                        ; preds = %bb.r, %bb.m, %bb.n, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f, %bb.e, %bb.g
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.k, %bb.h, %bb.c, %bb.ax, %bb.ak, %bb.t, %bb.s, %bb.j, %bb.i
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %3 ; 2 uses
  %i.z = invoke { i64, i64 } @_RNvMs10_NtNtCsfkBndxG8xzO_14regex_automata4util10primitivesNtB6_9PatternID4iter(i64 %3)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  store ptr %2, ptr %i.s, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.y, ptr %.sroa.232.0..sroa_idx, align 8
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 %i.aa, ptr %.sroa.333.0..sroa_idx, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.ab, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.av, %bb.d
  %i.ak = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.s)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.am = invoke { i32, i32 } @_RNvXs1f_NtNtCsfkBndxG8xzO_14regex_automata4util10primitivesNtB6_13PatternIDIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nonnull align 8 %.sroa.333.0..sroa_idx)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc17:                                         ; preds = %bb.f
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = extractvalue { i32, i32 } %i.am, 1
  %i.ap = trunc i32 %i.an to i1
  br i1 %i.ap, label %bb.g, label %.invoke

bb.g:                                             ; preds = %.noexc17
  invoke void @_RNvMs0_NtNtCsfcggljOhZkm_12regex_syntax3ast5parseNtB5_13ParserBuilder5build(ptr nonnull sret([200 x i8]) align 8 %i.n, ptr nonnull align 4 %i.ac)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %.noexc
  %i.aq = invoke { i64, i64 } @_RNvMs10_NtNtCsfkBndxG8xzO_14regex_automata4util10primitivesNtB6_9PatternID4iter(i64 %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  %i.at = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %i.w)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  %i.aw = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast3Ast4iterCsfkBndxG8xzO_14regex_automata(ptr align 8 %i.au, i64 %i.av)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1
  %i.az = invoke { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterNtNtCsfcggljOhZkm_12regex_syntax3ast3AstENtB2_12IntoIterator9into_iterCsfkBndxG8xzO_14regex_automata(ptr %i.ax, ptr %i.ay)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %i.bb = extractvalue { ptr, ptr } %i.az, 1
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.m, align 8
  %.sroa.040.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.y, ptr %.sroa.040.sroa.2.0..sroa_idx, align 8
  %.sroa.040.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 %i.ar, ptr %.sroa.040.sroa.3.0..sroa_idx, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.as, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.ba, ptr %.sroa.241.0..sroa_idx, align 8
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.bb, ptr %.sroa.342.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.ah, %bb.l
  %.sroa.050.0 = phi i32 [ undef, %bb.l ], [ %.sroa.050.1, %bb.ah ] ; 2 uses
  %i.bg = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.m)
          to label %.noexc22 unwind label %.loopexit ; 2 uses

.noexc22:                                         ; preds = %bb.m
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.noexc22
  %i.bi = invoke { i32, i32 } @_RNvXs1f_NtNtCsfkBndxG8xzO_14regex_automata4util10primitivesNtB6_13PatternIDIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nonnull align 8 %.sroa.040.sroa.3.0..sroa_idx)
          to label %.noexc23 unwind label %.loopexit ; 2 uses

.noexc23:                                         ; preds = %bb.n
  %i.bj = extractvalue { i32, i32 } %i.bi, 0
  %i.bk = extractvalue { i32, i32 } %i.bi, 1
  %i.bl = trunc i32 %i.bj to i1
  br i1 %i.bl, label %bb.o, label %.invoke

.invoke:                                          ; preds = %.noexc17, %.noexc23
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @54) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %.noexc23
  %i.bm = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCsfcggljOhZkm_12regex_syntax3ast3AstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfkBndxG8xzO_14regex_automata(ptr nonnull align 8 %.sroa.241.0..sroa_idx)
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %bb.o
  %.not13.i.i = icmp eq ptr %i.bm, null
  br i1 %.not13.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc25
  %4 = ptrtoint ptr %i.bg to i64
  store i64 %4, ptr %.sroa.251, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc25, %.noexc22
  %.sroa.050.1 = phi i32 [ %.sroa.050.0, %.noexc22 ], [ %.sroa.050.0, %.noexc25 ], [ %i.bk, %bb.p ] ; 2 uses
  %.sink17.i.i.sroa.phi = phi ptr [ %.sroa.251, %.noexc22 ], [ %.sroa.251, %.noexc25 ], [ %.sroa.7, %bb.p ]
  %.sink.i.i = phi ptr [ null, %.noexc22 ], [ null, %.noexc25 ], [ %i.bm, %bb.p ]
  store ptr %.sink.i.i, ptr %.sink17.i.i.sroa.phi, align 8
  %.sroa.251.0..sroa.251.0..sroa.251.0..sroa.251.8. = load i64, ptr %.sroa.251, align 8 ; 2 uses
  %5 = inttoptr i64 %.sroa.251.0..sroa.251.0..sroa.251.0..sroa.251.8. to ptr ; 2 uses
  %.not7 = icmp eq i64 %.sroa.251.0..sroa.251.0..sroa.251.0..sroa.251.8., 0
  br i1 %.not7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. = load i64, ptr %.sroa.7, align 8
  invoke void @_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir9translateNtB4_17TranslatorBuilder5build(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr nonnull %i.bc)
          to label %bb.y unwind label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.bn = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nonnull align 8 %i.v)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1
  invoke void @_RINvMsj_NtNtCsfkBndxG8xzO_14regex_automata4meta5regexNtB6_7Builder19build_many_from_hirNtNtCsfcggljOhZkm_12regex_syntax3hir3HirEBa_(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %i.bo, i64 %i.bp)
          to label %.invoke75 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.v, %.loopexit.split-lp
  %.pn11 = phi { ptr, i32 } [ %i.bq, %bb.v ], [ %.pn, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstEEB1b_(ptr nonnull align 8 %i.w) #27
          to label %bb.ay unwind label %bb.aj

bb.v:                                             ; preds = %.invoke75
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %.invoke75
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstEEB1b_(ptr nonnull align 8 %i.w)
  ret void

.loopexit61:                                      ; preds = %bb.y, %bb.ac, %bb.aa
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp62:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp62, %.loopexit61
  %lpad.phi65 = phi { ptr, i32 } [ %lpad.loopexit63, %.loopexit61 ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp62 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3hir9translate10TranslatorEBH_(ptr nonnull align 8 %i.h) #27
          to label %.loopexit.split-lp unwind label %bb.aj

bb.y:                                             ; preds = %bb.r
  %6 = inttoptr i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16. to ptr
  %i.br = getelementptr i8, ptr %5, i64 8
  %.val15 = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %5, i64 16
  %.val16 = load i64, ptr %i.bs, align 8
  invoke void @_RNvMs0_NtNtCsfcggljOhZkm_12regex_syntax3hir9translateNtB5_10Translator9translate(ptr nonnull sret([80 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h, ptr %.val15, i64 %.val16, ptr align 8 %6)
          to label %bb.z unwind label %.loopexit61

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bt = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.bt, -1
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  invoke void @_RNvMNtNtCsfkBndxG8xzO_14regex_automata4meta5errorNtB2_10BuildError3hir(ptr nonnull sret([136 x i8]) align 8 %i.d, i32 %.sroa.050.1, ptr nonnull align 8 %i.c)
          to label %.noexc26 unwind label %.loopexit61

.noexc26:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bd, i64 48, i1 false)
  store i64 -3, ptr %i.j, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfcggljOhZkm_12regex_syntax3hir3HirNtNtNtCsfkBndxG8xzO_14regex_automata4meta5error10BuildErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([136 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.ad unwind label %.loopexit61

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load i64, ptr %i.k, align 8
  %.not8 = icmp eq i64 %i.bu, -3
  br i1 %.not8, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %i.k, i64 136, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtCsfkBndxG8xzO_14regex_automata4meta5regex5RegexNtNtBO_5error10BuildErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1B_EE13from_residualBQ_(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.f, ptr nonnull align 8 @1)
          to label %bb.ak unwind label %.loopexit.split-lp62

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3hir9translate10TranslatorEBH_(ptr nonnull align 8 %i.h)
          to label %bb.ah unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirE4pushBI_(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.g)
          to label %bb.m unwind label %bb.ag

bb.ai:                                            ; preds = %bb.af
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfcggljOhZkm_12regex_syntax3hir3HirEBF_(ptr nonnull align 8 %i.l) #27
          to label %.loopexit.split-lp unwind label %bb.aj

bb.aj:                                            ; preds = %bb.aw, %bb.al, %bb.ai, %bb.x, %bb.u, %.loopexit.split-lp, %bb.b
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ak:                                            ; preds = %bb.ae
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3hir9translate10TranslatorEBH_(ptr nonnull align 8 %i.h)
          to label %.invoke75 unwind label %.loopexit.split-lp.loopexit.split-lp

.invoke75:                                        ; preds = %bb.t, %bb.ak, %bb.ax
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfcggljOhZkm_12regex_syntax3hir3HirEEB1b_(ptr nonnull align 8 %i.v)
          to label %bb.w unwind label %bb.v

.loopexit69:                                      ; preds = %bb.am, %bb.aq, %bb.ao
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp70:                             ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp70, %.loopexit69
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp70 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3ast5parse6ParserEBH_(ptr nonnull align 8 %i.n) #27
          to label %.loopexit.split-lp unwind label %bb.aj

bb.am:                                            ; preds = %bb.g
  %i.by = getelementptr i8, ptr %i.ak, i64 8
  %.val = load ptr, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.ak, i64 16
  %.val14 = load i64, ptr %i.bz, align 8
  invoke void @_RNvMs1_NtNtCsfcggljOhZkm_12regex_syntax3ast5parseNtB5_6Parser5parse(ptr nonnull sret([128 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, ptr %.val, i64 %.val14)
          to label %bb.an unwind label %.loopexit69

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ca = load i64, ptr %i.o, align 8
  %.not.i27 = icmp eq i64 %i.ca, -1
  br i1 %.not.i27, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.o, i64 128, i1 false)
  invoke void @_RNvMNtNtCsfkBndxG8xzO_14regex_automata4meta5errorNtB2_10BuildError3ast(ptr nonnull sret([136 x i8]) align 8 %i.b, i32 %i.ao, ptr nonnull align 8 %i.a)
          to label %.noexc28 unwind label %.loopexit69

.noexc28:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cb = load i64, ptr %i.ad, align 8
  %i.cc = load ptr, ptr %i.ae, align 8
  store i64 %i.cb, ptr %i.af, align 8
  store ptr %i.cc, ptr %i.ag, align 8
  store i64 -3, ptr %i.p, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfcggljOhZkm_12regex_syntax3ast3AstNtNtNtCsfkBndxG8xzO_14regex_automata4meta5error10BuildErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([136 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p)
          to label %bb.ar unwind label %.loopexit69

bb.ar:                                            ; preds = %bb.aq
  %i.cd = load i64, ptr %i.q, align 8
  %.not9 = icmp eq i64 %i.cd, -3
  br i1 %.not9, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(136) %i.q, i64 136, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtNtCsfkBndxG8xzO_14regex_automata4meta5regex5RegexNtNtBO_5error10BuildErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1B_EE13from_residualBQ_(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @2)
          to label %bb.ax unwind label %.loopexit.split-lp70

bb.at:                                            ; preds = %bb.ar
  %i.ce = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.ai, align 8            ; 2 uses
  store i64 %i.ce, ptr %i.r, align 8
  store ptr %i.cf, ptr %i.aj, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3ast5parse6ParserEBH_(ptr nonnull align 8 %i.n)
          to label %bb.av unwind label %bb.aw

bb.au:                                            ; preds = %bb.av
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast3AstE4pushBI_(ptr nonnull align 8 %i.w, i64 %i.ce, ptr %i.cf)
          to label %bb.e unwind label %bb.au

bb.aw:                                            ; preds = %bb.at
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfcggljOhZkm_12regex_syntax3ast3AstEBF_(ptr nonnull align 8 %i.r) #27
          to label %.loopexit.split-lp unwind label %bb.aj

bb.ax:                                            ; preds = %bb.as
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsfcggljOhZkm_12regex_syntax3ast5parse6ParserEBH_(ptr nonnull align 8 %i.n)
          to label %.invoke75 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.u, %bb.b
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.u ], [ %i.x, %bb.b ]
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RINvMso_NtCscdodAO9FK5_5alloc4syncINtB6_3ArcSNtNtB8_6string6StringE19allocate_for_layoutNCNvMsq_B6_Bw_18allocate_for_slice0NCB1q_s_0ECseJ6KZaCkl68_5regex(i64 %0, i64 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0CseJ6KZaCkl68_5regex.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.f = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 %i.c, i64 %i.b) #29
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0CseJ6KZaCkl68_5regex.exit

_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0CseJ6KZaCkl68_5regex.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0CseJ6KZaCkl68_5regex.exit
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 %i.b, i64 %i.c) #26
  unreachable

bb.e:                                             ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcSNtNtB9_6string6StringE18allocate_for_slice0CseJ6KZaCkl68_5regex.exit
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.i = load i64, ptr %2, align 8
  %i.j = insertvalue { ptr, i64 } %i.h, i64 %i.i, 1
end_hunk_0
