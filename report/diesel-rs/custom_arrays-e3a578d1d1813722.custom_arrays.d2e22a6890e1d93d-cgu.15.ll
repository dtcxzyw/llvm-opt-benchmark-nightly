Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/custom_arrays-e3a578d1d1813722.custom_arrays.d2e22a6890e1d93d-cgu.15?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays:bb.a
  %.val15 = load ptr, ptr %i.h, align 8
  %i.i = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val12, ptr nonnull %.val13, ptr %.val14, ptr %.val15) ; 2 uses
  %i.j = zext i1 %i.d to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 4 uses
  %i.l = xor i1 %i.d, true
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = select i1 %i.i, i64 3, i64 2
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o ; 5 uses
  %i.q = select i1 %i.i, i64 2, i64 3
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 4 uses
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val9 = load ptr, ptr %i.s, align 8, !nonnull !4, !align !5, !noundef !4
  %.val10 = load ptr, ptr %i.k, align 8
  %i.t = getelementptr i8, ptr %i.k, i64 8
  %.val11 = load ptr, ptr %i.t, align 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val8, ptr nonnull %.val9, ptr %.val10, ptr %.val11) ; 3 uses
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %.val5 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !5, !noundef !4
  %.val6 = load ptr, ptr %i.n, align 8
  %i.w = getelementptr i8, ptr %i.n, i64 8
  %.val7 = load ptr, ptr %i.w, align 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val4, ptr nonnull %.val5, ptr %.val6, ptr %.val7) ; 3 uses
  %i.y = select i1 %i.u, ptr %i.p, ptr %i.k, !unpredictable !4
  %i.z = select i1 %i.x, ptr %i.n, ptr %i.r, !unpredictable !4
  %i.aa = select i1 %i.x, ptr %i.p, ptr %i.n, !unpredictable !4
  %i.ab = select i1 %i.u, ptr %i.k, ptr %i.aa, !unpredictable !4 ; 4 uses
  %i.ac = select i1 %i.u, ptr %i.n, ptr %i.p, !unpredictable !4
  %i.ad = select i1 %i.x, ptr %i.r, ptr %i.ac, !unpredictable !4 ; 4 uses
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val1 = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !5, !noundef !4
  %.val2 = load ptr, ptr %i.ab, align 8
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %.val3 = load ptr, ptr %i.af, align 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val, ptr nonnull %.val1, ptr %.val2, ptr %.val3) ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ab, ptr %i.ad, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 {
.lr.ph.i:
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef %0, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1O_2pg7backend2PgEEL_ENCINvMB8_SB19_16sort_unstable_byNCINvYNtNtB2x_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2t_E18pending_migrationsNtNtB4b_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef %i.a, ptr noundef %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 48         ; 3 uses
  %.sroa.011.0.val.i = load ptr, ptr %i.b, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.f = getelementptr i8, ptr %2, i64 72
  %.sroa.011.0.val24.i = load ptr, ptr %i.f, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.06.0.val.i = load ptr, ptr %2, align 8, !alias.scope !37
  %i.g = getelementptr i8, ptr %2, i64 8
  %.sroa.06.0.val25.i = load ptr, ptr %i.g, align 8, !alias.scope !37
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i, ptr nonnull %.sroa.011.0.val24.i, ptr %.sroa.06.0.val.i, ptr %.sroa.06.0.val25.i), !noalias !37 ; 3 uses
  %..i23.i = select i1 %i.h, ptr %i.b, ptr %2
  %i.i = xor i1 %i.h, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i, i64 16, i1 false), !noalias !38
  %i.j = zext i1 %i.h to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j ; 4 uses
  %i.l = zext i1 %i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load ptr, ptr %i.d, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %2, i64 120
  %.sroa.017.0.val26.i = load ptr, ptr %i.o, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.015.0.val.i = load ptr, ptr %i.e, align 8, !alias.scope !37
  %i.p = getelementptr i8, ptr %2, i64 56
  %.sroa.015.0.val27.i = load ptr, ptr %i.p, align 8, !alias.scope !37
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i, ptr nonnull %.sroa.017.0.val26.i, ptr %.sroa.015.0.val.i, ptr %.sroa.015.0.val27.i), !noalias !37 ; 3 uses
  %..i.i = select i1 %i.q, ptr %i.e, ptr %i.d
  %i.r = xor i1 %i.q, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !39
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = getelementptr [16 x i8], ptr %i.d, i64 %.neg.i.i ; 4 uses
  %.neg15.i.i = sext i1 %i.q to i64
  %i.t = getelementptr [16 x i8], ptr %i.e, i64 %.neg15.i.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load ptr, ptr %i.k, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.v = getelementptr i8, ptr %i.k, i64 8
  %.sroa.011.0.val24.i.1 = load ptr, ptr %i.v, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.06.0.val.i.1 = load ptr, ptr %i.m, align 8, !alias.scope !37
  %i.w = getelementptr i8, ptr %i.m, i64 8
  %.sroa.06.0.val25.i.1 = load ptr, ptr %i.w, align 8, !alias.scope !37
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.1, ptr nonnull %.sroa.011.0.val24.i.1, ptr %.sroa.06.0.val.i.1, ptr %.sroa.06.0.val25.i.1), !noalias !37 ; 3 uses
  %..i23.i.1 = select i1 %i.x, ptr %i.k, ptr %i.m
  %i.y = xor i1 %i.x, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.1, i64 16, i1 false), !noalias !38
  %i.z = zext i1 %i.x to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.z ; 4 uses
  %i.ab = zext i1 %i.y to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load ptr, ptr %i.s, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %i.s, i64 8
  %.sroa.017.0.val26.i.1 = load ptr, ptr %i.ae, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.015.0.val.i.1 = load ptr, ptr %i.t, align 8, !alias.scope !37
  %i.af = getelementptr i8, ptr %i.t, i64 8
  %.sroa.015.0.val27.i.1 = load ptr, ptr %i.af, align 8, !alias.scope !37
  %i.ag = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.1, ptr nonnull %.sroa.017.0.val26.i.1, ptr %.sroa.015.0.val.i.1, ptr %.sroa.015.0.val27.i.1), !noalias !37 ; 3 uses
  %..i.i.1 = select i1 %i.ag, ptr %i.t, ptr %i.s
  %i.ah = xor i1 %i.ag, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !39
  %.neg.i.i.1 = sext i1 %i.ah to i64
  %i.ai = getelementptr [16 x i8], ptr %i.s, i64 %.neg.i.i.1 ; 4 uses
  %.neg15.i.i.1 = sext i1 %i.ag to i64
  %i.aj = getelementptr [16 x i8], ptr %i.t, i64 %.neg15.i.i.1 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.aa, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.al = getelementptr i8, ptr %i.aa, i64 8
  %.sroa.011.0.val24.i.2 = load ptr, ptr %i.al, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.ac, align 8, !alias.scope !37
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  %.sroa.06.0.val25.i.2 = load ptr, ptr %i.am, align 8, !alias.scope !37
  %i.an = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.2, ptr nonnull %.sroa.011.0.val24.i.2, ptr %.sroa.06.0.val.i.2, ptr %.sroa.06.0.val25.i.2), !noalias !37 ; 3 uses
  %..i23.i.2 = select i1 %i.an, ptr %i.aa, ptr %i.ac
  %i.ao = xor i1 %i.an, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.2, i64 16, i1 false), !noalias !38
  %i.ap = zext i1 %i.an to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ap ; 4 uses
  %i.ar = zext i1 %i.ao to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.ai, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.au = getelementptr i8, ptr %i.ai, i64 8
  %.sroa.017.0.val26.i.2 = load ptr, ptr %i.au, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.aj, align 8, !alias.scope !37
  %i.av = getelementptr i8, ptr %i.aj, i64 8
  %.sroa.015.0.val27.i.2 = load ptr, ptr %i.av, align 8, !alias.scope !37
  %i.aw = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.2, ptr nonnull %.sroa.017.0.val26.i.2, ptr %.sroa.015.0.val.i.2, ptr %.sroa.015.0.val27.i.2), !noalias !37 ; 3 uses
  %..i.i.2 = select i1 %i.aw, ptr %i.aj, ptr %i.ai
  %i.ax = xor i1 %i.aw, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !39
  %.neg.i.i.2 = sext i1 %i.ax to i64
  %i.ay = getelementptr [16 x i8], ptr %i.ai, i64 %.neg.i.i.2 ; 4 uses
  %.neg15.i.i.2 = sext i1 %i.aw to i64
  %i.az = getelementptr [16 x i8], ptr %i.aj, i64 %.neg15.i.i.2 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.aq, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.bb = getelementptr i8, ptr %i.aq, i64 8
  %.sroa.011.0.val24.i.3 = load ptr, ptr %i.bb, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.as, align 8, !alias.scope !37
  %i.bc = getelementptr i8, ptr %i.as, i64 8
  %.sroa.06.0.val25.i.3 = load ptr, ptr %i.bc, align 8, !alias.scope !37
  %i.bd = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.3, ptr nonnull %.sroa.011.0.val24.i.3, ptr %.sroa.06.0.val.i.3, ptr %.sroa.06.0.val25.i.3), !noalias !37 ; 3 uses
  %..i23.i.3 = select i1 %i.bd, ptr %i.aq, ptr %i.as
  %i.be = xor i1 %i.bd, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.3, i64 16, i1 false), !noalias !38
  %i.bf = zext i1 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = zext i1 %i.be to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bh
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.ay, align 8, !alias.scope !37, !nonnull !4, !noundef !4
  %i.bj = getelementptr i8, ptr %i.ay, i64 8
  %.sroa.017.0.val26.i.3 = load ptr, ptr %i.bj, align 8, !alias.scope !37, !nonnull !4, !align !5, !noundef !4
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.az, align 8, !alias.scope !37
  %i.bk = getelementptr i8, ptr %i.az, i64 8
  %.sroa.015.0.val27.i.3 = load ptr, ptr %i.bk, align 8, !alias.scope !37
  %i.bl = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.3, ptr nonnull %.sroa.017.0.val26.i.3, ptr %.sroa.015.0.val.i.3, ptr %.sroa.015.0.val27.i.3), !noalias !37 ; 3 uses
  %..i.i.3 = select i1 %i.bl, ptr %i.az, ptr %i.ay
  %i.bm = xor i1 %i.bl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !39
  %.neg.i.i.3 = sext i1 %i.bm to i64
  %i.bn = getelementptr [16 x i8], ptr %i.ay, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.bl to i64
  %i.bo = getelementptr [16 x i8], ptr %i.az, i64 %.neg15.i.i.3
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = getelementptr i8, ptr %i.bn, i64 16
  %i.br = icmp ne ptr %i.bi, %i.bp
  %i.bs = icmp ne ptr %i.bg, %i.bq
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs, !prof !6
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, !prof !6

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19, !noalias !37
  unreachable

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_generalINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1U_2pg7backend2PgEEL_ENCINvMB8_SB1f_16sort_unstable_byNCINvYNtNtB2D_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2z_E18pending_migrationsNtNtB4h_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [768 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !alias.scope !64
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !alias.scope !64
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 3 uses
  %.val11.i.1.i = load ptr, ptr %i.s, align 8, !alias.scope !65, !noalias !63, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val12.i.1.i = load ptr, ptr %i.u, align 8, !alias.scope !65, !noalias !63, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.val13.i.1.i = load ptr, ptr %i.t, align 8, !alias.scope !65, !noalias !63
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %.val14.i.1.i = load ptr, ptr %i.v, align 8, !alias.scope !65, !noalias !63
  %i.w = call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.1.i, ptr nonnull %.val12.i.1.i, ptr %.val13.i.1.i, ptr %.val14.i.1.i), !noalias !63
  br i1 %i.w, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.noexc33.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !alias.scope !65, !noalias !63
  %i.x = icmp eq i64 %.sroa.05.010.1.i, 1
  br i1 %i.x, label %._crit_edge56, label %.lr.ph55

.preheader.1.i:                                   ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i32.1.i54, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !65, !noalias !63
  %i.y = icmp eq ptr %i.z, %i.p
  br i1 %i.y, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i32.1.i54 = phi ptr [ %i.z, %.preheader.1.i ], [ %i.t, %.preheader.1.i.preheader ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.i32.1.i54, i64 -16 ; 4 uses
  %.val9.i.1.i = load ptr, ptr %i.z, align 8, !alias.scope !65, !noalias !63
  %i.aa = getelementptr i8, ptr %.sroa.0.0.i32.1.i54, i64 -8
  %.val10.i.1.i = load ptr, ptr %i.aa, align 8, !alias.scope !65, !noalias !63
  %i.ab = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.1.i, ptr nonnull %.val12.i.1.i, ptr %.val9.i.1.i, ptr %.val10.i.1.i)
          to label %bb.j unwind label %.loopexit.split-lp23.i, !noalias !63

bb.j:                                             ; preds = %.lr.ph55
  br i1 %i.ab, label %.preheader.1.i, label %._crit_edge56

._crit_edge56:                                    ; preds = %.preheader.1.i, %bb.j, %.preheader.1.i.preheader
  %.sroa.0.0.i32.lcssa.1.i = phi ptr [ %i.p, %.preheader.1.i.preheader ], [ %i.p, %.preheader.1.i ], [ %.sroa.0.0.i32.1.i54, %bb.j ] ; 2 uses
  store ptr %.val11.i.1.i, ptr %.sroa.0.0.i32.lcssa.1.i, align 8, !alias.scope !65, !noalias !66
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.1.i, i64 8
  store ptr %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !65, !noalias !66
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
  %i.ah = getelementptr i8, ptr %i.av, i64 16     ; 2 uses
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
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.07.i.i, align 8, !alias.scope !67, !noalias !63, !nonnull !4, !noundef !4
  %i.am = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val24.i.i = load ptr, ptr %i.am, align 8, !alias.scope !67, !noalias !63, !nonnull !4, !align !5, !noundef !4
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.08.i.i, align 8, !alias.scope !67, !noalias !63
  %i.an = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val25.i.i = load ptr, ptr %i.an, align 8, !alias.scope !67, !noalias !63
  %i.ao = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.011.0.val.i.i, ptr nonnull %.sroa.011.0.val24.i.i, ptr %.sroa.06.0.val.i.i, ptr %.sroa.06.0.val25.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !63 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.ao, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.i, i64 16, i1 false), !alias.scope !64, !noalias !68
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.05.i.i, align 8, !alias.scope !67, !noalias !63, !nonnull !4, !noundef !4
  %i.ap = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val26.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !67, !noalias !63, !nonnull !4, !align !5, !noundef !4
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !67, !noalias !63
  %i.aq = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val27.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !67, !noalias !63
  %i.ar = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.sroa.017.0.val.i.i, ptr nonnull %.sroa.017.0.val26.i.i, ptr %.sroa.015.0.val.i.i, ptr %.sroa.015.0.val27.i.i)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !63 ; 3 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ao, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ao, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %..i.i.i = select i1 %i.ar, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.at = xor i1 %i.ar, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !64, !noalias !69
  %.neg.i.i.i = sext i1 %i.at to i64
  %i.au = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.ar to i64
  %i.av = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.ah ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !64
  %.sroa.sel28.idx.sroa.sel.idx = select i1 %.not, i64 16, i64 0
  %.sroa.sel28.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel28.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 16
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel28.idx.sroa.sel, %bb.k ]
  %i.ax = icmp ne ptr %.sroa.06.1.i.i, %i.ah
  %i.ay = icmp ne ptr %.sroa.011.1.i.i, %i.ai
  %or.cond.i.i = select i1 %i.ax, i1 true, i1 %i.ay, !prof !6
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit, !prof !6

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !63

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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.az, i1 false), !alias.scope !64, !noalias !70
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.n ], [ %lpad.phi30.i, %bb.p ]
  resume { ptr, i32 } %.pn.i

.noexc33.i:                                       ; preds = %bb.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i
  %.sroa.05.010.i = phi i64 [ %i.bl, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.010.i
  %.idx = shl nuw nsw i64 %.sroa.05.010.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !64
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val11.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !65, !noalias !63, !nonnull !4, !noundef !4 ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val12.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !65, !noalias !63, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.val13.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !65, !noalias !63
  %i.be = getelementptr i8, ptr %i.bb, i64 -8
  %.val14.i.i = load ptr, ptr %i.be, align 8, !alias.scope !65, !noalias !63
  %i.bf = call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.i, ptr nonnull %.val12.i.i, ptr %.val13.i.i, ptr %.val14.i.i), !noalias !63
  br i1 %i.bf, label %.preheader.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit.i

.preheader.i.preheader:                           ; preds = %.noexc33.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !65, !noalias !63
  %i.bg = icmp eq i64 %.sroa.05.010.i, 1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i32.i52, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !65, !noalias !63
  %i.bh = icmp eq ptr %i.bi, %i.a
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i32.i52 = phi ptr [ %i.bi, %.preheader.i ], [ %i.bc, %.preheader.i.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i52, i64 -16 ; 4 uses
  %.val9.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !65, !noalias !63
  %i.bj = getelementptr i8, ptr %.sroa.0.0.i32.i52, i64 -8
  %.val10.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !65, !noalias !63
  %i.bk = invoke fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i.i, ptr nonnull %.val12.i.i, ptr %.val9.i.i, ptr %.val10.i.i)
          to label %bb.o unwind label %.loopexit22.i, !noalias !63

bb.o:                                             ; preds = %.lr.ph
  br i1 %i.bk, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %bb.o, %.preheader.i.preheader
  %.sroa.0.0.i32.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i32.i52, %bb.o ] ; 2 uses
  store ptr %.val11.i.i, ptr %.sroa.0.0.i32.lcssa.i, align 8, !alias.scope !65, !noalias !66
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa.i, i64 8
  store ptr %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !65, !noalias !66
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
  store ptr %.val11.i.lcssa.i, ptr %.sroa.0.0.i32.lcssa17.i, align 8, !alias.scope !65, !noalias !71
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.lcssa17.i, i64 8
  store ptr %.val12.i.lcssa.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i.i, align 8, !alias.scope !65, !noalias !71
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
  %.val12.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %.val13.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val14.i = load ptr, ptr %i.f, align 8
  %i.g = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscI6d9CVNmLh_4core5sliceSINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1c_2pg7backend2PgEEL_E16sort_unstable_byNCINvYNtNtB1V_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB1R_E18pending_migrationsNtNtB3l_19embedded_migrations18EmbeddedMigrationsEs_0E0Csi6wIvn64oUH_13custom_arrays(ptr nonnull %.val11.i, ptr nonnull %.val12.i, ptr %.val13.i, ptr %.val14.i)
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit

bb.d:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.sroa.0.07, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
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
  store ptr %i.h, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !80
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !80
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1N_2pg7backend2PgEEL_ENCINvMB8_SB18_16sort_unstable_byNCINvYNtNtB2w_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2s_E18pending_migrationsNtNtB4a_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays.exit

bb.g:                                             ; preds = %.lr.ph20
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %.sroa.0.0.i18, align 8, !noalias !81
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i, align 8, !noalias !81
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  %i.e = tail call { ptr, ptr } %i.d(ptr noundef nonnull %.0.val), !inline_history !82 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  call void %i.i(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.f), !inline_history !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = invoke { ptr, ptr } %i.k(ptr noundef nonnull %.0.val1)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body.i:                                          ; preds = %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.m, %bb.b ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume.i unwind label %bb.k

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { ptr, ptr } %i.l, 0
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.q(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.n)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !97, !noalias !98, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !alias.scope !98, !noalias !97, !nonnull !4, !noundef !4
  %.sroa.32.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.32.0.i.i = load i64, ptr %.sroa.32.0.in.i.i, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i, i64 %.sroa.32.0.i.i)
  %i.r = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i, ptr nonnull readonly %.sroa.01.0.i.i, i64 %spec.store.select.i.i.i), !alias.scope !99, !noalias !100 ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !range !3, !alias.scope !101, !noundef !4
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays.exit.i unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.b, align 8, !range !3, !alias.scope !102, !noundef !4
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RNCINvYNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessNtNtB9_7backend2PgE18pending_migrationsNtNtB14_19embedded_migrations18EmbeddedMigrationsEs_0Csi6wIvn64oUH_13custom_arrays.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays.exit.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i3.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i:                                  ; preds = %bb.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.i ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit.i.i3.i: ; preds = %bb.h
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RNCINvYNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessNtNtB9_7backend2PgE18pending_migrationsNtNtB14_19embedded_migrations18EmbeddedMigrationsEs_0Csi6wIvn64oUH_13custom_arrays.exit
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqNtNtCs40k4W9msRzi_5alloc6string6StringEBd_

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqNtNtCs40k4W9msRzi_5alloc6string6StringEBd_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEBd_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBd_5model13endpoint_type8EndpointEEEBd_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb8_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtB1w_5bound5BoundNtNtBa_9sql_types7IntegerlEEEEIBQ_IB1s_IB24_NtB2r_4nameIB3H_NtB43_4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionB3G_EEEIBQ_IB1s_IB24_NtB2r_6onlineIB3H_NtB43_4BoolbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB4U_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB4U_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB4U_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3H_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB43_8NullableB41_EEINtNtB5e_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3H_IB9M_IBan_NtNtB2v_9sql_types15ServiceEndpointEEIBaJ_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEEINtNtBa_10insertable10InsertableNtB2t_5tableE6valuesB2z_(ptr dead_on_unwind noalias noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsaN_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtB1w_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionIB3A_NtB3W_7IntegerlEEEEIBQ_IB1s_IB24_NtB2r_6onlineIB3A_NtB3W_4BoolbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB3z_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3A_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB3W_8NullableB5t_EEINtNtB4k_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3A_IB99_IB9K_NtNtB2v_9sql_types15ServiceEndpointEEIBa6_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEEINtNtBa_10insertable10InsertableNtB2t_5tableE6valuesB2z_(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsaP_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtB1w_5bound5BoundNtNtBa_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionIB3A_NtB3W_7IntegerlEEEEIBQ_IB1s_IB24_NtB2r_6onlineIB3A_NtB3W_4BoolbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB3z_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3A_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB3W_8NullableB5t_EEINtNtB4k_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3A_IB99_IB9K_NtNtB2v_9sql_types15ServiceEndpointEEIBa6_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEENtNtNtNtBa_13query_builder16update_statement9changeset11AsChangeset12as_changesetB2z_(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCINvYNtNtNtB26_2pg10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessNtNtB34_7backend2PgE21revert_all_migrationsNtNtB3I_19embedded_migrations18EmbeddedMigrationsEs_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleINtNtB1l_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB7R_4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB22_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB22_E0IB6q_B96_zEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_2pg7backend2PgE15push_identifierCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness26___diesel_schema_migrations7columns7versionINtNtB6_5bound5BoundNtNtB8_9sql_types4TextNtNtB8_9migration16MigrationVersionEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtB8_2pg15metadata_lookup7pg_type7columns3oidINtNtB6_11sql_literal10SqlLiteralNtNtNtB1u_5types9sql_types3OidINtB2g_13UncheckedBindIB2e_B2K_EINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEEEINtNtB8_13query_builder13QueryFragmentNtNtB1u_7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtB6_5bound5BoundNtNtB8_9sql_types7IntegerlEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1w_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns6onlineINtNtB6_5bound5BoundNtNtB8_9sql_types4BoolbEEEINtNtB8_13query_builder13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1w_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators3AndIBO_INtB14_2EqNtNtNtNtNtB8_2pg15metadata_lookup7pg_type7columns7typnameINtNtB6_5bound5BoundNtNtB8_9sql_types4TextReEEEIBO_IB1s_NtNtNtB1H_12pg_namespace7columns7nspnameB2w_EEEEINtNtB8_13query_builder13QueryFragmentNtNtB1J_7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsjRvGck33osM_6diesel12query_source5joinsINtB5_4JoinNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableNtNtB13_12pg_namespace5tableNtB5_5InnerEINtNtB9_13query_builder13QueryFragmentNtNtB15_7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCsjRvGck33osM_6diesel12query_source5joinsNtB5_9OnKeywordINtNtNtB9_13query_builder5nodes14MiddleFragmentNtNtNtB9_2pg7backend2PgE8push_sqlCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsjRvGck33osM_6diesel10expression7groupedINtB4_7GroupedINtNtB6_9operators2EqINtNtB6_8nullable8NullableNtNtNtNtNtB8_2pg15metadata_lookup7pg_type7columns12typnamespaceEIB1n_NtNtNtB1S_12pg_namespace7columns3oidEEEINtNtB8_13query_builder13QueryFragmentNtNtB1U_7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRlEBd_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRNtNtCs40k4W9msRzi_5alloc6string6StringEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns7versionNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRlEBd_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns6onlineNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRbEBd_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRNtNtCs40k4W9msRzi_5alloc6string6StringEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns16health_check_uriNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRNtNtCs40k4W9msRzi_5alloc6string6StringEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns8base_uriNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRNtNtCs40k4W9msRzi_5alloc6string6StringEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns12dependenciesNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvYNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns9endpointsNtNtNtCsjRvGck33osM_6diesel18expression_methods25global_expression_methods17ExpressionMethods2eqRINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtBd_5model13endpoint_type8EndpointEEEBd_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb8_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns10service_idINtNtB1w_5bound5BoundNtNtBa_9sql_types7IntegerRlEEEEIBQ_IB1s_IB24_NtB2r_4nameIB3H_NtB43_4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionB3G_EEEIBQ_IB1s_IB24_NtB2r_6onlineIB3H_NtB43_4BoolRbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB4V_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB4V_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB4V_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3H_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB43_8NullableB41_EERINtNtB5g_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3H_IB9P_IBaq_NtNtB2v_9sql_types15ServiceEndpointEERIBaN_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEEINtNtBa_10insertable10InsertableNtB2t_5tableE6valuesB2z_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsaN_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtB1w_5bound5BoundNtNtBa_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionIB3A_NtB3W_7IntegerRlEEEEIBQ_IB1s_IB24_NtB2r_6onlineIB3A_NtB3W_4BoolRbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB3z_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3A_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB3W_8NullableB5u_EERINtNtB4l_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3A_IB9c_IB9N_NtNtB2v_9sql_types15ServiceEndpointEERIBaa_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEEINtNtBa_10insertable10InsertableNtB2t_5tableE6valuesB2z_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsaP_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBa_10expression7grouped7GroupedINtNtB1w_9operators2EqNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns4nameINtNtB1w_5bound5BoundNtNtBa_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEEEIBQ_IB1s_IB24_NtB2r_7versionIB3A_NtB3W_7IntegerRlEEEEIBQ_IB1s_IB24_NtB2r_6onlineIB3A_NtB3W_4BoolRbEEEEIBQ_IB1s_IB24_NtB2r_11descriptionB3z_EEEIBQ_IB1s_IB24_NtB2r_16health_check_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_8base_uriB3z_EEEIBQ_IB1s_IB24_NtB2r_12dependenciesIB3A_INtNtNtNtBa_2pg5types9sql_types5ArrayINtB3W_8NullableB5u_EERINtNtB4l_3vec3VecIBQ_lEEEEEEIBQ_IB1s_IB24_NtB2r_9endpointsIB3A_IB9c_IB9N_NtNtB2v_9sql_types15ServiceEndpointEERIBaa_IBQ_NtNtNtB2z_5model13endpoint_type8EndpointEEEEEEENtNtNtNtBa_13query_builder16update_statement9changeset11AsChangeset12as_changesetB2z_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{i64 -1, i64 -9223372036854775798}
!8 = !{i8 0, i8 4}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i32 0, i32 2}
!11 = !{i8 0, i8 3}
!12 = !{i64 0, i64 5}
!13 = distinct !{!13, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionB1i_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!14 = distinct !{!14, !13, !"_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionB1i_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!15 = distinct !{!15, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays"}
!16 = distinct !{!16, !15, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays: argument 0"}
!17 = distinct !{!17, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays"}
!18 = distinct !{!18, !17, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays: argument 0"}
!19 = distinct !{!19, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!20 = distinct !{!20, !19, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!21 = !{!14}
!22 = !{!20, !18, !16}
!23 = distinct !{!23, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!24 = distinct !{!24, !23, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!25 = !{!24}
!26 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!27 = !{i64 0, i64 -9223372036854775808}
!28 = !{i64 1, i64 536870913}
!29 = distinct !{!29, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!30 = distinct !{!30, !29, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!31 = distinct !{!31, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!32 = distinct !{!32, !31, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!33 = distinct !{!33, !31, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!34 = distinct !{!34, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!35 = distinct !{!35, !34, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!36 = distinct !{!36, !34, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!37 = !{!30}
!38 = !{!33, !32}
!39 = !{!36, !35}
!40 = distinct !{!40, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!41 = distinct !{!41, !40, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!42 = distinct !{!42, !40, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB27_2pg7backend2PgEEL_ENCINvMB8_SB1s_16sort_unstable_byNCINvYNtNtB2Q_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2M_E18pending_migrationsNtNtB4u_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!43 = distinct !{!43, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!44 = distinct !{!44, !43, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!45 = distinct !{!45, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!46 = distinct !{!46, !45, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!47 = distinct !{!47, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!48 = distinct !{!48, !47, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_ENCINvMB8_SB1g_16sort_unstable_byNCINvYNtNtB2E_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2A_E18pending_migrationsNtNtB4i_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!49 = distinct !{!49, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!50 = distinct !{!50, !49, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!51 = distinct !{!51, !49, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort8merge_upINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1J_2pg7backend2PgEEL_ENCINvMB8_SB14_16sort_unstable_byNCINvYNtNtB2s_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2o_E18pending_migrationsNtNtB46_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!52 = distinct !{!52, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays"}
!53 = distinct !{!53, !52, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 1"}
!54 = distinct !{!54, !52, !"_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort10merge_downINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1M_2pg7backend2PgEEL_ENCINvMB8_SB17_16sort_unstable_byNCINvYNtNtB2v_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2r_E18pending_migrationsNtNtB49_19embedded_migrations18EmbeddedMigrationsEs_0E0ECsi6wIvn64oUH_13custom_arrays: argument 0"}
!55 = distinct !{!55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!56 = distinct !{!56, !55, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!57 = distinct !{!57, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!58 = distinct !{!58, !57, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!59 = distinct !{!59, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!60 = distinct !{!60, !59, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!61 = distinct !{!61, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!62 = distinct !{!62, !61, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!63 = !{!41}
!64 = !{!41, !42}
!65 = !{!42}
!66 = !{!46, !44, !41}
!67 = !{!48, !42}
!68 = !{!51, !50}
!69 = !{!54, !53}
!70 = !{!58, !56}
!71 = !{!62, !60, !41}
!72 = distinct !{!72, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!73 = distinct !{!73, !72, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!74 = distinct !{!74, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!75 = distinct !{!75, !74, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!76 = distinct !{!76, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays"}
!77 = distinct !{!77, !76, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB28_2pg7backend2PgEEL_EEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!78 = distinct !{!78, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays"}
!79 = distinct !{!79, !78, !"_RNvXs5_NtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1V_2pg7backend2PgEEL_EENtNtNtBd_3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays: argument 0"}
!80 = !{!75, !73}
!81 = !{!79, !77}
!82 = distinct !{null}
!83 = distinct !{!83, !"_RNvXs7_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3cmp3Ord3cmpCsi6wIvn64oUH_13custom_arrays"}
!84 = distinct !{!84, !83, !"_RNvXs7_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3cmp3Ord3cmpCsi6wIvn64oUH_13custom_arrays: argument 0"}
!85 = distinct !{!85, !83, !"_RNvXs7_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3cmp3Ord3cmpCsi6wIvn64oUH_13custom_arrays: argument 1"}
!86 = distinct !{!86, !"_RNvXNtNtCscI6d9CVNmLh_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!87 = distinct !{!87, !86, !"_RNvXNtNtCscI6d9CVNmLh_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!88 = distinct !{!88, !86, !"_RNvXNtNtCscI6d9CVNmLh_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!89 = distinct !{!89, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays"}
!90 = distinct !{!90, !89, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays: argument 0"}
!91 = distinct !{!91, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!92 = distinct !{!92, !91, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!93 = distinct !{!93, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays"}
!94 = distinct !{!94, !93, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionECsi6wIvn64oUH_13custom_arrays: argument 0"}
!95 = distinct !{!95, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!96 = distinct !{!96, !95, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!97 = !{!84}
!98 = !{!85}
!99 = !{!88, !87}
!100 = !{!84, !85}
!101 = !{!92, !90}
!102 = !{!96, !94}
!103 = distinct !{!103, !"_RNvMNtNtNtCsi6wIvn64oUH_13custom_arrays5model7service12service_implNtB4_7Service26check_if_service_id_online"}
!104 = distinct !{!104, !103, !"_RNvMNtNtNtCsi6wIvn64oUH_13custom_arrays5model7service12service_implNtB4_7Service26check_if_service_id_online: argument 1"}
!105 = distinct !{!105, !103, !"_RNvMNtNtNtCsi6wIvn64oUH_13custom_arrays5model7service12service_implNtB4_7Service26check_if_service_id_online: argument 0"}
!106 = !{!105, !104}
!107 = !{i64 -2, i64 -9223372036854775808}
!108 = !{i8 0, i8 2}
!109 = distinct !{!109, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays"}
!110 = distinct !{!110, !109, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays: argument 0"}
!111 = distinct !{!111, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays"}
!112 = distinct !{!112, !111, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays: argument 0"}
!113 = !{!110}
!114 = !{!112}
!115 = distinct !{!115, !"_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB5_9InfixNodeNtB5_10IdentifierB15_ReEINtB7_13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays"}
!116 = distinct !{!116, !115, !"_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB5_9InfixNodeNtB5_10IdentifierB15_ReEINtB7_13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays: argument 0"}
!117 = distinct !{!117, !115, !"_RNvXs3_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB5_9InfixNodeNtB5_10IdentifierB15_ReEINtB7_13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCsi6wIvn64oUH_13custom_arrays: argument 1"}
!118 = !{!116}
!119 = !{!117}
!120 = !{!116, !117}
end_hunk_1
