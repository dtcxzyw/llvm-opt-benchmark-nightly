Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/custom_arrays-e3a578d1d1813722.custom_arrays.d2e22a6890e1d93d-cgu.15?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays:.lr.ph.i
  %.sroa.015.0.val27.i.1 = load ptr, ptr %i.af, align 8, !alias.scope !22
  %i.ag = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.1, ptr nonnull %.sroa.017.0.val26.i.1, ptr %.sroa.015.0.val.i.1, ptr %.sroa.015.0.val27.i.1), !noalias !22 ; 3 uses
  %..i.i.1 = select i1 %i.ag, ptr %i.t, ptr %i.s
  %i.ah = xor i1 %i.ag, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !29
  %.neg.i.i.1 = sext i1 %i.ah to i64
  %i.ai = getelementptr [16 x i8], ptr %i.s, i64 %.neg.i.i.1 ; 4 uses
  %.neg15.i.i.1 = sext i1 %i.ag to i64
  %i.aj = getelementptr [16 x i8], ptr %i.t, i64 %.neg15.i.i.1 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.aa, align 8, !alias.scope !22, !nonnull !4, !noundef !4
  %i.al = getelementptr i8, ptr %i.aa, i64 8
  %.sroa.011.0.val24.i.2 = load ptr, ptr %i.al, align 8, !alias.scope !22, !nonnull !4, !align !19, !noundef !4
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.ac, align 8, !alias.scope !22
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.sroa.06.0.val25.i.2 = load ptr, ptr %i.am, align 8, !alias.scope !22
  %i.an = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.2, ptr nonnull %.sroa.011.0.val24.i.2, ptr %.sroa.06.0.val.i.2, ptr %.sroa.06.0.val25.i.2), !noalias !22 ; 3 uses
  %..i23.i.2 = select i1 %i.an, ptr %i.aa, ptr %i.ac
  %i.ao = xor i1 %i.an, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.2, i64 16, i1 false), !noalias !25
  %i.ap = zext i1 %i.an to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ap ; 4 uses
  %i.ar = zext i1 %i.ao to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.ai, align 8, !alias.scope !22, !nonnull !4, !noundef !4
  %i.au = getelementptr i8, ptr %i.ai, i64 8
  %.sroa.017.0.val26.i.2 = load ptr, ptr %i.au, align 8, !alias.scope !22, !nonnull !4, !align !19, !noundef !4
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.aj, align 8, !alias.scope !22
  %i.av = getelementptr i8, ptr %i.aj, i64 8
  %.sroa.015.0.val27.i.2 = load ptr, ptr %i.av, align 8, !alias.scope !22
  %i.aw = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.2, ptr nonnull %.sroa.017.0.val26.i.2, ptr %.sroa.015.0.val.i.2, ptr %.sroa.015.0.val27.i.2), !noalias !22 ; 3 uses
  %..i.i.2 = select i1 %i.aw, ptr %i.aj, ptr %i.ai
  %i.ax = xor i1 %i.aw, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !29
  %.neg.i.i.2 = sext i1 %i.ax to i64
  %i.ay = getelementptr [16 x i8], ptr %i.ai, i64 %.neg.i.i.2 ; 4 uses
  %.neg15.i.i.2 = sext i1 %i.aw to i64
  %i.az = getelementptr [16 x i8], ptr %i.aj, i64 %.neg15.i.i.2 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.aq, align 8, !alias.scope !22, !nonnull !4, !noundef !4
  %i.bb = getelementptr i8, ptr %i.aq, i64 8
  %.sroa.011.0.val24.i.3 = load ptr, ptr %i.bb, align 8, !alias.scope !22, !nonnull !4, !align !19, !noundef !4
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.as, align 8, !alias.scope !22
  %i.bc = getelementptr i8, ptr %i.as, i64 8
  %.sroa.06.0.val25.i.3 = load ptr, ptr %i.bc, align 8, !alias.scope !22
  %i.bd = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.3, ptr nonnull %.sroa.011.0.val24.i.3, ptr %.sroa.06.0.val.i.3, ptr %.sroa.06.0.val25.i.3), !noalias !22 ; 3 uses
  %..i23.i.3 = select i1 %i.bd, ptr %i.aq, ptr %i.as
  %i.be = xor i1 %i.bd, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.3, i64 16, i1 false), !noalias !25
  %i.bf = zext i1 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = zext i1 %i.be to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bh
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.ay, align 8, !alias.scope !22, !nonnull !4, !noundef !4
  %i.bj = getelementptr i8, ptr %i.ay, i64 8
  %.sroa.017.0.val26.i.3 = load ptr, ptr %i.bj, align 8, !alias.scope !22, !nonnull !4, !align !19, !noundef !4
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.az, align 8, !alias.scope !22
  %i.bk = getelementptr i8, ptr %i.az, i64 8
  %.sroa.015.0.val27.i.3 = load ptr, ptr %i.bk, align 8, !alias.scope !22
  %i.bl = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.3, ptr nonnull %.sroa.017.0.val26.i.3, ptr %.sroa.015.0.val.i.3, ptr %.sroa.015.0.val27.i.3), !noalias !22 ; 3 uses
  %..i.i.3 = select i1 %i.bl, ptr %i.az, ptr %i.ay
  %i.bm = xor i1 %i.bl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !29
  %.neg.i.i.3 = sext i1 %i.bm to i64
  %i.bn = getelementptr [16 x i8], ptr %i.ay, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.bl to i64
  %i.bo = getelementptr [16 x i8], ptr %i.az, i64 %.neg15.i.i.3
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = getelementptr i8, ptr %i.bn, i64 16
  %i.br = icmp ne ptr %i.bi, %i.bp
  %i.bs = icmp ne ptr %i.bg, %i.bq
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs, !prof !33
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, !prof !33

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19, !noalias !22
  unreachable

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_generalINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1U_2pg7backend2PgEEL_ENCINvMB8_SB1f_16sort_unstable_byNCINvYNtNtB2D_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2z_E18pending_migrationsNtNtB4h_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [768 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !alias.scope !37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.m = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.n, label %.noexc33.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i, %bb.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.p = getelementptr [16 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.q = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.q, label %.noexc33.1.i, label %.loopexit4.1.i

.noexc33.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.ac, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.05.010.1.i
  %.idx59 = shl nuw nsw i64 %.sroa.05.010.1.i, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx59 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !alias.scope !37
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 3 uses
  %.val11.i.1.i = load ptr, ptr %i.s, align 8, !alias.scope !39, !noalias !34, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val12.i.1.i = load ptr, ptr %i.u, align 8, !alias.scope !39, !noalias !34, !nonnull !4, !align !19, !noundef !4 ; 4 uses
  %.val13.i.1.i = load ptr, ptr %i.t, align 8, !alias.scope !39, !noalias !34
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %.val14.i.1.i = load ptr, ptr %i.v, align 8, !alias.scope !39, !noalias !34
  %i.w = call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.1.i, ptr nonnull %.val12.i.1.i, ptr %.val13.i.1.i, ptr %.val14.i.1.i), !noalias !34
  br i1 %i.w, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.noexc33.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !alias.scope !39, !noalias !34
  %i.x = icmp eq i64 %.sroa.05.010.1.i, 1
  br i1 %i.x, label %._crit_edge56, label %.lr.ph55

.preheader.1.i:                                   ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i32.1.i54, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !39, !noalias !34
  %i.y = icmp eq ptr %i.z, %i.p
  br i1 %i.y, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i32.1.i54 = phi ptr [ %i.z, %.preheader.1.i ], [ %i.t, %.preheader.1.i.preheader ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.i32.1.i54, i64 -16 ; 4 uses
  %.val9.i.1.i = load ptr, ptr %i.z, align 8, !alias.scope !39, !noalias !34
  %i.aa = getelementptr i8, ptr %.sroa.0.0.i32.1.i54, i64 -8
  %.val10.i.1.i = load ptr, ptr %i.aa, align 8, !alias.scope !39, !noalias !34
  %i.ab = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.1.i, ptr nonnull %.val12.i.1.i, ptr %.val9.i.1.i, ptr %.val10.i.1.i)
          to label %bb.j unwind label %.loopexit.split-lp23.i, !noalias !34

bb.j:                                             ; preds = %.lr.ph55
  br i1 %i.ab, label %.preheader.1.i, label %._crit_edge56

._crit_edge56:                                    ; preds = %.preheader.1.i, %bb.j, %.preheader.1.i.preheader
  %.sroa.0.0.i32.lcssa.1.i = phi ptr [ %i.p, %.preheader.1.i.preheader ], [ %i.p, %.preheader.1.i ], [ %.sroa.0.0.i32.1.i54, %bb.j ] ; 2 uses
  store ptr %.val11.i.1.i, ptr %.sroa.0.0.i32.lcssa.1.i, align 8, !alias.scope !39, !noalias !40
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1.i, i64 8
  store ptr %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !39, !noalias !40
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i: ; preds = %._crit_edge56, %.noexc33.1.i
  %i.ac = add nuw nsw i64 %.sroa.05.010.1.i, 1    ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ac, %i.m
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.noexc33.1.i

.loopexit4.1.i:                                   ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i, %.loopexit4.i
  %i.ad = add nsw i64 %1, -1                      ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.p, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30.i
  %i.ah = getelementptr i8, ptr %i.av, i64 16     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.au, i64 16
  %i.aj = and i64 %1, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.noexc30.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.as, %.noexc30.i ], [ %0, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.al, %.noexc30.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.a, %.loopexit4.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.p, %.loopexit4.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.av, %.noexc30.i ], [ %i.ag, %.loopexit4.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.au, %.noexc30.i ], [ %i.af, %.loopexit4.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.aw, %.noexc30.i ], [ %i.ae, %.loopexit4.1.i ] ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.07.i.i, align 8, !alias.scope !45, !noalias !34, !nonnull !4, !noundef !4
  %i.am = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val24.i.i = load ptr, ptr %i.am, align 8, !alias.scope !45, !noalias !34, !nonnull !4, !align !19, !noundef !4
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.08.i.i, align 8, !alias.scope !45, !noalias !34
  %i.an = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val25.i.i = load ptr, ptr %i.an, align 8, !alias.scope !45, !noalias !34
  %i.ao = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.i, ptr nonnull %.sroa.011.0.val24.i.i, ptr %.sroa.06.0.val.i.i, ptr %.sroa.06.0.val25.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !34 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.ao, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.i, i64 16, i1 false), !alias.scope !37, !noalias !48
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.05.i.i, align 8, !alias.scope !45, !noalias !34, !nonnull !4, !noundef !4
  %i.ap = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val26.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !45, !noalias !34, !nonnull !4, !align !19, !noundef !4
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !45, !noalias !34
  %i.aq = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val27.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !45, !noalias !34
  %i.ar = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.i, ptr nonnull %.sroa.017.0.val26.i.i, ptr %.sroa.015.0.val.i.i, ptr %.sroa.015.0.val27.i.i)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !34 ; 3 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ao, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ao, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %..i.i.i = select i1 %i.ar, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.at = xor i1 %i.ar, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !37, !noalias !52
  %.neg.i.i.i = sext i1 %i.at to i64
  %i.au = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.ar to i64
  %i.av = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %.not.a = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.ah ; 2 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not.a, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !37
  %.sroa.sel28.idx.sroa.sel.idx = select i1 %.not.a, i64 16, i64 0
  %.sroa.sel28.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel28.idx.sroa.sel.idx
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.ah
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 16
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel28.idx.sroa.sel, %bb.k ]
  %i.ax = icmp ne ptr %.sroa.06.1.i.i, %i.ah
  %i.ay = icmp ne ptr %.sroa.011.1.i.i, %i.ai
  %or.cond.i.i = select i1 %i.ax, i1 true, i1 %i.ay, !prof !33
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, !prof !33

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !34

.noexc31.i:                                       ; preds = %bb.m
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.az = shl nuw nsw i64 %1, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.az, i1 false), !alias.scope !37, !noalias !56
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.n ], [ %lpad.phi30.i, %bb.p ]
  resume { ptr, i32 } %.pn.i

.noexc33.i:                                       ; preds = %bb.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i
  %.sroa.05.010.i = phi i64 [ %i.bl, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.010.i
  %.idx = shl nuw nsw i64 %.sroa.05.010.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !37
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val11.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !39, !noalias !34, !nonnull !4, !noundef !4 ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val12.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !39, !noalias !34, !nonnull !4, !align !19, !noundef !4 ; 4 uses
  %.val13.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !39, !noalias !34
  %i.be = getelementptr i8, ptr %i.bb, i64 -8
  %.val14.i.i = load ptr, ptr %i.be, align 8, !alias.scope !39, !noalias !34
  %i.bf = call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.i, ptr nonnull %.val12.i.i, ptr %.val13.i.i, ptr %.val14.i.i), !noalias !34
  br i1 %i.bf, label %.preheader.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i

.preheader.i.preheader:                           ; preds = %.noexc33.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !39, !noalias !34
  %i.bg = icmp eq i64 %.sroa.05.010.i, 1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i32.i52, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !39, !noalias !34
  %i.bh = icmp eq ptr %i.bi, %i.a
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i32.i52 = phi ptr [ %i.bi, %.preheader.i ], [ %i.bc, %.preheader.i.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i52, i64 -16 ; 4 uses
  %.val9.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !39, !noalias !34
  %i.bj = getelementptr i8, ptr %.sroa.0.0.i32.i52, i64 -8
  %.val10.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !39, !noalias !34
  %i.bk = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.i, ptr nonnull %.val12.i.i, ptr %.val9.i.i, ptr %.val10.i.i)
          to label %bb.o unwind label %.loopexit22.i, !noalias !34

bb.o:                                             ; preds = %.lr.ph
  br i1 %i.bk, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %bb.o, %.preheader.i.preheader
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i32.i52, %bb.o ] ; 2 uses
  store ptr %.val11.i.i, ptr %.sroa.0.0.i32.lcssa.i, align 8, !alias.scope !39, !noalias !40
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.i, i64 8
  store ptr %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !39, !noalias !40
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i

.loopexit22.i:                                    ; preds = %.lr.ph
  %lpad.loopexit28.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp23.i:                           ; preds = %.lr.ph55
  %lpad.loopexit.split-lp29.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp23.i, %.loopexit22.i
  %.val11.i.lcssa.i = phi ptr [ %.val11.i.i, %.loopexit22.i ], [ %.val11.i.1.i, %.loopexit.split-lp23.i ]
  %.val12.i.lcssa.i = phi ptr [ %.val12.i.i, %.loopexit22.i ], [ %.val12.i.1.i, %.loopexit.split-lp23.i ]
  %.sroa.0.0.i32.lcssa17.i = phi ptr [ %.sroa.0.0.i32.i52, %.loopexit22.i ], [ %.sroa.0.0.i32.1.i54, %.loopexit.split-lp23.i ] ; 2 uses
  %lpad.phi30.i = phi { ptr, i32 } [ %lpad.loopexit28.i, %.loopexit22.i ], [ %lpad.loopexit.split-lp29.i, %.loopexit.split-lp23.i ]
  store ptr %.val11.i.lcssa.i, ptr %.sroa.0.0.i32.lcssa17.i, align 8, !alias.scope !39, !noalias !61
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa17.i, i64 8
  store ptr %.val12.i.lcssa.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i, align 8, !alias.scope !39, !noalias !61
  br label %.body.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %._crit_edge, %.noexc33.i
  %i.bl = add nuw nsw i64 %.sroa.05.010.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.d
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.noexc33.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB21_2pg7backend2PgEEL_ENCINvMB8_SB1m_16sort_unstable_byNCINvYNtNtB2K_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2G_E18pending_migrationsNtNtB4o_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit
  %.sroa.0.07 = phi ptr [ %i.p, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 4 uses
  %.val11.i = load ptr, ptr %.sroa.0.07, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19, !noundef !4
  %.val13.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val14.i = load ptr, ptr %i.f, align 8
  %i.g = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i, ptr nonnull %.val12.i, ptr %.val13.i, ptr %.val14.i)
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit

bb.d:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.sroa.0.07, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = icmp eq ptr %i.d, %0
  br i1 %i.j, label %._crit_edge21, label %.lr.ph20

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i18, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i18 = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.d ] ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i18, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.sroa.0.0.i18, i64 -8
  %.val10.i = load ptr, ptr %i.m, align 8
  %i.n = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %i.h, ptr nonnull %i.i, ptr %.val9.i, ptr %.val10.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph20
  br i1 %i.n, label %bb.e, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i18, %bb.f ] ; 2 uses
  store ptr %i.h, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !66
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !66
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit

bb.g:                                             ; preds = %.lr.ph20
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %.sroa.0.0.i18, align 8, !noalias !71
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i, align 8, !noalias !71
  resume { ptr, i32 } %i.o

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %.lr.ph, %._crit_edge21
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr %.0.val1, ptr nofree readonly captures(none) %.8.val3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_0
