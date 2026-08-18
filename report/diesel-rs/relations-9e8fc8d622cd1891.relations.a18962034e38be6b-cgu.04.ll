inline.NumInlined: 160
inline.NumDeleted: 99
begin_hunk_0_@_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtBa_2pg10connection3row5PgRowEINtB8_3RowNtNtB15_7backend2PgE3getjECsdRR3INvU6UN_9relations:bb.a
bb.b:                                             ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_8RowIndexjE3idxCsdRR3INvU6UN_9relations.exit
  tail call void @_RINvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB6_5PgRowINtNtBc_3row3RowNtNtBa_7backend2PgE3getjECsdRR3INvU6UN_9relations(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.h)
  br label %bb.c

_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_8RowIndexjE3idxCsdRR3INvU6UN_9relations.exit.thread: ; preds = %bb.a, %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_8RowIndexjE3idxCsdRR3INvU6UN_9relations.exit
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_8RowIndexjE3idxCsdRR3INvU6UN_9relations.exit.thread, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1i_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEEIB1e_NtB2e_4BookEENCNvB2g_18one_to_n_relations0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callTB2W_B21_ENCINvMsj_B1i_IB22_B4G_E14extend_trustedBN_E0E0EB2g_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.427.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %.sroa.528.sroa.4.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.617.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %.sroa.613.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.4.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !21, !noalias !24, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val14.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !21, !noalias !24, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.val15.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !21, !noalias !24, !nonnull !7, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val16.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !21, !noalias !24, !nonnull !7, !noundef !7 ; 2 uses
  %i.j = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.g) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.f
  %i.n = phi ptr [ %i.ad, %bb.f ], [ %.val15.i.i.i.i, %bb.a ]
  %i.o = phi ptr [ %i.y, %bb.f ], [ %.val.i.i.i.i, %bb.a ]
  %i.p = phi ptr [ %i.ae, %bb.f ], [ %.val15.i.i.i.i, %bb.a ] ; 5 uses
  %i.q = phi ptr [ %i.z, %bb.f ], [ %.val.i.i.i.i, %bb.a ] ; 5 uses
  %i.r = phi i64 [ %i.ah, %bb.f ], [ %.sroa.4.0.copyload, %bb.a ] ; 2 uses
  %.sroa.01.029.i.i.i = phi i64 [ %i.s, %bb.f ], [ 0, %bb.a ]
  %i.s = add nuw nsw i64 %.sroa.01.029.i.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i.i.i)
  %i.t = icmp eq ptr %i.q, %.val14.i.i.i.i
  br i1 %i.t, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.011.0.copyload12.i.i.i = load i64, ptr %i.q, align 8, !noalias !29
  %.sroa.613.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.0..sroa_idx14.i.i.i, i64 16, i1 false), !noalias !29
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.f
  store ptr %i.y, ptr %i.b, align 8
  store ptr %i.ad, ptr %i.h, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %bb.a
  %.val10.i.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.ah, %._crit_edge.i.i.i.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !32
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1a_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEEIBX_NtB1X_4BookEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B2E_ETB2E_B1K_EuNCNvB1Z_18one_to_n_relations0NCINvNvB2R_8for_each4callB42_NCINvMsj_B11_IB1L_B42_E14extend_trustedINtB3A_3MapBM_B4d_EE0E0E0EB1Z_.exit unwind label %bb.c, !noalias !33

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsdRR3INvU6UN_9relations5model4BookEEB1t_.exit.i.i.i.i unwind label %bb.d, !noalias !33

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !33
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsdRR3INvU6UN_9relations5model4BookEEB1t_.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.v

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.y = phi ptr [ %i.u, %bb.b ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.u, %bb.b ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.011.0.i.i.i = phi i64 [ %.sroa.011.0.copyload12.i.i.i, %bb.b ], [ -1, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = icmp ne i64 %.sroa.011.0.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.613.i.i.i, i64 16, i1 false), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i.i)
  %i.ab = icmp eq ptr %i.p, %.val16.i.i.i.i
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.sroa.015.0.copyload16.i.i.i = load i64, ptr %i.p, align 8, !noalias !34
  %.sroa.617.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx18.i.i.i, i64 24, i1 false), !noalias !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.n, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.p, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i ]
  %.sroa.015.0.i.i.i = phi i64 [ %.sroa.015.0.copyload16.i.i.i, %bb.e ], [ -1, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i.i ] ; 2 uses
  %i.af = icmp ne i64 %.sroa.015.0.i.i.i, -1
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i.i, i64 24, i1 false), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.528.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %.sroa.6.0.copyload, i64 %i.r ; 4 uses
  store i64 %.sroa.015.0.i.i.i, ptr %i.ag, align 8, !noalias !37
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i.i, i64 24, i1 false), !noalias !37
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.011.0.i.i.i, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !noalias !37
  %.sroa.528.sroa.4.0..sroa.528.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528.sroa.4.0..sroa.528.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.528.sroa.4.i.i.i, i64 16, i1 false), !noalias !37
  %i.ah = add i64 %i.r, 1                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.sroa.4.i.i.i)
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i.loopexit, label %.lr.ph.i.i.i

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCsdRR3INvU6UN_9relations5model4PageEEIBX_NtB1X_4BookEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B2E_ETB2E_B1K_EuNCNvB1Z_18one_to_n_relations0NCINvNvB2R_8for_each4callB42_NCINvMsj_B11_IB1L_B42_E14extend_trustedINtB3A_3MapBM_B4d_EE0E0E0EB1Z_.exit: ; preds = %._crit_edge.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1i_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB2f_4BookEEEIB1e_NtB2f_6AuthorEENCNvB2h_16m_to_n_relations0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callTB3g_IB22_B2X_EENCINvMsj_B1i_IB22_B50_E14extend_trustedBN_E0E0EB2h_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.9.i.i.i = alloca [24 x i8], align 8      ; 5 uses
  %.sroa.531.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %.sroa.617.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !50, !noalias !53, !nonnull !7, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val14.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !50, !noalias !53, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.val15.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !50, !noalias !53, !nonnull !7, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val16.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !50, !noalias !53, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.n = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 5
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.j) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.9.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %2 = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.i ]
  %i.q = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.i ]
  %i.r = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %bb.i ] ; 5 uses
  %i.s = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %bb.i ] ; 6 uses
  %.sroa.613.sroa.0.0.i.i.i.a = phi ptr [ undef, %.lr.ph.i.i.i ], [ %.sroa.613.sroa.0.1.i.i.i, %bb.i ]
  %.sroa.613.sroa.4.0.i.i.i = phi i64 [ undef, %.lr.ph.i.i.i ], [ %.sroa.613.sroa.4.1.i.i.i, %bb.i ]
  %.val8.i.i.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ], [ %i.an, %bb.i ] ; 3 uses
  %.sroa.01.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.i ]
  %i.t = add nuw nsw i64 %.sroa.01.032.i.i.i, 1   ; 2 uses
  %i.u = icmp eq ptr %i.s, %.val14.i.i.i.i
  br i1 %i.u, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.011.0.copyload12.i.i.i = load i64, ptr %i.s, align 8, !noalias !58
  %.sroa.613.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.613.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.613.0..sroa_idx14.i.i.i, align 8, !noalias !58
  %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx14.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.613.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.613.sroa.4.0..sroa.613.0..sroa_idx14.sroa_idx.i.i.i, align 8, !noalias !58
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.i
  store ptr %i.z, ptr %i.e, align 8
  store ptr %i.ae, ptr %i.k, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %bb.a
  %.val10.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.an, %._crit_edge.i.i.i.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !61
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB11_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB1Y_4BookEEEIBX_NtB1Y_6AuthorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B2Y_ETB2Y_IB1L_B2G_EEuNCNvB20_16m_to_n_relations0NCINvNvB3d_8for_each4callB4o_NCINvMsj_B11_IB1L_B4o_E14extend_trustedINtB3W_3MapBM_B4F_EE0E0E0EB20_.exit unwind label %bb.d, !noalias !62

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %common.resume.i.i.i unwind label %bb.e, !noalias !62

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !62
  unreachable

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.d
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.ak, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 3 uses
  %i.aa = phi ptr [ %i.s, %bb.b ], [ %i.v, %bb.c ]
  %.sroa.613.sroa.0.1.i.i.i = phi ptr [ %.sroa.613.sroa.0.0.i.i.i.a, %bb.b ], [ %.sroa.613.sroa.0.0.copyload.i.i.i, %bb.c ] ; 5 uses
  %.sroa.613.sroa.4.1.i.i.i = phi i64 [ %.sroa.613.sroa.4.0.i.i.i, %bb.b ], [ %.sroa.613.sroa.4.0.copyload.i.i.i, %bb.c ] ; 3 uses
  %.sroa.011.0.i.i.i = phi i64 [ -1, %bb.b ], [ %.sroa.011.0.copyload12.i.i.i, %bb.c ] ; 3 uses
  %i.ab = icmp ne i64 %.sroa.011.0.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i.i)
  %i.ac = icmp eq ptr %i.r, %.val16.i.i.i.i
  br i1 %i.ac, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.sroa.015.0.copyload16.i.i.i = load i64, ptr %i.r, align 8, !noalias !63
  %.sroa.617.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx18.i.i.i, i64 24, i1 false), !noalias !63
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i: ; preds = %bb.f, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ %2, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i ] ; 3 uses
  %i.af = phi ptr [ %i.ad, %bb.f ], [ %i.r, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i ]
  %.sroa.015.0.i.i.i = phi i64 [ %.sroa.015.0.copyload16.i.i.i, %bb.f ], [ -1, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB19_4BookEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB1b_.exit.i.i.i ] ; 3 uses
  %i.ag = icmp ne i64 %.sroa.015.0.i.i.i, -1
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i.i, i64 24, i1 false), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.613.sroa.0.1.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66
  store i64 %.sroa.015.0.i.i.i, ptr %i.c, align 8, !noalias !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, i64 24, i1 false), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.ah = icmp ult i64 %.sroa.613.sroa.4.1.i.i.i, 230584300921369396
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.sroa.613.sroa.0.1.i.i.i, i64 %.sroa.613.sroa.4.1.i.i.i
  %i.aj = icmp sgt i64 %.sroa.011.0.i.i.i, -1
  call void @llvm.assume(i1 %i.aj)
  store ptr %.sroa.613.sroa.0.1.i.i.i, ptr %i.a, align 8, !noalias !66
  store ptr %.sroa.613.sroa.0.1.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !66
  store i64 %.sroa.011.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !66
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !66
  invoke void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB2o_4BookEENCNCNvB2q_16m_to_n_relations00EB36_EB2q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !66

bb.g:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store ptr %i.z, ptr %i.e, align 8
  store ptr %i.ae, ptr %i.k, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRR3INvU6UN_9relations5model6AuthorEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #16
          to label %.body.i.i.i unwind label %bb.h, !noalias !66

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !66
  unreachable

bb.i:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %.sroa.7.0.copyload, i64 %.val8.i.i.i ; 3 uses
  store i64 %.sroa.015.0.i.i.i, ptr %i.am, align 8, !noalias !74
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.430.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, i64 24, i1 false), !noalias !61
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.i.i.i, i64 24, i1 false), !noalias !74
  %i.an = add i64 %.val8.i.i.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531.i.i.i)
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i.loopexit, label %bb.b

bb.j:                                             ; preds = %.body.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !62
  unreachable

.body.i.i.i:                                      ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !61
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB1e_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB2b_4BookEEEIB1a_NtB2b_6AuthorEEEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #16
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !62

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB11_3VecTNtNtCsdRR3INvU6UN_9relations5model10BookAuthorNtB1Y_4BookEEEIBX_NtB1Y_6AuthorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B2Y_ETB2Y_IB1L_B2G_EEuNCNvB20_16m_to_n_relations0NCINvNvB3d_8for_each4callB4o_NCINvMsj_B11_IB1L_B4o_E14extend_trustedINtB3W_3MapBM_B4F_EE0E0E0EB20_.exit: ; preds = %._crit_edge.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdRR3INvU6UN_9relations5model6AuthorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model4BookEENCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1R_4PageEINtB2B_9GroupedByB1P_E10grouped_by0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4J_8for_each4callTRljENCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB61_7HashMapB5N_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4N_7collect6ExtendB5M_E6extendBN_E0E0EB1T_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !75, !noalias !78, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !75, !noalias !78, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model4BookEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_4PageEINtB3z_9GroupedByB1y_E10grouped_by0NCINvNvB2d_8for_each4callB3m_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6j_7HashMapB3n_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2h_7collect6ExtendB3m_E6extendINtB2W_3MapBS_B3s_EE0E0E0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !75, !noalias !78, !noundef !7
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = tail call { i64, i64 } @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRljNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsdRR3INvU6UN_9relations(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, i64 noundef %.sroa.2.0.i.i), !noalias !80 ; 0 uses
  %i.n = add i64 %.sroa.2.0.i.i, 1
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model4BookEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_4PageEINtB3z_9GroupedByB1y_E10grouped_by0NCINvNvB2d_8for_each4callB3m_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6j_7HashMapB3n_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2h_7collect6ExtendB3m_E6extendINtB2W_3MapBS_B3s_EE0E0E0EB1C_.exit, label %bb.c

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model4BookEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecNtB1A_4PageEINtB3z_9GroupedByB1y_E10grouped_by0NCINvNvB2d_8for_each4callB3m_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6j_7HashMapB3n_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2h_7collect6ExtendB3m_E6extendINtB2W_3MapBS_B3s_EE0E0E0EB1C_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model6AuthorEENCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtB1R_10BookAuthorNtB1R_4BookEEINtB2D_9GroupedByB1P_E10grouped_by0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB55_8for_each4callTRljENCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6n_7HashMapB69_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB59_7collect6ExtendB68_E6extendBN_E0E0EB1T_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !83, !noalias !86, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !83, !noalias !86, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model6AuthorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtB1A_10BookAuthorNtB1A_4BookEEINtB3B_9GroupedByB1y_E10grouped_by0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6F_7HashMapB3p_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B3u_EE0E0E0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !83, !noalias !86, !noundef !7
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = tail call { i64, i64 } @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapRljNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsdRR3INvU6UN_9relations(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, i64 noundef %.sroa.2.0.i.i), !noalias !88 ; 0 uses
  %i.n = add i64 %.sroa.2.0.i.i, 1
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model6AuthorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtB1A_10BookAuthorNtB1A_4BookEEINtB3B_9GroupedByB1y_E10grouped_by0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6F_7HashMapB3p_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B3u_EE0E0E0EB1C_.exit, label %bb.c

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model6AuthorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETRljEuNCNvXs_NtNtCsjRvGck33osM_6diesel12associations10belongs_toINtNtCs40k4W9msRzi_5alloc3vec3VecTNtB1A_10BookAuthorNtB1A_4BookEEINtB3B_9GroupedByB1y_E10grouped_by0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6F_7HashMapB3p_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B3u_EE0E0E0EB1C_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model4BookENvYRB1n_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callRlNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4i_3VecB47_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RluNvYB2O_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idNCINvNvB1u_8for_each4callB2S_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4y_3VecB2S_E14extend_trustedINtB2k_3MapBF_B2V_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 5                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 128
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 576460752303423484       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep2 = getelementptr inbounds nuw [32 x i8], ptr %0, <2 x i64> %step.add
  %wide.gep3 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 24
  %wide.gep4 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep2, i64 24
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep3, ptr %i.h, align 8, !noalias !91
  store <2 x ptr> %wide.gep4, ptr %i.i, align 8, !noalias !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RluNvYB2O_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idNCINvNvB1u_8for_each4callB2S_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4y_3VecB2S_E14extend_trustedINtB2k_3MapBF_B2V_EE0E0E0EBU_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k
  store ptr %i.m, ptr %i.n, align 8, !noalias !91
  %i.o = add i64 %i.k, 1                          ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RluNvYB2O_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idNCINvNvB1u_8for_each4callB2S_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4y_3VecB2S_E14extend_trustedINtB2k_3MapBF_B2V_EE0E0E0EBU_.exit, label %scalar.ph, !llvm.loop !106

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsdRR3INvU6UN_9relations5model4BookENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldRBQ_RluNvYB2O_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idNCINvNvB1u_8for_each4callB2S_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4y_3VecB2S_E14extend_trustedINtB2k_3MapBF_B2V_EE0E0E0EBU_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.o, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !107
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdRR3INvU6UN_9relations5model6AuthorENvYRB1n_NtNtCsjRvGck33osM_6diesel12associations12Identifiable2idENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB36_8for_each4callRlNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4k_3VecB49_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
end_hunk_0
